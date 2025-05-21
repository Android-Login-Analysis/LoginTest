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

## Prerequisites

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
   ```

4. **Frida**

   ```bash
   pip install frida-tools
   pip install frida
   ```

5. **Python Dependencies**

   ```bash
   pip install frida
   ```

## Setup

1. **Device Setup**
   - Enable USB debugging on your Android device
   - Install and start frida-server on the device

   ```bash
   adb push frida-server /data/local/tmp/
   adb shell "chmod 755 /data/local/tmp/frida-server"
   adb shell "/data/local/tmp/frida-server &"
   ```

2. **Project Setup**
   - Clone the repository
   - Place test APK in the `apps/` directory
   - Configure test credentials in the `pools/` directory
   - Update regex patterns in `regex_patterns.txt`

3. **Configuration**
   - Update `ConfigLoader` with appropriate patterns for your target app
   - Configure test parameters in `LoginDetectTest`

## Usage

1. **Start Appium Server**

   ```bash
   appium
   ```

2. **Run Tests**

   ```bash
   mvn test
   ```

3. **View Results**
   - Check the `reports/` directory for detailed test reports
   - Review console output for real-time test progress

## Test Data

The tool uses several pools of test data:

- `pools/accounts.txt`: Username pool
- `pools/passwords.txt`: Password pool
- `pools/instances.txt`: Instance URLs
- `pools/google_accounts.txt`: Google account credentials
- `pools/facebook_accounts.txt`: Facebook account credentials

## Report Format

Test reports include:

- Timestamp and test duration
- Total login attempts
- Successful/failed login counts
- Detailed issue breakdown
- Issue descriptions and credentials used
- State transition analysis

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

[Add your license information here]

## Acknowledgments

- Appium for UI automation
- Frida for dynamic analysis capabilities
- TestNG for test framework
