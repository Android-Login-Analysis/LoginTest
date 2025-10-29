# 通用污点分析框架使用指南

## 🎯 概述

这是一个**完全通用的污点分析框架**，可以用于分析任何Android应用的登录安全问题。

### 核心特性

- ✅ **配置驱动**：通过JSON配置文件定义污点源、传播规则和Sink
- ✅ **应用无关**：无需修改代码即可分析不同应用
- ✅ **灵活扩展**：轻松添加新的污点源和Sink
- ✅ **实时监控**：运行时动态追踪污点流
- ✅ **详细报告**：生成完整的污点流分析报告

---

## 📦 组件架构

```
┌─────────────────────────────────────────────────────────────┐
│                    通用污点分析框架                          │
└─────────────────────────────────────────────────────────────┘

配置层:
  taint_config.json          # 通用配置（污点源、Sink、传播规则）
      ↓
运行时层:
  universal_taint_tracker.js # Frida脚本（动态Hook）
      ↓
管理层:
  TaintAnalyzer.java        # Java管理器（启动、控制、报告）
      ↓
应用层:
  AndroidLoginDetector.java # 集成到测试流程
```

---

## 🚀 快速开始

### 方式1: 命令行直接使用（测试）

```bash
# 1. 启动应用并附加Frida
frida -U -f com.example.app -l frida_scripts/universal_taint_tracker.js

# 2. 在Python中加载配置
import frida
import json

# 读取配置
with open('src/main/resources/taint_config.json', 'r') as f:
    config = json.load(f)

# 连接到Frida
session = frida.get_usb_device().attach("com.example.app")
script = session.create_script(open('frida_scripts/universal_taint_tracker.js').read())
script.load()

# 发送配置
script.exports.load_config(json.dumps(config))
script.exports.set_app_package("com.example.app")

# 等待并获取报告
input("Press Enter to get report...")
report = script.exports.get_taint_report()
print(json.dumps(json.loads(report), indent=2))
```

### 方式2: Java集成（推荐）

```java
// 在AndroidLoginDetector中集成
public class AndroidLoginDetector {
    private TaintAnalyzer taintAnalyzer;
    
    public AndroidLoginDetector() {
        // 初始化污点分析器
        taintAnalyzer = new TaintAnalyzer(fridaManager);
    }
    
    public void runLoginDetectionTest() {
        // ... 启动应用 ...
        
        // 启动污点追踪
        taintAnalyzer.startTracking(appPackage);
        
        // 执行登录
        String password = selectPassword();
        inputCredentialsAndLogin(username, password);
        
        // 获取报告
        List<TaintViolation> violations = taintAnalyzer.detectViolations();
        
        // 处理违规
        for (TaintViolation v : violations) {
            logError("Taint violation: " + v);
        }
        
        // 生成报告
        taintAnalyzer.saveReport("reports/taint_analysis.txt");
    }
}
```

---

## ⚙️ 配置文件说明

### 1. 定义污点源（Sources）

```json
{
  "sources": [
    {
      "name": "password_edittext",
      "type": "PASSWORD",
      "patterns": [
        {
          "class": "android.widget.EditText",
          "method": "getText",
          "condition": "inputType contains PASSWORD or hint contains password"
        }
      ]
    }
  ]
}
```

**字段说明**：
- `name`: 污点源名称（描述性）
- `type`: 污点类型（PASSWORD, COOKIE, TOKEN等）
- `patterns.class`: 目标类
- `patterns.method`: 目标方法
- `patterns.condition`: 触发条件（可选）

### 2. 定义传播规则（Propagation）

```json
{
  "propagation": [
    {
      "name": "string_operations",
      "rules": [
        {
          "class": "java.lang.String",
          "method": "substring",
          "type": "PROPAGATE_TO_RESULT"
        }
      ]
    }
  ]
}
```

**传播类型**：
- `PROPAGATE_TO_RESULT`: 从this/参数传播到返回值
- `PROPAGATE_TO_OBJECT`: 污染整个对象

### 3. 定义消毒器（Sanitizers）

```json
{
  "sanitizers": [
    {
      "name": "encryption",
      "rules": [
        {
          "class": "javax.crypto.Cipher",
          "method": "doFinal",
          "type": "SANITIZE"
        }
      ]
    }
  ]
}
```

**作用**：标记数据已被安全处理（如加密），不再视为污点

### 4. 定义危险Sink

```json
{
  "sinks": [
    {
      "name": "plaintext_storage",
      "severity": "HIGH",
      "description": "明文存储到SharedPreferences",
      "patterns": [
        {
          "class": "android.content.SharedPreferences$Editor",
          "method": "putString",
          "parameter_index": 1,
          "check_encryption": true
        }
      ]
    }
  ]
}
```

**字段说明**：
- `severity`: HIGH, MEDIUM, LOW
- `parameter_index`: 检查第几个参数（0为第一个）
- `check_encryption`: 是否检查数据是否加密

### 5. 应用特定配置（可选）

```json
{
  "app_specific": {
    "com.newsblur": {
      "sources": [
        {
          "class": "com.newsblur.network.APIResponse",
          "method": "getCookie",
          "type": "SESSION_COOKIE"
        }
      ]
    },
    "com.example.otherapp": {
      "sources": [...],
      "sinks": [...]
    }
  }
}
```

---

## 📝 使用示例

### 示例1: 分析NewsBlur

```java
// 1. 创建污点分析器
TaintAnalyzer analyzer = new TaintAnalyzer(fridaManager);

// 2. 启动追踪
analyzer.startTracking("com.newsblur");

// 3. 执行登录操作
// ... UI自动化输入用户名密码 ...

// 4. 获取结果
Thread.sleep(5000); // 等待登录完成
TaintReport report = analyzer.getTaintReport();

// 5. 检查违规
for (TaintViolation v : report.getViolations()) {
    System.out.println("Found violation: " + v);
}

// 6. 生成报告
analyzer.saveReport("reports/newsblur_taint.txt");
```

**预期输出**：
```
================================================================================
TAINT ANALYSIS REPORT
================================================================================
Application: com.newsblur
Total Taints: 2
Total Flows: 1
Violations: 1
================================================================================

SECURITY VIOLATIONS:
--------------------------------------------------------------------------------

Violation #1
  Taint ID: TAINT_002
  Severity: HIGH
  Sink: android.content.SharedPreferences$Editor.putString()
  Key: cookie
--------------------------------------------------------------------------------
```

### 示例2: 分析新应用（无需修改代码）

```java
// 只需要修改包名！
analyzer.startTracking("com.example.newapp");

// 其余代码完全相同
// 配置文件会自动适配通用的污点源和Sink
```

### 示例3: 添加自定义污点源

如果新应用使用了特殊的密码存储方式：

```json
// 在taint_config.json中添加：
{
  "app_specific": {
    "com.example.newapp": {
      "sources": [
        {
          "class": "com.example.newapp.CustomAuth",
          "method": "getEncryptedPassword",
          "type": "ENCRYPTED_PASSWORD"
        }
      ]
    }
  }
}
```

然后重新运行，**无需修改Java代码**！

---

## 🎯 支持的污点源（开箱即用）

### 通用污点源

| 类型 | 检测位置 | 说明 |
|------|---------|------|
| PASSWORD | EditText (inputType=PASSWORD) | 密码输入框 |
| USERNAME | EditText (hint contains username) | 用户名输入 |
| COOKIE | OkHttp Response (Set-Cookie) | HTTP Cookie |
| AUTH_TOKEN | Response header (Authorization) | 认证令牌 |
| JWT | String (正则匹配JWT格式) | JWT Token |
| SENSITIVE | Intent/Bundle (key contains password/token) | Intent传递 |

### 支持的Sink（开箱即用）

| 类型 | 严重性 | 检测位置 |
|------|--------|---------|
| 明文存储 | HIGH | SharedPreferences.putString() |
| 文件写入 | HIGH | FileOutputStream.write() |
| 数据库 | HIGH | SQLiteDatabase.insert() |
| 日志输出 | MEDIUM | Log.d/i/w/e() |
| 剪贴板 | LOW | ClipboardManager.setPrimaryClip() |

---

## 🔧 高级用法

### 1. 自定义条件判断

```json
{
  "sources": [
    {
      "name": "custom_password",
      "type": "PASSWORD",
      "patterns": [
        {
          "class": "com.example.CustomInput",
          "method": "getValue",
          "condition": "value matches '^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$'"
        }
      ]
    }
  ]
}
```

### 2. 多参数污点检查

```json
{
  "sinks": [
    {
      "name": "network_transmission",
      "patterns": [
        {
          "class": "okhttp3.Request$Builder",
          "method": "addHeader",
          "parameter_index": 1,  // 检查value参数
          "check_encryption": false
        }
      ]
    }
  ]
}
```

### 3. 调整性能参数

```json
{
  "options": {
    "track_string_operations": true,    // 追踪字符串操作
    "max_propagation_depth": 10,        // 最大传播深度
    "min_taint_value_length": 3,        // 最小污点长度
    "report_interval_seconds": 30,      // 报告间隔
    "generate_call_stack": true         // 生成调用栈
  }
}
```

---

## 📊 报告格式

### 终端实时输出

```
[TAINT_MARK] TAINT_001 (PASSWORD) from EditText.getText()
[TAINT_PROP] TAINT_001 via Intent.getStringExtra('password')
[TAINT_MARK] TAINT_002 (COOKIE) from APIResponse.getCookie()

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
[!] TAINT FLOW TO SINK DETECTED!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
[+] Taint ID: TAINT_002
[+] Taint Type: COOKIE
[+] Source: APIResponse.getCookie()
[+] Sink: SharedPreferences$Editor.putString()
[+] Severity: HIGH
[!] CRITICAL: Data appears to be PLAINTEXT!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
```

### 文件报告（生成的）

```
================================================================================
TAINT ANALYSIS REPORT
================================================================================
Application: com.newsblur
Timestamp: 2025-10-08 19:17:00
Total Taints: 3
Total Flows: 2
Violations: 1
================================================================================

TAINT DETAILS:
  TAINT_001 [PASSWORD] from EditText.getText()
  TAINT_002 [COOKIE] from APIResponse.getCookie()
  TAINT_003 [USERNAME] from Intent.getStringExtra('username')

FLOWS:
  TAINT_001 -> OkHttp POST (SAFE - encrypted via HTTPS)
  TAINT_002 -> SharedPreferences.putString() (UNSAFE - plaintext)

SECURITY VIOLATIONS:
  
  Violation #1
    Taint ID: TAINT_002
    Type: COOKIE
    Source: APIResponse.getCookie()
    Propagation: None
    Sink: SharedPreferences$Editor.putString()
    Key: cookie
    Severity: HIGH
    Risk: Session hijacking via ADB backup or root access
    Recommendation: Use EncryptedSharedPreferences
    
================================================================================
```

---

## 🔍 调试和验证

### 验证配置加载

```bash
frida -U -f com.example.app -l universal_taint_tracker.js

# 在Python中：
script.exports.load_config(json.dumps(config))
# 应该看到：
# [*] Configuration loaded successfully
# [*] Sources: 8
# [*] Sinks: 6
```

### 测试特定污点源

```bash
# 手动触发
frida -U com.example.app -e "Java.perform(function() { \
    TaintDB.mark('test123', {type: 'PASSWORD', source: 'TEST'}); \
});"
```

### 查看当前污点

```bash
script.exports.get_taint_report()
```

---

## 💡 最佳实践

### 1. 渐进式配置

**第一步**：使用默认配置
```bash
# 直接使用taint_config.json的默认配置
analyzer.startTracking("com.example.app");
```

**第二步**：添加应用特定配置
```json
// 发现应用使用了特殊API，添加到app_specific
"com.example.app": {
  "sources": [...新的污点源...]
}
```

**第三步**：细化条件
```json
// 添加更精确的条件判断
"condition": "parameter contains password AND value length > 8"
```

### 2. 性能优化

- 关闭不需要的追踪：`"track_string_operations": false`
- 限制传播深度：`"max_propagation_depth": 5`
- 增加最小长度：`"min_taint_value_length": 5`

### 3. 批量分析

```java
// 分析多个应用
String[] apps = {
    "com.newsblur",
    "com.example.app1",
    "com.example.app2"
};

for (String app : apps) {
    analyzer.startTracking(app);
    // ... 执行测试 ...
    analyzer.saveReport("reports/" + app + "_taint.txt");
}
```

---

## 🎓 总结

### 优势

1. ✅ **零代码修改** - 分析新应用只需修改配置
2. ✅ **灵活扩展** - 轻松添加新的污点源和Sink
3. ✅ **实时检测** - 运行时动态追踪
4. ✅ **详细报告** - 完整的污点流信息
5. ✅ **高准确性** - 基于实际运行的污点传播

### 局限性

1. ⚠️ 需要运行应用（动态分析）
2. ⚠️ 可能遗漏未执行的代码路径
3. ⚠️ 性能开销（Hook大量方法）

### 适用场景

- ✅ 登录安全检测
- ✅ 会话管理分析
- ✅ 敏感数据泄露检测
- ✅ 第三方SDK审计
- ✅ 自动化安全测试

---

## 📚 扩展阅读

- [Frida文档](https://frida.re/docs/)
- [Android安全最佳实践](https://developer.android.com/topic/security/best-practices)
- [OWASP Mobile Top 10](https://owasp.org/www-project-mobile-top-10/)
- [污点分析理论](https://en.wikipedia.org/wiki/Taint_checking)

**现在您可以无需修改代码，分析任何Android应用的登录安全问题！** 🚀
