# AndroidLoginDetector

Automated Android login bug detection tool based on research paper workflow.

## Technology Stack

- **UI Automation**: ADB + uiautomator dump (no Appium required)
- **API Monitoring**: Frida for API call interception
- **State Machine**: Custom state machine validation
- **Testing Framework**: TestNG
- **Containerization**: Docker

## Quick Start

### 1. Environment Setup

```bash
# Check environment compatibility
./scripts/docker-environment-check.sh

# Or use the main script
./run_detector.sh -c
```

### 2. Build Project

```bash
# Compile Java project
mvn clean compile

# Or use the main script
./run_detector.sh --no-check
```

### 3. Run Tests

```bash
# Full run (with environment check and compilation)
./run_detector.sh

# Skip environment check
./run_detector.sh --no-check

# Skip compilation (use existing class files)
./run_detector.sh --no-compile

# Environment check only
./run_detector.sh -c

# Show project structure
./run_detector.sh -s
```

### 4. Docker Deployment

```bash
# Build and start all services
docker-compose up -d

# View logs
docker-compose logs -f android-login-detector

# Stop services
docker-compose down
```

## Configuration

### Main Configuration File

**Location**: `src/main/resources/config.properties`

```properties
# App Configuration
app.path=apps/org.mian.gitnex_550.apk
app.package=org.mian.gitnex
app.activity=org.mian.gitnex.activities.MainActivity

# Test Configuration
test.duration=30000
test.rounds=3
test.round.interval=5000

# Emulator Configuration
emulator.snapshot=snap_gitnex_login
emulator.startup.timeout=60000
emulator.restart.timeout=30000

# Frida Configuration
frida.enabled=true
frida.timeout=30
frida.retry.count=3
frida.retry.delay=2

# Monkey Configuration
monkey.events=50
monkey.throttle=100
monkey.touch.percentage=100

# UI Element Detection
ui.login.button.patterns=login,sign_in,signin,submit,enter,go,continue
ui.username.field.patterns=username,user,email,login,account,user_id
ui.password.field.patterns=password,passwd,pass,pwd,secret,password1
```

### API Regex Patterns

**Location**: `src/main/resources/regex_patterns.txt`

```properties
# Format: STATE_NAME:::REGEX_PATTERN
InitialState:::^(android\.app\.Application\.onCreate|android\.app\.ActivityThread\.main)$
CredentialInput:::^(.*\.showLoginScreen|.*\.displayCredentialsView)$
Authenticating:::^(.*\.performLoginAction|.*\.initiateAuthentication)$
```

### Credential Pools

**Location**: `pools/` directory

- `accounts.txt` - Standard accounts
- `passwords.txt` - Standard passwords  
- `google_accounts.txt` - Google accounts
- `google_passwords.txt` - Google passwords
- `facebook_accounts.txt` - Facebook accounts
- `facebook_passwords.txt` - Facebook passwords

## Project Structure

```
AndroidLoginDetector/
├── src/main/java/           # Core Java code
│   ├── AndroidLoginDetector.java    # Main controller
│   ├── FridaManager.java            # Frida management
│   ├── UIManager.java               # UI automation (ADB-based)
│   ├── StateMachineManager.java     # State machine validation
│   ├── ConfigLoader.java            # Configuration loader
│   └── LoginReportManager.java      # Report management
├── src/main/resources/      # Configuration files
│   ├── config.properties            # Main configuration
│   ├── regex_patterns.txt           # API regex patterns
│   └── login_agent.js               # Frida agent script
├── scripts/                 # Scripts
│   ├── frida_controller.py          # Frida controller
│   └── run_detector.sh              # Main run script
├── pools/                   # Credential pools
├── logs/                    # Log files
├── reports/                 # Report files
├── apps/                    # APK files
├── docker-compose.yml       # Docker configuration
├── Dockerfile               # Docker image
└── pom.xml                  # Maven configuration
```

## System Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        Docker Container Environment                      │
│  ┌───────────────────────────────────────────────────────────────────┐  │
│  │                    Android Emulator (API 29)                      │  │
│  │                    System Image: x86_64                           │  │
│  │  ┌─────────────────────────────────────────────────────────────┐ │  │
│  │  │              Target Android Application                      │ │  │
│  │  │            (e.g., com.newsblur)                             │ │  │
│  │  │                                                              │ │  │
│  │  │  ┌────────────────────────────────────────────────────┐    │ │  │
│  │  │  │     Frida Agent (login_agent.js)                   │    │ │  │
│  │  │  │  - API call interception                           │    │ │  │
│  │  │  │  - State detection & mapping                       │    │ │  │
│  │  │  │  - Runtime monitoring                              │    │ │  │
│  │  │  └────────────────────────────────────────────────────┘    │ │  │
│  │  └─────────────────────────────────────────────────────────────┘ │  │
│  │                                                                    │  │
│  │  ┌─────────────────────────────────────────────────────────────┐ │  │
│  │  │           Frida Server (Port 27042)                         │ │  │
│  │  │  - Process attachment                                       │ │  │
│  │  │  - Script injection                                         │ │  │
│  │  │  - RPC communication                                        │ │  │
│  │  └─────────────────────────────────────────────────────────────┘ │  │
│  └───────────────────────────────────────────────────────────────────┘  │
│                                                                           │
│  ┌───────────────────────────────────────────────────────────────────┐  │
│  │              Java Test Framework (TestNG)                         │  │
│  │  ┌─────────────────────────────────────────────────────────────┐ │  │
│  │  │          AndroidLoginDetector (Main Orchestrator)           │ │  │
│  │  │                                                              │ │  │
│  │  │  Core Components:                                           │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 1. StaticAnalysisManager                             │  │ │  │
│  │  │  │    - APK analysis (SootUp/WALA)                      │  │ │  │
│  │  │  │    - Taint analysis                                  │  │ │  │
│  │  │  │    - Call graph generation                           │  │ │  │
│  │  │  │    - API pattern extraction                          │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 2. FridaManager                                      │  │ │  │
│  │  │  │    - Frida lifecycle management                      │  │ │  │
│  │  │  │    - Python controller subprocess                    │  │ │  │
│  │  │  │    - Hook configuration injection                    │  │ │  │
│  │  │  │    - API log collection                              │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 3. UIManager                                         │  │ │  │
│  │  │  │    - ADB integration                                 │  │ │  │
│  │  │  │    - UI element detection (uiautomator dump)         │  │ │  │
│  │  │  │    - Credential input automation                     │  │ │  │
│  │  │  │    - Login button detection & clicking               │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 4. StateMachineManager                               │  │ │  │
│  │  │  │    - State transition validation                     │  │ │  │
│  │  │  │    - Login flow verification                         │  │ │  │
│  │  │  │    - Bug detection (invalid transitions)             │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 5. NetworkChaosManager                               │  │ │  │
│  │  │  │    - Network disruption injection                    │  │ │  │
│  │  │  │    - Fault scenarios (latency, packet loss, etc.)    │  │ │  │
│  │  │  │    - Network state tracking                          │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 6. ApiLogAnalyzer                                    │  │ │  │
│  │  │  │    - Frida log parsing                               │  │ │  │
│  │  │  │    - State mapping (regex-based)                     │  │ │  │
│  │  │  │    - API signature matching                          │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  │  ┌──────────────────────────────────────────────────────┐  │ │  │
│  │  │  │ 7. EmulatorManager                                   │  │ │  │
│  │  │  │    - Snapshot management                             │  │ │  │
│  │  │  │    - Emulator lifecycle control                      │  │ │  │
│  │  │  │    - State restoration                               │  │ │  │
│  │  │  └──────────────────────────────────────────────────────┘  │ │  │
│  │  └─────────────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────────────────┘  │
│                                                                           │
│  ┌───────────────────────────────────────────────────────────────────┐  │
│  │           Python Frida Controller (frida_controller.py)           │  │
│  │  - Device connection (USB/TCP)                                    │  │
│  │  - Process spawn/attach                                           │  │
│  │  - Script injection & RPC                                         │  │
│  └───────────────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────────┘
```

## Complete Workflow

### Phase 1: Static Analysis (Pre-execution)

```
┌─────────────────────────────────────────────────────────────────────┐
│                    Static Analysis Phase                             │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  1. APK Loading & Parsing                                           │
│     - Extract APK components                                         │
│     - Parse AndroidManifest.xml                                      │
│     - Load DEX files                                                 │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  2. Call Graph Generation (SootUp/WALA)                             │
│     - Build class hierarchy                                          │
│     - Generate inter-procedural call graph                           │
│     - Identify entry points                                          │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  3. Login-Related API Detection                                     │
│     - Network APIs (HttpURLConnection, OkHttp, Retrofit)            │
│     - Credential APIs (SharedPreferences, KeyStore)                 │
│     - UI APIs (EditText, WebView, Button)                           │
│     - Authentication APIs (AccountManager, OAuth)                   │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  4. Taint Analysis                                                   │
│     - Source: User input (EditText.getText())                       │
│     - Sink: Network calls, File I/O, Crypto operations             │
│     - Flow tracking: Credential → Storage/Network                   │
│     - Output: Taint flow report                                     │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  5. State Assignment (IR States)                                    │
│     - Assign intermediate representation states:                     │
│       • IR_LoginEvidence: Network/auth-related calls                │
│       • IR_WebViewEvidence: WebView usage                           │
│       • CredentialInput: UI input methods                           │
│       • Authenticating: HTTP POST/auth methods                      │
│     - Output: static_analysis_result.json                           │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  6. Regex Pattern Generation                                        │
│     - Convert method signatures to regex patterns                    │
│     - Format: STATE_NAME:::REGEX_PATTERN                            │
│     - Output: regex_patterns.txt                                    │
│     - Used by ApiLogAnalyzer for Java-side matching                 │
└─────────────────────────────────────────────────────────────────────┘
```

**Key Outputs:**
- **static_analysis_result.json**: Hook configurations with IR states
- **regex_patterns.txt**: State-to-regex mappings for ApiLogAnalyzer
- **taint_analysis_result.json**: Security flow violations

### Phase 2: Dynamic Execution (Per Round)

```
┌─────────────────────────────────────────────────────────────────────┐
│                    Test Round Initialization                         │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  1. Emulator State Preparation                                      │
│     - Restore baseline snapshot (if exists)                         │
│     - Launch application via ADB                                    │
│     - Wait for app startup (5-10 seconds)                           │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  2. Network Chaos Injection (Optional)                              │
│     - Randomly select network condition:                             │
│       • GOOD (baseline)                                             │
│       • DISABLE_DATA (airplane mode simulation)                     │
│       • HIGH_LATENCY (tc qdisc delay 500ms)                         │
│       • PACKET_LOSS (tc qdisc loss 30%)                             │
│       • BANDWIDTH_LIMIT (tc tbf rate 100kbit)                       │
│     - Apply for random duration (10-30 seconds)                     │
│     - Track disruption history                                      │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  3. Frida Monitoring Startup                                        │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  A. Python Controller Launch                               │  │
│     │     - Execute: frida_controller.py <package> <config_json> │  │
│     │     - Connect to Frida server (TCP 127.0.0.1:27042)       │  │
│     │     - Find target process PID                              │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  B. Process Attachment                                     │  │
│     │     - device.attach(pid)                                   │  │
│     │     - Load login_agent.js script                           │  │
│     │     - Inject hook configuration (from static analysis)     │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  C. Hook Installation (login_agent.js)                     │  │
│     │     For each method in hookConfig:                         │  │
│     │       - Locate Java class & method                         │  │
│     │       - Install Interceptor.attach()                       │  │
│     │       - onEnter: Capture arguments                         │  │
│     │       - onLeave: Capture return value                      │  │
│     │       - Detect error states (HTTP codes, exceptions)       │  │
│     │       - Map IR states → Runtime states                     │  │
│     │       - Log to frida_api_log.txt                           │  │
│     └───────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  4. UI Automation: Login Page Detection                             │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  A. UI Dump & Analysis                                     │  │
│     │     - Execute: adb shell uiautomator dump                  │  │
│     │     - Parse window_dump.xml                                │  │
│     │     - Search for login indicators:                         │  │
│     │       • Username field (resource-id, hint, text)           │  │
│     │       • Password field (password=true attribute)           │  │
│     │       • Login button (text: "login", "sign in", etc.)      │  │
│     │       • Social login buttons (Google, Facebook)            │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  B. Fallback: Monkey Exploration (if not detected)         │  │
│     │     - Random UI interaction (1000 events)                  │  │
│     │     - Monitor state changes via Frida                      │  │
│     │     - Re-check for login page after each step              │  │
│     │     - Timeout: detection.login.timeout (300s)              │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  C. Create Baseline Snapshot                               │  │
│     │     - Save emulator state at login page                    │  │
│     │     - Used for quick restoration in future rounds          │  │
│     └───────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  5. Credential Input Phase                                          │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  A. Account Selection                                      │  │
│     │     - Load accounts from accounts.txt                      │  │
│     │     - Prioritize: valid > locked > invalid accounts        │  │
│     │     - Select account for this round                        │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  B. Username Input                                         │  │
│     │     - Locate username field coordinates                    │  │
│     │     - adb shell input tap <x> <y>  (focus field)           │  │
│     │     - adb shell input text <username>  (char-by-char)      │  │
│     │     - Handle special characters (escape for shell)         │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  C. Password Input (Special Character Handling)            │  │
│     │     - Locate password field coordinates                    │  │
│     │     - adb shell input tap <x> <y>  (focus field)           │  │
│     │     - For each character:                                  │  │
│     │       • If single quote ('): Use array exec form           │  │
│     │         Runtime.exec(["adb", "shell", "input", "text", c]) │  │
│     │       • Else: Use double quotes with escaping              │  │
│     │         Escape: \, ", `, $, !                              │  │
│     │         adb shell input text "<escaped_char>"              │  │
│     │       • Small delay every 5 chars (50ms)                   │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  D. Login Button Click                                     │  │
│     │     - Locate login button coordinates                      │  │
│     │     - adb shell input tap <x> <y>                          │  │
│     │     - Wait for response (30-60 seconds)                    │  │
│     └───────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  6. Login Process Monitoring                                        │
│     - Frida continues logging API calls                             │
│     - Monitor for state transitions:                                │
│       • CredentialInput → Authenticating                            │
│       • Authenticating → CheckingCredentials                        │
│       • CheckingCredentials → LoggedIn / LoginFailure               │
│     - Detect success indicators:                                    │
│       • Main screen appearance                                      │
│       • Token storage                                               │
│       • Session establishment                                       │
│     - Detect failure indicators:                                    │
│       • Toast messages (android.widget.Toast.show)                  │
│       • Error dialogs                                               │
│       • Return to login page                                        │
│     - Timeout: detection.login.completion.timeout (60s)             │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  7. API Log Analysis & State Machine Validation                     │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  A. Parse Frida API Log                                    │  │
│     │     - Read frida_api_log.txt                               │  │
│     │     - Extract API calls with format:                       │  │
│     │       [API] className.methodName | State: XYZ             │  │
│     │     - Match against regex_patterns.txt                     │  │
│     │     - Build state sequence                                 │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  B. State Mapping (Dual Layer)                             │  │
│     │     Layer 1 (Frida Agent - JavaScript):                    │  │
│     │       - IR_LoginEvidence → Authenticating (app code)       │  │
│     │       - IR_LoginEvidence → Unknown (library code)          │  │
│     │       - IR_WebViewEvidence → CredentialInput               │  │
│     │       - WebViewUsage → CredentialInput                     │  │
│     │       - Filter library packages (gson, androidx, okhttp)   │  │
│     │     Layer 2 (Java ApiLogAnalyzer):                         │  │
│     │       - Regex-based API signature matching                 │  │
│     │       - Map to runtime states from regex_patterns.txt      │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  C. State Machine Validation                               │  │
│     │     - Load valid transitions from StateMachineManager      │  │
│     │     - Check each transition in sequence:                   │  │
│     │       For state[i] → state[i+1]:                           │  │
│     │         if not validTransitions.contains(this):            │  │
│     │           Log: "Invalid state transition"                  │  │
│     │           Report: LOGIN BUG DETECTED                       │  │
│     │     - Allowed transitions include:                         │  │
│     │       • All self-transitions (X → X)                       │  │
│     │       • CredentialInput ↔ Authenticating                   │  │
│     │       • Authenticating → LoginFailure/NetworkError         │  │
│     │       • LoginFailure ↔ NetworkError                        │  │
│     │       • Error states → CredentialInput (retry)             │  │
│     └───────────────────────────────────────────────────────────┘  │
│                              │                                       │
│                              ▼                                       │
│     ┌───────────────────────────────────────────────────────────┐  │
│     │  D. Bug Report Generation                                  │  │
│     │     - Navigation flow errors (invalid transitions)         │  │
│     │     - Data security issues (taint violations)              │  │
│     │     - Error handling problems                              │  │
│     │     - Output: reports/errors/test_errors_<timestamp>.txt   │  │
│     └───────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────────┐
│  8. Round Cleanup & Metrics                                         │
│     - Stop Frida monitoring                                         │
│     - Restore good network state                                    │
│     - Update statistics:                                            │
│       • Total attempts                                              │
│       • Successful logins                                           │
│       • Failed logins                                               │
│       • Bugs detected                                               │
│     - Save round report                                             │
└─────────────────────────────────────────────────────────────────────┘
                              │
                              ▼
            ┌─────────────────┴─────────────────┐
            │  More rounds?                      │
            └─────────────────┬─────────────────┘
                    Yes       │       No
                              ▼
                    ┌──────────────────────┐
                    │  Final Report        │
                    │  - Summary stats     │
                    │  - Bug aggregation   │
                    │  - Taint analysis    │
                    └──────────────────────┘
```

## State Mapping System

### Two-Layer Architecture

**Layer 1: Frida Agent (JavaScript - Runtime)**
```javascript
IR_LoginEvidence:
  isLibrary(class) ? 'Unknown' : 'Authenticating'
IR_WebViewEvidence → 'CredentialInput'
WebViewUsage → 'CredentialInput'
```

**Layer 2: ApiLogAnalyzer (Java - Post-processing)**
```
Regex match against regex_patterns.txt:
  i2.b.p → Authenticating
  com.newsblur.activity.Login.onCreate → CredentialInput
  E1.a.h → NetworkError
```

### State Machine

```
┌──────────────┐
│ InitialState │
└──────┬───────┘
       │
       ▼
┌──────────────────┐     ┌─────────────────────┐
│ CheckingToken    │────▶│ LoggedIn_Via_Token  │
└──────┬───────────┘     └─────────────────────┘
       │
       │ (no token)
       ▼
┌──────────────────┐
│ CredentialInput  │◀────────────┐
└──────┬───────────┘             │
       │                         │
       ▼                         │
┌──────────────────┐             │
│ Authenticating   │             │
└──────┬───────────┘             │
       │                         │
       ├─────────────────────────┼───▶ NetworkError
       │                         │
       ├─────────────────────────┼───▶ LoginFailure
       │                         │
       ├─────────────────────────┼───▶ CredentialFormatError
       │                         │
       ▼                         │
┌──────────────────────┐         │
│ CheckingCredentials  │         │
└──────┬───────────────┘         │
       │                         │
       ├─────────────────────────┘ (Invalid)
       │
       ▼
┌──────────────────────┐
│ CheckingMFASettings  │
└──────┬───────────────┘
       │
       ├───▶ LoggedIn_NoMFA
       │
       ▼
┌──────────────────┐
│ MFACodePending   │
└──────┬───────────┘
       │
       ▼
┌──────────────────┐
│ LoggedIn_WithMFA │
└──────────────────┘
```

**Key Transitions:**
- All states support self-transitions (X→X)
- Error states can return to CredentialInput (retry)
- Authenticating can transition to error states or proceed forward
- LoginFailure ↔ NetworkError (bidirectional for error chaining)
- NetworkError → Authenticating (retry after network recovery)

## Key Features

### 1. Special Character Handling (UIManager)
- **Problem**: Single quotes in passwords break shell commands
- **Solution**: Use array-form `exec()` for single quotes, double-quote escaping for others

### 2. Smart IR State Filtering (Frida Agent)
- **Problem**: IR_LoginEvidence maps too many library calls
- **Solution**: Filter known library packages (gson, androidx, okhttp) → 'Unknown'

### 3. Network Chaos Testing
- Inject realistic network faults during login
- Track correlation between network state and login failures

### 4. Snapshot Management
- Baseline snapshot at login page
- Quick restoration for multi-round testing
- Reduces setup time from 60s to 2s

## Output Artifacts

**Per Round:**
- `frida_api_log.txt`: Raw API call logs with states
- `reports/taint/round_N_taint.txt`: Security violations
- `reports/errors/test_errors_TIMESTAMP.txt`: Bug reports

**Final Report:**
- Total login attempts, success/failure rates
- Bug categories: Navigation errors, data security, error handling
- Network disruption impact analysis

## Error Detection

- **Crash**: Detect `FATAL EXCEPTION` in logs
- **ANR**: Detect Application Not Responding
- **Navigation Flow Error**: Validate state transitions
- **Login Timeout**: Monitor login button disappearance time
- **Credential Rejection**: Detect authentication failures

## Requirements

- **OS**: Linux (Ubuntu 20.04+ recommended)
- **Java**: OpenJDK 11+
- **Maven**: 3.6+
- **Python**: 3.7+
- **ADB**: Android Debug Bridge
- **Frida**: 16.0+
- **Docker**: 20.10+ (optional)

## Troubleshooting

### Common Issues

1. **ADB Connection Failed**

   ```bash
   adb devices
   adb kill-server && adb start-server
   ```

2. **Frida Server Not Running**

   ```bash
   adb shell ps | grep frida-server
   adb push resources/frida-server /data/local/tmp/
   adb shell "chmod 755 /data/local/tmp/frida-server"
   adb shell "/data/local/tmp/frida-server &"
   ```

3. **File Permissions**

   ```bash
   chmod +x scripts/*.sh scripts/*.py resources/frida-server
   ```

### Log Files

- **Run Log**: `logs/run_detector_YYYYMMDD_HHMMSS.log`
- **Detector Log**: `logs/android_login_detector_YYYYMMDD_HHMMSS.log`
- **Reports**: `reports/` directory

## License

MIT License
