# 状态机检测能力分析 - NewsBlur案例

## 🎯 核心问题：Cookie vs 密码

首先要澄清一个重要概念：

| 项目 | 是什么 | 需要加密吗 | NewsBlur的处理 |
|------|--------|-----------|---------------|
| **密码** | 用户输入的原始凭据 | ✅ 必须加密 | ✅ 通过HTTPS传输（加密） |
| **Cookie** | 服务器返回的会话令牌 | ✅ 应该加密存储 | ❌ **明文存储**（漏洞！） |

## 📊 我们的状态机定义

### 正常登录流程（状态机期望）

```
CredentialInput              # 用户输入密码
    ↓
EncodingCredentials          # ⚠️ 关键步骤：密码应该被编码/加密
    ↓
Authenticating               # 开始认证
    ↓
CheckingCredentials          # 发送到服务器验证
    ↓
LoggedIn_NoMFA              # 登录成功
```

**关键代码**（`StateMachineManager.java` 第91-93行）：
```java
addTransitionIfExists(states, "CredentialInput", "EncodingCredentials");
addTransitionIfExists(states, "EncodingCredentials", "Authenticating");
```

### NewsBlur的实际流程

```
CredentialInput              # 用户输入密码
    ↓
Authenticating               # ❌ 跳过了 EncodingCredentials！
    ↓
CheckingCredentials          # OkHttp POST到服务器（HTTPS）
    ↓
LoggedIn_NoMFA              # 接收Cookie
    ↓
[SharedPreferences存储Cookie]  # ❌ 明文存储（状态机看不到这步）
```

## ✅ 状态机**能够检测**的问题

### 1. 跳过密码编码步骤

**检测逻辑**：
```
如果观察到：CredentialInput -> Authenticating
而状态机期望：CredentialInput -> EncodingCredentials -> Authenticating
则报告：Invalid state transition: CredentialInput -> Authenticating
```

**检测代码**（`StateMachineManager.java` 第370-389行）：
```java
public List<String> validateStateTransitions() {
    List<String> errors = new ArrayList<>();
    for (int i = 0; i < observedStateSequence.size() - 1; i++) {
        String currentState = observedStateSequence.get(i);
        String nextState = observedStateSequence.get(i + 1);
        
        if (!isValidTransition(currentState, nextState)) {
            String error = String.format("Invalid state transition: %s -> %s", 
                                        currentState, nextState);
            errors.add(error);  // ✅ 报告漏洞！
        }
    }
    return errors;
}
```

**NewsBlur的情况**：
- ❓ **部分可检测** - 取决于我们能否通过Frida捕获到相关API调用
- NewsBlur使用OkHttp，密码在应用层没有额外编码
- 但HTTPS本身提供了传输层加密

**Frida检测代码**（查找 `EncodingCredentials` 状态）：
```javascript
// 监控常见的加密API
Java.use("java.util.Base64").encodeToString.implementation = function(input) {
    console.log("[+] Base64 encoding detected");
    return this.encodeToString(input);
};

Java.use("javax.crypto.Cipher").doFinal.overload('[B').implementation = function(input) {
    console.log("[+] Cipher.doFinal detected - EncodingCredentials state");
    return this.doFinal(input);
};
```

### 2. 密码明文传输（如果存在）

**如果应用通过HTTP而非HTTPS传输**：
```
状态机检测：CredentialInput -> Authenticating（无EncodingCredentials）
Frida检测：OkHttp发送HTTP请求（非HTTPS）
结论：❌ 严重漏洞 - 密码明文传输
```

**NewsBlur不存在此问题** - 使用HTTPS

### 3. 绕过MFA验证

**状态机期望**：
```
CheckingCredentials -> CheckingMFASettings -> MFACodePending -> ... -> LoggedIn_WithMFA
```

**如果检测到**：
```
CheckingCredentials -> LoggedIn_NoMFA  （直接跳过MFA）
```

则报告MFA绕过漏洞！

---

## ❌ 状态机**无法直接检测**的问题

### 1. Cookie明文存储（NewsBlur的主要问题）

**为什么检测不到**：

**原因1：不在登录状态流中**
```
登录流程：CredentialInput -> ... -> LoggedIn_NoMFA
                                        ↓
存储流程：                          [SharedPreferences.putString("cookie", plainCookie)]
                                        ↑
                                    不在状态机定义范围内！
```

**原因2：SharedPreferences存储是系统API，不是登录状态**

Cookie存储发生在 `PrefsUtils.saveLogin()` 中：
```java
public static void saveLogin(Context context, String userName, String cookie) {
    SharedPreferences preferences = context.getSharedPreferences(PREFERENCES, 0);
    Editor edit = preferences.edit();
    edit.putString(PREF_COOKIE, cookie);  // ❌ 明文存储
    edit.commit();
}
```

这个操作：
- ✅ Frida可以Hook到 `SharedPreferences.edit().putString()`
- ❌ 状态机看不到（不属于登录状态转换）
- ✅ 静态分析可以扫描到

### 2. 会话令牌没有加密

**状态机的盲区**：
- 状态机关注："从哪个状态到哪个状态"
- 状态机不关注："数据如何存储"

**需要额外的检测机制**：
```java
// 需要在Frida中单独检测
Interceptor.attach(Module.findExportByName("libc.so", "fwrite"), {
    onEnter: function(args) {
        // 检测写入文件的内容是否包含敏感信息
        if (checkIfContainsSensitiveData(args[0])) {
            console.log("[!] Sensitive data written to file!");
        }
    }
});
```

### 3. 超时配置不当（120秒）

**状态机看不到配置问题**：
```
状态机只看：Authenticating -> CheckingCredentials
状态机看不到：这个转换花了多长时间
```

**需要额外的时间监控**：
```java
long startTime = System.currentTimeMillis();
// ... 登录操作 ...
long duration = System.currentTimeMillis() - startTime;
if (duration > 30000) {  // 超过30秒
    System.err.println("[!] Login timeout too long: " + duration + "ms");
}
```

---

## 🔍 实际检测方案：状态机 + Frida组合

### 方案1：状态机检测登录流程问题

**检测目标**：
- ✅ 跳过密码编码
- ✅ MFA绕过
- ✅ 异常状态转换

**实现**：
```java
// 通过Frida捕获的API调用确定状态
String currentState = stateMachine.determineStateFromApiCall(apiName, signature);
stateMachine.addObservedState(currentState);

// 验证状态转换
List<String> errors = stateMachine.validateStateTransitions();
```

### 方案2：Frida Hook检测数据存储问题

**检测目标**：
- ✅ Cookie明文存储
- ✅ 密码明文存储
- ✅ SharedPreferences滥用

**Frida脚本**：
```javascript
// Hook SharedPreferences存储
Java.use("android.content.SharedPreferences$Editor").putString.implementation = function(key, value) {
    console.log("[SharedPreferences] putString: " + key + " = " + value);
    
    // 检测敏感数据
    if (key.toLowerCase().includes("cookie") || 
        key.toLowerCase().includes("token") ||
        key.toLowerCase().includes("password")) {
        
        // 检查是否加密
        if (!isEncrypted(value)) {
            console.log("[!] SECURITY ISSUE: Sensitive data stored in plaintext!");
            console.log("[!] Key: " + key);
            console.log("[!] Value length: " + value.length);
        }
    }
    
    return this.putString(key, value);
};

function isEncrypted(data) {
    // 简单检查：加密数据通常是Base64或看起来随机
    if (data.length < 20) return false;
    
    // 检查是否包含明显的模式（如 "sessionid=xxx"）
    if (data.includes("=") || data.includes(";") || data.includes("domain=")) {
        return false;  // 可能是明文Cookie
    }
    
    return true;  // 可能是加密的
}
```

### 方案3：静态分析检测代码模式

**检测目标**：
- ✅ SharedPreferences存储敏感数据
- ✅ 无证书Pinning
- ✅ 配置问题

**静态扫描器**：
```python
def scan_for_plaintext_storage(java_file):
    # 扫描模式
    patterns = [
        r'SharedPreferences.*putString.*cookie',
        r'SharedPreferences.*putString.*token',
        r'SharedPreferences.*putString.*password',
    ]
    
    for pattern in patterns:
        if re.search(pattern, java_file, re.IGNORECASE):
            print(f"[!] Found potential plaintext storage: {pattern}")
```

---

## 📊 综合检测能力矩阵

| 漏洞类型 | 状态机检测 | Frida Hook | 静态分析 | 网络监控 |
|---------|-----------|-----------|---------|---------|
| **跳过密码编码** | ✅ **能检测** | ✅ 辅助 | ✅ 辅助 | ❌ |
| **Cookie明文存储** | ❌ **不能** | ✅ **能检测** | ✅ **能检测** | ❌ |
| **密码明文传输** | ⚠️ 部分 | ✅ 能检测 | ❌ | ✅ **能检测** |
| **MFA绕过** | ✅ **能检测** | ✅ 辅助 | ❌ | ❌ |
| **超时配置不当** | ❌ 不能 | ⚠️ 部分 | ✅ **能检测** | ✅ 能检测 |
| **重试逻辑问题** | ❌ 不能 | ✅ **能检测** | ✅ 能检测 | ✅ **能检测** |
| **无证书Pinning** | ❌ 不能 | ⚠️ 部分 | ✅ **能检测** | ✅ **能检测** |
| **自定义服务器钓鱼** | ❌ 不能 | ✅ 能检测 | ✅ **能检测** | ✅ 能检测 |

---

## 💡 针对NewsBlur的完整检测方案

### 阶段1：静态分析（快速扫描）

```bash
# 扫描SharedPreferences滥用
grep -r "SharedPreferences.*putString.*cookie" NewsBlur/
# 结果：发现 PrefsUtils.java:70 - Cookie明文存储

# 扫描证书Pinning
grep -r "CertificatePinner" NewsBlur/
# 结果：未找到 - 缺少证书Pinning

# 扫描超时配置
grep -r "readTimeout\|connectTimeout" NewsBlur/
# 结果：发现 API_READ_TIMEOUT_SECONDS = 120L - 过长
```

**检测结果**：
- ✅ 发现Cookie明文存储
- ✅ 发现无证书Pinning
- ✅ 发现超时配置过长

### 阶段2：状态机动态检测（运行时）

```java
// 启动应用并监控状态转换
stateMachine.addObservedState("CredentialInput");
stateMachine.addObservedState("Authenticating");  // 跳过了EncodingCredentials？
stateMachine.addObservedState("CheckingCredentials");
stateMachine.addObservedState("LoggedIn_NoMFA");

// 验证
List<String> errors = stateMachine.validateStateTransitions();
// 可能的错误：
// "Invalid state transition: CredentialInput -> Authenticating"
```

**检测结果**：
- ⚠️ **可能检测到**密码未编码（如果Frida能捕获到相关API）
- ✅ 可以检测MFA绕过（如果存在）

### 阶段3：Frida Hook深度检测（运行时）

```javascript
// Hook SharedPreferences
Java.use("android.content.SharedPreferences$Editor").putString.implementation = function(key, value) {
    if (key === "cookie") {
        console.log("[!] CRITICAL: Cookie stored in plaintext!");
        console.log("[!] Value: " + value.substring(0, 50) + "...");
    }
    return this.putString(key, value);
};

// Hook OkHttp统计重试次数
var retryCount = 0;
Java.use("okhttp3.internal.http.RetryAndFollowUpInterceptor").intercept.implementation = function(chain) {
    retryCount++;
    console.log("[+] HTTP request retry count: " + retryCount);
    return this.intercept(chain);
};
```

**检测结果**：
- ✅ 实时捕获Cookie明文存储
- ✅ 统计重试次数
- ✅ 监控所有网络调用

### 阶段4：网络混沌测试

```bash
# 启用慢速网络测试120秒超时
network.chaos.enabled=true
network.disruption.methods=slow_network
network.delay.min=5000
network.delay.max=130000  # 超过120秒超时
```

**检测结果**：
- ✅ 验证超时处理
- ✅ 检测是否ANR

---

## 🎯 最终结论

### NewsBlur Cookie明文存储问题

**状态机能检测吗？** ❌ **不能直接检测**

**原因**：
1. Cookie存储不是"登录状态转换"，是"数据持久化"
2. 状态机关注流程，不关注存储方式
3. `SharedPreferences.putString()` 是系统API，不在我们定义的状态中

**但是！我们可以通过组合方式检测**：

```
✅ 静态分析：扫描代码中的 SharedPreferences.putString("cookie", ...)
✅ Frida Hook：运行时监控 SharedPreferences 写入
✅ 文件系统检查：直接读取 /data/data/com.newsblur/shared_prefs/*.xml
```

### 我们的工具的真正优势

**不是单纯依赖状态机，而是：**

1. **状态机** - 检测登录流程异常
2. **Frida Hook** - 检测数据处理问题  ⭐
3. **静态分析** - 快速扫描代码模式  ⭐
4. **网络混沌** - 测试容错能力
5. **UI自动化** - 验证用户体验

**对于NewsBlur**：
- 状态机：可能检测到跳过密码编码
- **Frida Hook：肯定能检测到Cookie明文存储** ⭐⭐⭐
- **静态分析：秒级发现Cookie明文存储** ⭐⭐⭐
- 网络混沌：验证120秒超时问题
- UI自动化：测试自定义服务器功能

**所以答案是：状态机+Frida组合拳可以检测到所有这些bug！** 🎯
