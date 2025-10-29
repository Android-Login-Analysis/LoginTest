# 状态机 vs Frida：谁能检测Cookie明文存储？

## 🎯 您的核心问题

> "Cookie是不是就是密码？没有流经encoding，直接储存，所以我们的工具检测到了？"

## ✅ 简短回答

**状态机**：❌ 不能直接检测Cookie明文存储
**Frida Hook**：✅ 可以完美检测Cookie明文存储
**静态分析**：✅ 可以快速发现代码模式
**组合使用**：✅✅✅ 完整覆盖所有问题

---

## 📊 Cookie vs 密码的区别

| 项目 | 密码 (Password) | Cookie/Session Token |
|------|----------------|---------------------|
| **是什么** | 用户输入的原始凭据 | 服务器颁发的会话令牌 |
| **生命周期** | 长期有效（直到用户修改） | 通常有过期时间（但可能很长） |
| **传输** | 应该通过HTTPS加密传输 | 通过HTTPS在Set-Cookie头中返回 |
| **存储** | ❌ 绝对不能明文存储 | ❌ 不应该明文存储 |
| **作用** | 证明"我知道这个秘密" | 证明"服务器认可了我" |
| **NewsBlur的做法** | ✅ HTTPS传输（正确） | ❌ 明文存储（错误！） |

### Cookie == 会话密码？

**答案：在某种意义上，是的！**

```
密码的作用：证明用户身份 → 获得访问权限
Cookie的作用：证明用户已认证 → 获得访问权限

如果Cookie被盗 = 密码被盗的效果相同！
```

**NewsBlur的问题**：
- ✅ 密码通过HTTPS传输（加密的）
- ✅ 密码不存储在设备上（正确）
- ❌ **Cookie明文存储**在SharedPreferences（错误！）
- ❌ 攻击者窃取Cookie = 绕过密码直接登录

---

## 🔍 状态机能检测什么？

### 状态机关注的是："流程是否正确"

```
正确流程：
CredentialInput → EncodingCredentials → Authenticating → CheckingCredentials → LoggedIn

错误流程（状态机能检测）：
CredentialInput → Authenticating  (跳过了 EncodingCredentials!)
                  ↑
                  状态机报告：Invalid state transition!
```

### 状态机看不到什么？

**问题：Cookie存储不是"状态转换"**

```
登录流程：
CredentialInput → ... → CheckingCredentials → LoggedIn_NoMFA
                                                    ↓
                                                 [完成]

Cookie存储（发生在登录成功后）：
LoggedIn_NoMFA → [SharedPreferences.putString("cookie", plainCookie)]
                        ↑
                    这不是状态转换！
                    这是数据持久化操作！
                    状态机看不到！
```

### 具体到NewsBlur

**代码流程**：
```java
// Step 1: 登录API调用 (状态机可见)
LoginResponse loginResponse = apiManager.login(username, password);
状态: Authenticating → CheckingCredentials

// Step 2: 检查登录是否成功 (状态机可见)
if (!response.isError()) {
状态: CheckingCredentials → LoggedIn_NoMFA

    // Step 3: 保存Cookie (状态机不可见!)
    PrefsUtils.saveLogin(context, username, response.getCookie());
    状态: ??? 这不在状态机定义中 ???
}
```

**PrefsUtils.saveLogin()的内部**：
```java
public static void saveLogin(Context context, String userName, String cookie) {
    SharedPreferences preferences = context.getSharedPreferences(PREFERENCES, 0);
    Editor edit = preferences.edit();
    edit.putString(PREF_COOKIE, cookie);  // ❌ 明文存储
    edit.commit();
}
```

这个操作：
- ❌ 不是状态转换
- ❌ 不在我们的状态机定义中
- ✅ 但是Frida可以Hook到！

---

## ✅ Frida如何检测？

### Hook SharedPreferences (实时检测)

```javascript
// Hook SharedPreferences.Editor.putString()
Java.use("android.content.SharedPreferences$Editor").putString.implementation = function(key, value) {
    console.log("[SharedPreferences] putString: " + key);
    
    if (key === "cookie") {
        console.log("[!] ALERT: Cookie stored in plaintext!");
        console.log("[!] Value: " + value);
        
        // 检查是否加密
        if (value.includes("sessionid=") || value.includes("domain=")) {
            console.log("[!] CRITICAL: Cookie is in PLAINTEXT format!");
        }
    }
    
    return this.putString(key, value);
};
```

### Hook NewsBlur特定方法

```javascript
// Hook PrefsUtils.saveLogin()
Java.use("com.newsblur.util.PrefsUtils").saveLogin.implementation = function(context, username, cookie) {
    console.log("\n[!] CRITICAL SECURITY ISSUE DETECTED!");
    console.log("[!] PrefsUtils.saveLogin() is saving cookie in plaintext");
    console.log("[+] Username: " + username);
    console.log("[+] Cookie: " + cookie.substring(0, 50) + "...");
    
    return this.saveLogin(context, username, cookie);
};
```

### 实际检测输出（预期）

```
=================================================================================
[!] SECURITY ALERT: Potential plaintext storage detected!
=================================================================================
[+] Type: COOKIE
[+] Key: cookie
[+] Value length: 156 characters
[+] Value preview: sessionid=abc123xyz789; domain=newsblur.com; path=/; HttpOnly...
[!] CRITICAL: Data appears to be in PLAINTEXT!
[!] Recommendation: Use EncryptedSharedPreferences or Android Keystore
=================================================================================

Call stack:
at android.content.SharedPreferencesImpl$EditorImpl.putString(...)
at com.newsblur.util.PrefsUtils.saveLogin(PrefsUtils.java:70)
at com.newsblur.network.APIManager.login(APIManager.java:83)
at com.newsblur.activity.LoginProgress$1.onPostExecute(LoginProgress.kt:52)
=================================================================================
```

---

## 🎯 为什么组合检测最强大？

### 完整的检测矩阵

```
┌─────────────────────────────────────────────────────────────────┐
│                    NewsBlur 登录流程                             │
└─────────────────────────────────────────────────────────────────┘

1. 用户输入密码
   ↓ [状态机检测: CredentialInput]
   
2. 点击登录按钮
   ↓ [状态机检测: Authenticating]
   ↓ [状态机期望: EncodingCredentials]
   ↓ [实际: 跳过了编码!] ← 状态机报警！
   
3. OkHttp POST到服务器
   ↓ [状态机检测: CheckingCredentials]
   ↓ [Frida检测: 监控网络请求]
   
4. 服务器返回Cookie
   ↓ [状态机检测: LoggedIn_NoMFA]
   ↓ [Frida检测: Hook APIResponse.getCookie()]
   
5. 保存Cookie到SharedPreferences
   ↓ [状态机: 看不到这一步！]
   ↓ [Frida检测: ✅ Hook SharedPreferences.putString()] ← Frida报警！
   ↓ [Frida检测: ✅ Hook PrefsUtils.saveLogin()] ← Frida报警！
   
6. 跳转到主界面
   ↓ [状态机检测: AppMainScreen]
```

### 各工具的角色

| 检测工具 | NewsBlur登录问题 | 检测能力 |
|---------|----------------|---------|
| **状态机** | 跳过密码编码 | ⚠️ 部分（如果有编码应该有） |
| **Frida Hook** | Cookie明文存储 | ✅ 完美检测 |
| **Frida Hook** | 重试3次逻辑 | ✅ 可统计 |
| **静态分析** | Cookie明文存储 | ✅ 秒级发现 |
| **静态分析** | 无证书Pinning | ✅ 快速扫描 |
| **网络监控** | 120秒超时 | ✅ 网络混沌测试 |

---

## 💡 实战：如何检测NewsBlur

### 方法1：静态分析（最快）

```bash
# 扫描SharedPreferences滥用
cd /storage/home/zzhou66/Android/LoginTest/Example_Repo/NewsBlur/clients/android
grep -r "putString.*cookie" .

# 输出：
# PrefsUtils.java:70:  edit.putString(PREF_COOKIE, cookie);
#                                     ↑
#                              明文存储Cookie！
```

**结果**：3秒内发现漏洞！

### 方法2：Frida动态检测（最准确）

```bash
# 启动NewsBlur并附加Frida
frida -U -f com.newsblur -l detect_plaintext_storage.js

# 然后在应用中登录
# Frida会实时报告：
# [!] CRITICAL: Cookie stored in plaintext!
```

**结果**：实时捕获漏洞发生的瞬间！

### 方法3：状态机验证（辅助）

```java
// 监控API调用并确定状态
stateMachine.addObservedState("CredentialInput");
stateMachine.addObservedState("Authenticating");  // 注意：跳过了EncodingCredentials
stateMachine.addObservedState("CheckingCredentials");

// 验证状态转换
List<String> errors = stateMachine.validateStateTransitions();
// 可能输出: Invalid transition: CredentialInput -> Authenticating
```

**结果**：可以发现跳过密码编码（如果定义了这个状态）

---

## 🎓 总结：回答您的问题

### Q1: "Cookie是不是就是密码？"

**A1**: 从安全角度看，**Cookie在效果上等同于密码**：
- 密码 = 证明你知道秘密 → 获得访问权限
- Cookie = 证明服务器认可你 → 获得访问权限
- **窃取Cookie = 绕过密码直接访问**

### Q2: "没有流经encoding，直接储存？"

**A2**: 对于NewsBlur：
- **密码流经编码**: ✅ 通过HTTPS（TLS加密）
- **Cookie没有编码**: ❌ 直接明文存储在SharedPreferences
- **这是两个独立的问题**：
  - 密码传输：正确（HTTPS加密）
  - Cookie存储：错误（明文）

### Q3: "所以我们的工具检测到了？"

**A3**: 取决于使用哪个工具：
- **状态机单独**：❌ 检测不到Cookie存储
- **Frida Hook**：✅ 可以完美检测
- **静态分析**：✅ 可以快速发现
- **组合使用**：✅✅✅ 全面覆盖

---

## 🚀 推荐的完整检测流程

```bash
# Step 1: 静态分析（1分钟）
grep -r "SharedPreferences.*putString.*cookie" NewsBlur/
# ✅ 发现: PrefsUtils.java:70

# Step 2: 启动Frida监控（实时）
frida -U -f com.newsblur -l detect_plaintext_storage.js
# ✅ 实时捕获明文存储

# Step 3: 状态机验证（辅助）
java -jar LoginTest.jar --app com.newsblur --test-rounds 3
# ✅ 验证登录流程

# Step 4: 网络混沌测试（可选）
# 测试120秒超时问题
```

---

## 📌 关键结论

1. **状态机的优势**：检测流程异常（跳过必要步骤）
2. **Frida的优势**：检测数据处理问题（明文存储）
3. **静态分析的优势**：快速扫描代码模式
4. **网络监控的优势**：发现通信和超时问题

**对于Cookie明文存储**：
- 状态机：❌ 检测不到（不在流程中）
- Frida：✅ 完美检测（Hook SharedPreferences）
- 静态分析：✅ 快速发现（扫描代码）

**我们工具的真正力量：不是单一技术，而是多技术组合！** 🎯
