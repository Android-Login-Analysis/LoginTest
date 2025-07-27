# AndroidLoginDetector

Automated Android login bug detection tool based on research paper workflow.

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

## Workflow

1. **Initialize**: Load configs, start Frida monitoring, load credential pools
2. **Test Loop**: For each round:
   - Restart emulator snapshot
   - Start Frida monitoring
   - Detect login page using UI elements
   - Input credentials if login page found
   - Run Monkey exploration if no login page
   - Analyze API logs and validate state machine
   - Check for crashes/ANRs
   - Stop Frida monitoring
3. **Report**: Generate final report with errors and statistics

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
