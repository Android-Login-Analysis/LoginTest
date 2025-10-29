# 污点分析方案：检测敏感数据明文存储

## 🎯 核心思路

### 什么是污点分析（Taint Analysis）？

```
Source (污点源)        Propagation (传播)         Sink (汇点)
    ↓                      ↓                        ↓
密码输入框          →   变量传递/函数调用   →   明文存储
Cookie响应          →   数据转换/复制      →   文件写入
```

**检测逻辑**：
- 标记敏感数据为"有污点"
- 追踪污点在程序中的传播
- 检测污点是否流向危险的Sink（且未经过安全处理）

---

## ✅ 我们已经有的基础

### 1. 我们知道密码（Source）

```java
// AndroidLoginDetector.java
String username = selectCredentials();  // ✅ 我们知道
String password = selectPassword();     // ✅ 我们知道

// 通过UI自动化输入
uiManager.inputCredentials(username, password);
```

**污点源标记**：
```
TAINT[password] = {
    type: "PASSWORD",
    value: "testuser123",
    timestamp: 1234567890,
    source: "UI_INPUT"
}
```

### 2. 我们有Frida监控（Propagation）

```javascript
// 已有能力：监控API调用
Java.use("SomeClass").someMethod.implementation = function(arg) {
    // ✅ 可以检查 arg 是否包含污点数据
    return this.someMethod(arg);
};
```

### 3. 我们能检测存储（Sink）

```javascript
// 已有能力：Hook SharedPreferences
SharedPreferences.Editor.putString.implementation = function(key, value) {
    // ✅ 可以检查 value 是否是污点数据
    return this.putString(key, value);
};
```

---

## 🚀 方案1：轻量级动态污点追踪（推荐）

### 工作量：⭐⭐ 中等（1-2周）

### 实现方式：基于Frida的运行时追踪

#### Step 1: 标记污点源

```javascript
// frida_taint_analysis.js

var taintedData = new Map(); // 存储污点信息
var taintId = 0;

// 污点源1：密码输入
Java.perform(function() {
    var EditText = Java.use("android.widget.EditText");
    
    EditText.getText.implementation = function() {
        var text = this.getText();
        var textStr = text.toString();
        
        // 检查是否是密码字段
        var hint = this.getHint();
        if (hint && (hint.toString().toLowerCase().includes("password") ||
                     hint.toString().toLowerCase().includes("pwd"))) {
            
            // 标记为污点
            var tid = "TAINT_" + (taintId++);
            taintedData.set(textStr, {
                id: tid,
                type: "PASSWORD",
                source: "EditText",
                timestamp: Date.now()
            });
            
            console.log("[TAINT] Marked password input as tainted: " + tid);
        }
        
        return text;
    };
});

// 污点源2：Cookie响应
Java.perform(function() {
    var APIResponse = Java.use("com.newsblur.network.APIResponse");
    
    APIResponse.getCookie.implementation = function() {
        var cookie = this.getCookie();
        
        if (cookie != null && cookie.length() > 0) {
            // 标记Cookie为污点
            var tid = "TAINT_" + (taintId++);
            taintedData.set(cookie, {
                id: tid,
                type: "COOKIE",
                source: "HTTP_RESPONSE",
                timestamp: Date.now()
            });
            
            console.log("[TAINT] Marked cookie as tainted: " + tid);
        }
        
        return cookie;
    };
});
```

#### Step 2: 追踪污点传播

```javascript
// 监控字符串操作 - 污点传播
Java.perform(function() {
    var String = Java.use("java.lang.String");
    
    // Hook substring - 污点传播
    String.substring.overload('int').implementation = function(start) {
        var result = this.substring(start);
        
        // 如果原字符串有污点，子串也有污点
        if (taintedData.has(this.toString())) {
            var parentTaint = taintedData.get(this.toString());
            taintedData.set(result, {
                ...parentTaint,
                propagation: "substring"
            });
            console.log("[TAINT] Propagated via substring: " + parentTaint.id);
        }
        
        return result;
    };
    
    // Hook concat - 污点传播
    String.concat.implementation = function(str) {
        var result = this.concat(str);
        
        // 如果任一字符串有污点，结果也有污点
        if (taintedData.has(this.toString()) || taintedData.has(str)) {
            var tid = "TAINT_" + (taintId++);
            taintedData.set(result, {
                id: tid,
                type: "DERIVED",
                propagation: "concat"
            });
            console.log("[TAINT] Propagated via concat: " + tid);
        }
        
        return result;
    };
});
```

#### Step 3: 检测危险Sink

```javascript
// 危险Sink：明文存储
Java.perform(function() {
    var Editor = Java.use("android.content.SharedPreferences$Editor");
    
    Editor.putString.implementation = function(key, value) {
        // 检查value是否包含污点
        if (taintedData.has(value)) {
            var taint = taintedData.get(value);
            
            console.log("\n" + "=".repeat(80));
            console.log("[!] SECURITY VULNERABILITY DETECTED!");
            console.log("=".repeat(80));
            console.log("[!] Tainted data flowing to SharedPreferences!");
            console.log("[+] Taint ID: " + taint.id);
            console.log("[+] Taint Type: " + taint.type);
            console.log("[+] Source: " + taint.source);
            console.log("[+] Sink: SharedPreferences.putString()");
            console.log("[+] Key: " + key);
            console.log("[+] Value length: " + value.length());
            
            // 检查是否经过加密
            if (!isEncrypted(value)) {
                console.log("[!] CRITICAL: Tainted data stored in PLAINTEXT!");
                console.log("[!] Vulnerability: Sensitive data exposure");
            } else {
                console.log("[+] Data appears encrypted (safe)");
            }
            console.log("=".repeat(80) + "\n");
        }
        
        return this.putString(key, value);
    };
});

function isEncrypted(data) {
    // 简单检查：加密数据通常是Base64或随机
    if (data.includes("sessionid=") || data.includes("password")) {
        return false;
    }
    return true;
}
```

#### 检测输出（预期）

```
[TAINT] Marked password input as tainted: TAINT_001
[TAINT] Marked cookie as tainted: TAINT_002

=================================================================================
[!] SECURITY VULNERABILITY DETECTED!
=================================================================================
[!] Tainted data flowing to SharedPreferences!
[+] Taint ID: TAINT_002
[+] Taint Type: COOKIE
[+] Source: HTTP_RESPONSE
[+] Sink: SharedPreferences.putString()
[+] Key: cookie
[+] Value length: 156
[!] CRITICAL: Tainted data stored in PLAINTEXT!
[!] Vulnerability: Sensitive data exposure
=================================================================================
```

---

## 🔬 方案2：静态污点分析（完整但复杂）

### 工作量：⭐⭐⭐⭐⭐ 大（2-3个月）

### 需要实现的组件

1. **APK反编译** → Smali/Dalvik字节码
2. **控制流图（CFG）构建** → 分析代码路径
3. **数据流分析** → 追踪变量传播
4. **污点传播规则** → 定义传播语义
5. **路径敏感分析** → 考虑分支条件

### 现有工具可以借鉴

- **FlowDroid**: Android污点分析工具
- **Amandroid**: Scala实现的Android静态分析
- **Soot**: Java字节码分析框架

### 示例（使用FlowDroid）

```java
// 伪代码：集成FlowDroid
import soot.jimple.infoflow.android.SetupApplication;

SetupApplication app = new SetupApplication(
    androidJarPath,
    apkPath
);

// 定义污点源
app.getConfig().setSourcesAndSinksFile("SourcesAndSinks.txt");

// 运行分析
app.runInfoflow();

// 获取结果
InfoflowResults results = app.getInfoflow().getResults();
```

**SourcesAndSinks.txt**：
```
# Sources (污点源)
<android.widget.EditText: android.text.Editable getText()> -> _SOURCE_
<okhttp3.Response: java.lang.String header(java.lang.String)> -> _SOURCE_

# Sinks (危险汇点)
<android.content.SharedPreferences$Editor: android.content.SharedPreferences$Editor putString(java.lang.String,java.lang.String)> -> _SINK_
<java.io.FileOutputStream: void write(byte[])> -> _SINK_
```

---

## 💡 方案3：混合方案（最佳平衡）

### 工作量：⭐⭐⭐ 中等（2-3周）

### 组合优势

```
静态分析（快速扫描）   +   Frida动态追踪（精确）
        ↓                          ↓
   找到可疑路径              运行时验证污点流
        ↓                          ↓
          整合结果 → 高置信度漏洞报告
```

### 实现步骤

#### 1. 静态预分析（简化版）

```python
# static_taint_scanner.py

import re

def scan_for_taint_flows(source_dir):
    """扫描可疑的数据流"""
    
    sources = []
    sinks = []
    
    # 扫描污点源
    source_patterns = [
        r'EditText.*getText\(\)',
        r'getPassword\(\)',
        r'getCookie\(\)',
        r'getHeader\("Set-Cookie"\)',
    ]
    
    # 扫描危险Sink
    sink_patterns = [
        r'SharedPreferences.*putString\(',
        r'FileOutputStream.*write\(',
        r'SQLiteDatabase.*insert\(',
    ]
    
    for root, dirs, files in os.walk(source_dir):
        for file in files:
            if file.endswith('.java') or file.endswith('.kt'):
                with open(os.path.join(root, file), 'r') as f:
                    content = f.read()
                    
                    # 查找源和汇
                    for pattern in source_patterns:
                        if re.search(pattern, content):
                            sources.append({
                                'file': file,
                                'pattern': pattern,
                                'line': find_line_number(content, pattern)
                            })
                    
                    for pattern in sink_patterns:
                        if re.search(pattern, content):
                            sinks.append({
                                'file': file,
                                'pattern': pattern,
                                'line': find_line_number(content, pattern)
                            })
    
    return sources, sinks

# 运行扫描
sources, sinks = scan_for_taint_flows("NewsBlur/clients/android")

print(f"Found {len(sources)} potential taint sources")
print(f"Found {len(sinks)} potential sinks")

# 输出可疑路径
for source in sources:
    for sink in sinks:
        if source['file'] == sink['file']:
            print(f"[!] Potential taint flow in {source['file']}")
```

#### 2. Frida动态验证

```javascript
// 加载静态分析结果
var suspiciousPaths = [
    {
        source: "LoginRegisterFragment.kt:75",
        sink: "PrefsUtils.java:70",
        type: "PASSWORD_TO_PREFS"
    },
    {
        source: "APIResponse.java:62",
        sink: "PrefsUtils.java:70",
        type: "COOKIE_TO_PREFS"
    }
];

// 针对性监控
suspiciousPaths.forEach(function(path) {
    console.log("[*] Monitoring path: " + path.source + " -> " + path.sink);
    // ... Hook相关函数
});
```

---

## 📊 三种方案对比

| 方案 | 工作量 | 准确性 | 性能 | 适用场景 |
|------|--------|--------|------|---------|
| **Frida动态污点** | ⭐⭐ 中 | ⭐⭐⭐⭐ 高 | ⭐⭐⭐ 好 | 运行时检测，已知应用 |
| **静态污点分析** | ⭐⭐⭐⭐⭐ 大 | ⭐⭐⭐ 中 | ⭐⭐⭐⭐ 很好 | 批量扫描，代码审计 |
| **混合方案** | ⭐⭐⭐ 中 | ⭐⭐⭐⭐⭐ 很高 | ⭐⭐⭐⭐ 很好 | **推荐！** |

---

## 🎯 针对NewsBlur的具体实现

### 我们已知的信息

```java
// 1. 我们知道密码（通过UI自动化）
String password = "testuser123";  // ✅ 已知

// 2. 我们可以识别密码输入框
WebElement passwordField = driver.findElement(By.id("login_password"));
passwordField.sendKeys(password);  // ✅ 可以标记污点

// 3. 我们可以Hook Cookie接收
// Frida可以捕获 APIResponse.getCookie()  // ✅ 可以标记污点
```

### 完整检测流程

```
Step 1: UI自动化输入密码
    ↓
[TAINT] password = "testuser123" (标记为 TAINT_001)

Step 2: Frida监控密码传播
    ↓
LoginRegisterFragment.logIn()
    intent.putExtra("password", password)  // TAINT_001 传播
    ↓
LoginProgress.onCreate()
    val password = intent.getStringExtra("password")  // TAINT_001 继续
    ↓
apiManager.login(username, password)  // TAINT_001 传播到网络

Step 3: Frida监控Cookie接收
    ↓
APIResponse.getCookie() 返回 cookie
    ↓
[TAINT] cookie = "sessionid=xxx..." (标记为 TAINT_002)

Step 4: Frida检测Cookie存储
    ↓
PrefsUtils.saveLogin(context, username, cookie)
    ↓
SharedPreferences.edit().putString("cookie", cookie)  // TAINT_002!
    ↓
[!] ALERT: TAINT_002 (COOKIE) 流向 SharedPreferences (PLAINTEXT)
    ↓
报告漏洞！
```

---

## 💻 实现代码框架

### Java端集成

```java
// AndroidLoginDetector.java

public class AndroidLoginDetector {
    private TaintAnalyzer taintAnalyzer;
    
    public AndroidLoginDetector() {
        // 初始化污点分析器
        taintAnalyzer = new TaintAnalyzer(fridaManager);
    }
    
    private void performLoginWithTaintTracking(String username, String password) {
        // 标记密码为污点源
        taintAnalyzer.markAsTaintSource(password, TaintType.PASSWORD);
        
        // 执行登录
        boolean loginSuccess = inputCredentialsAndLogin(username, password);
        
        // 检查污点流
        List<TaintFlow> violations = taintAnalyzer.detectTaintFlows();
        
        for (TaintFlow flow : violations) {
            logError("Taint violation: " + flow.getSource() + 
                     " -> " + flow.getSink());
        }
    }
}
```

### Frida脚本

```javascript
// 已经在上面详细展示了
// 见 frida_taint_analysis.js
```

---

## ✅ 总结：推荐实施方案

### 阶段1：快速原型（1周）

**目标**：验证可行性

```javascript
// 简化版污点追踪
1. Hook密码输入 → 标记污点
2. Hook Cookie接收 → 标记污点
3. Hook SharedPreferences → 检测污点
4. 报告发现
```

### 阶段2：增强追踪（1-2周）

**目标**：更准确的传播

```javascript
1. 添加字符串操作Hook
2. 添加Intent传递Hook
3. 添加网络调用Hook
4. 完善污点传播规则
```

### 阶段3：集成到工具（1周）

**目标**：自动化检测

```java
1. 集成到AndroidLoginDetector
2. 生成污点流报告
3. 可视化污点传播路径
4. 添加到测试报告
```

---

## 🎯 预期效果

### 检测能力提升

**之前**：
- ✅ 静态扫描发现 `putString("cookie", ...)`
- ⚠️ 但不确定数据来源

**之后（污点分析）**：
- ✅ 确认Cookie从HTTP响应来
- ✅ 追踪Cookie传播路径
- ✅ 验证未经加密存储
- ✅ 生成完整证据链

### 报告示例

```
=== Taint Flow Violation ===
Source: HTTP Response (APIResponse.getCookie:62)
  ↓
Propagation: PrefsUtils.saveLogin:67
  ↓
Sink: SharedPreferences.putString:70

Taint Type: SESSION_COOKIE
Encryption: NONE
Severity: HIGH
Recommendation: Use EncryptedSharedPreferences
```

---

## 💡 最终建议

**对于您的项目，我推荐：混合方案（方案3）**

**理由**：
1. ✅ 工作量适中（2-3周）
2. ✅ 准确性高（静态+动态）
3. ✅ 基于现有Frida基础设施
4. ✅ 可以逐步迭代

**第一步**：实现轻量级Frida动态污点追踪（1-2周）
**第二步**：如果效果好，再增加静态预分析

您觉得这个方案如何？需要我先写一个完整的Frida污点分析脚本原型吗？🚀
