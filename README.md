# Android Login Issue Detection Tool

A comprehensive automated testing and analysis tool for detecting login-related issues in Android applications. This tool combines UI automation with dynamic analysis to identify various types of login problems.

## Features

- **Automated Login Testing**: Tests multiple login methods (native, Google, Facebook)
- **Dynamic Analysis**: Uses Frida for API call monitoring and state tracking
- **Issue Detection**:
  - Navigation flow errors
  - Application crashes
  - ANR (Application Not Responding) detection
  - Login timeouts
  - Credential rejection issues
  - Special character handling problems

## System Architecture

### Core Components

1. **LoginDetectTest**: Main test runner that orchestrates the testing process
   - Manages test rounds and credentials
   - Handles UI interactions via Appium
   - Coordinates with Frida for API monitoring
   - Analyzes test results

2. **FridaManager**: Manages Frida integration
   - Handles Frida process lifecycle
   - Manages API hook patterns
   - Coordinates with login_agent.js

3. **ApiLogAnalyzer**: Processes API call logs
   - Maps API calls to application states
   - Detects invalid state transitions
   - Identifies potential issues

4. **LoginReportManager**: Generates detailed test reports
   - Tracks detected issues
   - Generates test summaries
   - Maintains issue statistics

### Supporting Components

- **login_agent.js**: Frida script for API monitoring
- **frida_controller.py**: Python script for Frida RPC communication
- **ConfigLoader**: Manages test configuration and patterns

## Quick Start with Docker

### Prerequisites

1. **Docker and Docker Compose**
   - Install Docker Desktop for your platform
   - Ensure Docker Compose is included

2. **System Requirements**
   - For Apple Silicon Macs: Latest Docker Desktop with Rosetta 2 enabled
   - For x86_64 systems: Standard Docker installation
   - At least 8GB RAM and 64GB free disk space

### Step 1: Clone and Setup

```bash
git clone <repository-url>
cd android-login-detection-tool
```

### Step 2: Configure Application Path

1. **Place your APK file** in the project directory:

   ```
   android-login-detection-tool/
   ├── apps/
   │   └── your-app.apk
   ├── docker-compose.yml
   └── ...
   ```

2. **Update configuration** in `src/test/resources/config.properties`:

   ```properties
   # Application configuration
   app.path=/app/apps/your-app.apk
   app.package=com.yourcompany.yourapp
   app.activity=com.yourcompany.yourapp.MainActivity
   
   # Test configuration
   test.rounds=5
   test.timeout=60000
   
   # Appium configuration
   appium.url=http://localhost:4723/wd/hub
   device.name=test_device
   platform.name=Android
   platform.version=12
   ```

### Step 3: Start the Container

```bash
# Start the testing environment
docker compose up --build

# Or run in detached mode
docker compose up -d --build
```

The container will automatically:

- ✅ Start ADB server
- ✅ Launch Android emulator
- ✅ Start Appium server
- ✅ Prepare testing environment

### Step 4: Run Tests

**Option A: Interactive Mode**

```bash
# Enter the container
docker exec -it logintest-test-runner-1 /bin/bash

# Run the main test suite
cd /app
mvn test -Dtest=LoginDetectTest

# Or run specific tests
mvn test -Dtest=LoginDetectTest#testNativeLogin
```

**Option B: Direct Command**

```bash
# Run tests without entering container
docker exec test-test-runner-1 bash -c "cd /app && mvn test -Dtest=LoginDetectTest"

# Run with custom parameters
docker exec test-test-runner-1 bash -c "cd /app && mvn test -Dtest=LoginDetectTest -Dapp.path=/app/apps/your-app.apk"
```

### Step 5: View Results

**Test Reports:**

```bash
# View test results
docker exec test-test-runner-1 ls -la /app/target/surefire-reports/

# Copy reports to host
docker cp test-test-runner-1:/app/target/surefire-reports/ ./reports/
```

**Logs and Artifacts:**

```bash
# View Appium logs
docker logs test-test-runner-1

# View Frida analysis results
docker exec test-test-runner-1 ls -la /app/frida-logs/

# View screenshots and recordings
docker exec test-test-runner-1 ls -la /app/test-artifacts/
```

## Manual Setup (Without Docker)

### Prerequisites

1. **Java Development Environment**
   - JDK 8 or higher
   - Maven for dependency management

2. **Android Development Tools**
   - Android SDK
   - ADB (Android Debug Bridge)
   - An Android device or emulator

3. **Appium**

   ```bash
   npm install -g appium
   appium driver install uiautomator2
   ```

4. **Frida**

   ```bash
   pip install frida-tools
   pip install frida
   ```

5. **Python Dependencies**

   ```bash
   pip install requests pyyaml
   ```

### Configuration

1. **Update `config.properties`** with your local paths:

   ```properties
   app.path=/path/to/your/app.apk
   android.sdk.path=/path/to/android/sdk
   appium.url=http://localhost:4723/wd/hub
   ```

2. **Start required services:**

   ```bash
   # Start ADB
   adb start-server
   
   # Start Android emulator
   emulator -avd your_avd_name
   
   # Start Appium
   appium --allow-insecure chromedriver_autodownload
   ```

3. **Run tests:**

   ```bash
   mvn test -Dtest=LoginDetectTest
   ```

## Configuration Options

### Application Settings

| Property | Description | Example |
|----------|-------------|---------|
| `app.path` | Path to APK file | `/app/apps/myapp.apk` |
| `app.package` | App package name | `com.example.myapp` |
| `app.activity` | Main activity | `com.example.myapp.MainActivity` |

### Test Parameters

| Property | Description | Default |
|----------|-------------|---------|
| `test.rounds` | Number of test iterations | `5` |
| `test.timeout` | Test timeout (ms) | `60000` |
| `test.credentials.file` | Credentials file path | `credentials.json` |

### Device Configuration

| Property | Description | Default |
|----------|-------------|---------|
| `device.name` | Device/emulator name | `test_device` |
| `platform.name` | Platform name | `Android` |
| `platform.version` | Android version | `12` |

## Troubleshooting

### Common Issues

**1. Emulator won't start**

```bash
# Check emulator status
docker exec test-test-runner-1 ${ANDROID_HOME}/emulator/emulator -list-avds

# Check ADB connection
docker exec test-test-runner-1 adb devices
```

**2. App installation fails**

```bash
# Verify APK path
docker exec test-test-runner-1 ls -la /app/apps/

# Check APK compatibility
docker exec test-test-runner-1 aapt dump badging /app/apps/your-app.apk
```

**3. Frida connection issues**

```bash
# Check Frida server status
docker exec test-test-runner-1 frida-ps -U

# Restart Frida server
docker exec test-test-runner-1 adb shell "su -c 'killall frida-server'"
```

### Performance Optimization

**For Apple Silicon Macs:**

- Use software emulation (already configured)
- Allocate sufficient resources to Docker Desktop
- Consider using x86_64 Linux servers for better performance

**For x86_64 Systems:**

- Hardware acceleration is automatically used
- Optimal performance expected

## Development

### Project Structure

```
├── src/
│   ├── main/java/           # Core detection logic
│   └── test/java/           # Test implementations
├── scripts/                 # Python analysis scripts
├── apps/                    # APK files directory
├── frida-scripts/          # Frida instrumentation scripts
├── docker-entrypoint.sh    # Container startup script
├── Dockerfile              # Container definition
└── docker-compose.yml      # Service orchestration
```

### Adding New Tests

1. Create test class extending `BaseLoginTest`
2. Implement detection logic
3. Add configuration to `config.properties`
4. Update test suite

### Extending Frida Analysis

1. Modify `login_agent.js` for new hooks
2. Update `frida_controller.py` for data processing
3. Add analysis patterns to `ApiLogAnalyzer`

## Contributing

1. Fork the repository
2. Create feature branch
3. Add tests for new functionality
4. Submit pull request

## License

[Your License Here]
