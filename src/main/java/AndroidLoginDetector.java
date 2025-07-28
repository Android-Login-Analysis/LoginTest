import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/**
 * AndroidLoginDetector - Automatically detects login-related bugs in Android
 * applications
 * 
 * Strictly follows the workflow described in the paper:
 * 1. Use Monkey to generate event-driven app
 * 2. Detect login pages and credential-related UI input elements
 * 3. Randomly select credentials from the predefined pool as input
 * 4. Record API calls to log
 * 5. Reconstruct state machine transitions using regular expressions
 * 6. Use test prophecy to detect login flow errors
 */
public class AndroidLoginDetector {

    // Core components
    private FridaManager fridaManager;
    private ApiLogAnalyzer apiLogAnalyzer;
    private LoginReportManager reportManager;
    private ConfigLoader configLoader;
    private UIManager uiManager;
    private StateMachineManager stateMachineManager;

    // Application configuration
    private String appPackage;
    private String appActivity;
    private String appPath;
    private String emulatorSnapshot;

    // Credential pools
    private List<String> accountPool;
    private List<String> passwordPool;
    private List<String> googleEmailPool;
    private List<String> googlePasswordPool;
    private List<String> facebookEmailPool;
    private List<String> facebookPasswordPool;

    // Test statistics
    private int totalAttempts = 0;
    private int successfulLogins = 0;
    private int failedLogins = 0;

    // Log record
    private PrintWriter logWriter;
    private String logFilePath;
    private DateTimeFormatter logFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

    public AndroidLoginDetector() {
        initializeLogging();
        initializeComponents();
        loadCredentialPools();
        initializeStateMachine();
    }

    private void initializeLogging() {
        try {
            // Create logs directory
            File logsDir = new File("logs");
            if (!logsDir.exists()) {
                logsDir.mkdirs();
            }

            // Create timestamped log file
            String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
            logFilePath = "logs/android_login_detector_" + timestamp + ".log";
            logWriter = new PrintWriter(new FileWriter(logFilePath, true), true);

            logInfo("=== AndroidLoginDetector Started ===");
            logInfo("Log file: " + logFilePath);
            logInfo("Timestamp: " + LocalDateTime.now().format(logFormatter));

        } catch (IOException e) {
            System.err.println("Failed to initialize logging: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private void logInfo(String message) {
        String timestamp = LocalDateTime.now().format(logFormatter);
        String logMessage = "[" + timestamp + "] [INFO] " + message;
        System.out.println(logMessage);
        if (logWriter != null) {
            logWriter.println(logMessage);
        }
    }

    private void logError(String message) {
        String timestamp = LocalDateTime.now().format(logFormatter);
        String logMessage = "[" + timestamp + "] [ERROR] " + message;
        System.err.println(logMessage);
        if (logWriter != null) {
            logWriter.println(logMessage);
        }
    }

    private void logRoundStart(int roundNumber) {
        String separator = "=".repeat(80);
        logInfo(separator);
        logInfo("ROUND " + roundNumber + " STARTED");
        logInfo("Round timestamp: " + LocalDateTime.now().format(logFormatter));
        logInfo(separator);
    }

    private void logRoundEnd(int roundNumber, long duration) {
        String separator = "-".repeat(80);
        logInfo(separator);
        logInfo("ROUND " + roundNumber + " COMPLETED");
        logInfo("Round duration: " + duration + "ms");
        logInfo("Total attempts: " + totalAttempts);
        logInfo("Successful logins: " + successfulLogins);
        logInfo("Failed logins: " + failedLogins);
        logInfo(separator);
    }

    private void initializeComponents() {
        // Initialize config loader
        configLoader = new ConfigLoader();

        // Initialize UIManager
        uiManager = new UIManager(configLoader);

        // Initialize state machine manager
        stateMachineManager = new StateMachineManager(configLoader);

        // Initialize Frida manager - for recording API calls
        String regexPath = "src/main/resources/regex_patterns.txt";
        String agentPath = "src/main/resources/login_agent.js";
        String logPath = "src/main/resources/frida_api_log.txt";
        String controllerPath = "scripts/frida_controller.py";

        fridaManager = new FridaManager(regexPath, agentPath, logPath, controllerPath, configLoader);

        // Initialize API log analyzer - for reconstructing state machine
        try {
            apiLogAnalyzer = new ApiLogAnalyzer(regexPath);
        } catch (IOException e) {
            logError("Failed to initialize ApiLogAnalyzer: " + e.getMessage());
        }

        // Initialize report manager
        reportManager = new LoginReportManager();

        // Load app config
        loadAppConfig();
    }

    private void loadAppConfig() {
        Properties config = new Properties();
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
            if (input != null) {
                config.load(input);
                appPackage = config.getProperty("app.package", "org.mian.gitnex");
                appActivity = config.getProperty("app.activity", "org.mian.gitnex.activities.MainActivity");
                appPath = config.getProperty("app.path", "apps/org.mian.gitnex_550.apk");
                emulatorSnapshot = config.getProperty("emulator.snapshot", "snap_gitnex_login");
            }
        } catch (Exception e) {
            logError("Failed to load config.properties: " + e.getMessage());
            // Use default values
            appPackage = "org.mian.gitnex";
            appActivity = "org.mian.gitnex.activities.MainActivity";
            appPath = "apps/org.mian.gitnex_550.apk";
            emulatorSnapshot = "snap_gitnex_login";
        }

        logInfo("App configuration loaded:");
        logInfo("  - Package: " + appPackage);
        logInfo("  - Activity: " + appActivity);
        logInfo("  - APK Path: " + appPath);
        logInfo("  - Emulator Snapshot: " + emulatorSnapshot);
    }

    private void loadCredentialPools() {
        String projectRoot = ".";
        accountPool = readLinesFromFile(projectRoot + "/pools/accounts.txt");
        passwordPool = readLinesFromFile(projectRoot + "/pools/passwords.txt");
        googleEmailPool = readLinesFromFile(projectRoot + "/pools/google_accounts.txt");
        googlePasswordPool = readLinesFromFile(projectRoot + "/pools/google_passwords.txt");
        facebookEmailPool = readLinesFromFile(projectRoot + "/pools/facebook_accounts.txt");
        facebookPasswordPool = readLinesFromFile(projectRoot + "/pools/facebook_passwords.txt");

        logInfo("Loaded credential pools:");
        logInfo("  - Standard accounts: " + accountPool.size());
        logInfo("  - Standard passwords: " + passwordPool.size());
        logInfo("  - Google accounts: " + googleEmailPool.size());
        logInfo("  - Google passwords: " + googlePasswordPool.size());
        logInfo("  - Facebook accounts: " + facebookEmailPool.size());
        logInfo("  - Facebook passwords: " + facebookPasswordPool.size());
    }

    private void initializeStateMachine() {
        // Pre-Login Phase
        stateMachineManager.addStateTransition("InitialState", "CheckingToken");
        stateMachineManager.addStateTransition("InitialState", "CredentialInput");
        stateMachineManager.addStateTransition("CheckingToken", "LoggedIn_Via_Token");
        stateMachineManager.addStateTransition("CheckingToken", "CredentialInput");
        stateMachineManager.addStateTransition("CredentialInput", "EncodingCredentials");
        stateMachineManager.addStateTransition("CredentialInput", "CredentialFormatError");
        stateMachineManager.addStateTransition("EncodingCredentials", "Authenticating");
        stateMachineManager.addStateTransition("CredentialFormatError", "CredentialInput");

        // Login Phase
        stateMachineManager.addStateTransition("Authenticating", "CheckingCredentials");
        stateMachineManager.addStateTransition("CheckingCredentials", "ServiceUnavailable_Auth");
        stateMachineManager.addStateTransition("CheckingCredentials", "InvalidCredentials");
        stateMachineManager.addStateTransition("CheckingCredentials", "CheckingMFASettings");
        stateMachineManager.addStateTransition("ServiceUnavailable_Auth", "CredentialInput");
        stateMachineManager.addStateTransition("ServiceUnavailable_Auth", "InitialState");
        stateMachineManager.addStateTransition("InvalidCredentials", "CredentialInput");
        stateMachineManager.addStateTransition("CheckingMFASettings", "MFACodePending");
        stateMachineManager.addStateTransition("CheckingMFASettings", "LoggedIn_NoMFA");

        // MFA Phase
        stateMachineManager.addStateTransition("MFACodePending", "SendingMFACode");
        stateMachineManager.addStateTransition("SendingMFACode", "MFAVerification");
        stateMachineManager.addStateTransition("SendingMFACode", "ServiceUnavailable_MFA_Send");
        stateMachineManager.addStateTransition("ServiceUnavailable_MFA_Send", "MFACodePending");
        stateMachineManager.addStateTransition("MFAVerification", "VerifyingMFA");
        stateMachineManager.addStateTransition("VerifyingMFA", "ServiceUnavailable_MFA_Verify");
        stateMachineManager.addStateTransition("VerifyingMFA", "MFAError");
        stateMachineManager.addStateTransition("VerifyingMFA", "LoggedIn_WithMFA");
        stateMachineManager.addStateTransition("ServiceUnavailable_MFA_Verify", "MFAVerification");
        stateMachineManager.addStateTransition("MFAError", "MFACodePending");

        // Post-Login Phase
        stateMachineManager.addStateTransition("LoggedIn_Via_Token", "AppMainScreen");
        stateMachineManager.addStateTransition("LoggedIn_NoMFA", "AppMainScreen");
        stateMachineManager.addStateTransition("LoggedIn_WithMFA", "AppMainScreen");
        stateMachineManager.addStateTransition("AppMainScreen", "UserLogout");
        stateMachineManager.addStateTransition("AppMainScreen", "InitialState");
        stateMachineManager.addStateTransition("UserLogout", "InitialState");
        stateMachineManager.addStateTransition("UserLogout", "CredentialInput");

        logInfo("Initialized state machine with " + stateMachineManager.getAllStates().size() + " states");
    }

    /**
     * Check Docker environment compatibility
     */
    private boolean checkDockerEnvironment() {
        logInfo("Checking Docker environment compatibility...");

        // Check ADB connection
        if (!checkAdbConnection()) {
            logError("ADB connection failed");
            return false;
        }

        // Check emulator status
        if (!checkEmulatorStatus()) {
            logError("Emulator not ready");
            return false;
        }

        // Check Frida availability
        if (!checkFridaAvailability()) {
            logError("Frida not available");
            return false;
        }

        // Check required files
        if (!checkRequiredFiles()) {
            logError("Required files missing");
            return false;
        }

        logInfo("Docker environment check passed");
        return true;
    }

    private boolean checkAdbConnection() {
        try {
            Process process = Runtime.getRuntime().exec("adb devices");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            boolean deviceFound = false;

            while ((line = reader.readLine()) != null) {
                if (line.contains("device") && !line.contains("List of devices")) {
                    deviceFound = true;
                    logInfo("ADB device found: " + line.trim());
                }
            }
            reader.close();
            process.waitFor();

            return deviceFound;
        } catch (Exception e) {
            logError("ADB check failed: " + e.getMessage());
            return false;
        }
    }

    private boolean checkEmulatorStatus() {
        try {
            Process process = Runtime.getRuntime().exec("adb shell getprop ro.build.version.release");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line = reader.readLine();
            reader.close();
            process.waitFor();

            if (line != null && !line.trim().isEmpty()) {
                logInfo("Emulator Android version: " + line.trim());
                return true;
            }
            return false;
        } catch (Exception e) {
            logError("Emulator check failed: " + e.getMessage());
            return false;
        }
    }

    private boolean checkFridaAvailability() {
        try {
            Process process = Runtime.getRuntime().exec("frida --version");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line = reader.readLine();
            reader.close();
            process.waitFor();

            if (line != null && !line.trim().isEmpty()) {
                logInfo("Frida version: " + line.trim());
                return true;
            }
            return false;
        } catch (Exception e) {
            logError("Frida check failed: " + e.getMessage());
            return false;
        }
    }

    private boolean checkRequiredFiles() {
        String[] requiredFiles = {
                "src/main/resources/regex_patterns.txt",
                "src/main/resources/login_agent.js",
                "scripts/frida_controller.py",
                "resources/frida-server"
        };

        for (String file : requiredFiles) {
            if (!new File(file).exists()) {
                logError("Required file missing: " + file);
                return false;
            }
        }

        logInfo("All required files found");
        return true;
    }

    /**
     * Start Frida monitoring - for recording API calls
     */
    public void startFridaMonitoring() {
        if (appPackage != null && !appPackage.isEmpty()) {
            fridaManager.startFrida(appPackage);
            logInfo("Frida monitoring started for package: " + appPackage);
        } else {
            logError("App package is null, Frida not started");
        }
    }

    /**
     * Run login detection test - strictly follows the workflow described in the
     * paper
     */
    public void runLoginDetectionTest() {
        // Validate configuration
        if (!configLoader.validateConfigs()) {
            logError("Configuration validation failed, test terminated");
            return;
        }

        // Print config summary
        configLoader.printConfigSummary();

        long testStartTime = System.currentTimeMillis();
        int testRounds = configLoader.getTestRounds(); // Get test rounds from config

        logInfo("=== Starting AndroidLoginDetector Test ===");
        logInfo("Target app: " + appPackage);
        logInfo("Test rounds: " + testRounds);

        // Check Docker environment
        if (!checkDockerEnvironment()) {
            logError("Docker environment check failed, aborting test");
            return;
        }

        // Start UI manager
        if (!uiManager.startUI()) {
            logError("UI manager startup failed, aborting test");
            return;
        }

        try {
            // Clean up logs
            Runtime.getRuntime().exec("adb logcat -c");
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Use configured number of rounds
        for (int round = 1; round <= testRounds; round++) {
            long roundStartTime = System.currentTimeMillis();

            logRoundStart(round);
            totalAttempts++;

            // Step 1: Restart emulator from snapshot
            restartEmulatorSnapshot();

            // Step 2: Start Frida monitoring API calls
            startFridaMonitoring();

            // Step 3: Start UI automation
            // UI manager is already initialized in constructor

            // Step 4: Detect login page
            boolean loginPageDetected = detectLoginPageWithUI();

            if (loginPageDetected) {
                // Step 5: Select appropriate credentials based on login type
                String username = selectCredentials();
                String password = selectPassword();

                // Step 6: Input credentials and monitor login process
                boolean loginSuccess = inputCredentialsWithUI(username, password);

                if (loginSuccess) {
                    logInfo("Login process completed successfully");
                    successfulLogins++;
                } else {
                    logError("Login process failed");
                    failedLogins++;
                }
            } else {
                logInfo("No login page detected, starting Monkey exploration");
                startMonkeyWithUIMonitoring();
            }

            // Step 7: Analyze API logs and validate state machine
            analyzeApiLogsAndValidateStateMachine();

            // Step 8: Check for crashes and ANRs
            checkCrashAndAnrLogs();

            // Step 9: Stop Frida monitoring
            stopFridaMonitoring();

            long roundDuration = System.currentTimeMillis() - roundStartTime;
            logRoundEnd(round, roundDuration);

            // Wait for a while before starting the next round
            if (round < testRounds) {
                try {
                    TimeUnit.SECONDS.sleep(configLoader.getTestRoundInterval());
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }
        }

        // Generate final report
        generateFinalReport();

        // Close Appium connection
        uiManager.close();
    }

    /**
     * Step 2: Use Monkey to generate events-driven app
     */
    private void startMonkey() {
        try {
            logInfo("Starting Monkey to generate events...");
            String monkeyCommand = String.format(
                    "adb shell monkey -p %s -v --throttle %d " +
                            "--pct-touch %d --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 " +
                            "--pct-nav 0 --pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 %d",
                    appPackage,
                    configLoader.getMonkeyThrottle(),
                    configLoader.getMonkeyTouchPercentage(),
                    configLoader.getMonkeyEvents());
            Runtime.getRuntime().exec(monkeyCommand);
            logInfo("Monkey command executed: " + monkeyCommand);
        } catch (Exception e) {
            logError("Error starting Monkey: " + e.getMessage());
        }
    }

    private void stopMonkey() {
        try {
            Runtime.getRuntime().exec("adb shell pkill -f monkey");
            logInfo("Monkey stopped");
        } catch (Exception e) {
            // Ignore
        }
    }

    /**
     * Detect login page using UI manager
     */
    private boolean detectLoginPage() {
        // This method has been replaced by detectLoginPageWithUI()
        // Keep this method to avoid breaking existing calls
        return detectLoginPageWithUI();
    }

    /**
     * Input credentials using UI manager
     */
    private void inputCredentials(String username, String password) {
        // This method has been replaced by inputCredentialsWithUI()
        // Keep this method to avoid breaking existing calls
        inputCredentialsWithUI(username, password);
    }

    /**
     * Step 5: Restart emulator from snapshot
     */
    private void restartEmulatorSnapshot() {
        try {
            logInfo("Restarting emulator snapshot: " + emulatorSnapshot);
            Runtime.getRuntime().exec("adb emu avd snapshot load " + emulatorSnapshot);
            TimeUnit.SECONDS.sleep(configLoader.getTestSnapshotWait());
            logInfo("Emulator snapshot restored");
        } catch (Exception e) {
            logError("Error restarting emulator snapshot: " + e.getMessage());
        }
    }

    /**
     * Step 6: Analyze API logs and rebuild state machine
     */
    private void analyzeApiLogs() {
        // This method has been replaced by analyzeApiLogsAndValidateStateMachine()
        // Keep this method to avoid breaking existing calls
        analyzeApiLogsAndValidateStateMachine();
    }

    /**
     * Step 7: Check crash and ANR logs
     */
    private void checkCrashAndAnrLogs() {
        try {
            Process process = Runtime.getRuntime().exec("adb logcat -d -e \"FATAL EXCEPTION\" -e \"ANR in\"");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            boolean crashDetected = false;
            boolean anrDetected = false;

            while ((line = reader.readLine()) != null) {
                if (line.contains("FATAL EXCEPTION")) {
                    logError("LOGIN BUG DETECTED: Crash detected: " + line);
                    crashDetected = true;
                }
                if (line.contains("ANR in") && line.contains(appPackage)) {
                    logError("LOGIN BUG DETECTED: ANR detected: " + line);
                    anrDetected = true;
                }
            }

            if (crashDetected) {
                reportManager.reportCrash("Crash detected in logcat", "Current credentials");
            }
            if (anrDetected) {
                reportManager.reportANR("ANR detected in logcat", "Current credentials");
            }

            reader.close();
            process.waitFor();
        } catch (Exception e) {
            logError("Error checking crash/ANR logs: " + e.getMessage());
        }
    }

    private void restartFridaMonitoring() {
        try {
            fridaManager.stopFrida();
            TimeUnit.SECONDS.sleep(1);
            fridaManager.startFrida(appPackage);
        } catch (Exception e) {
            logError("Error restarting Frida: " + e.getMessage());
        }
    }

    private void generateFinalReport() {
        logInfo("=== Test Execution Summary ===");
        logInfo("Total Login Attempts: " + totalAttempts);
        logInfo("Successful Logins: " + successfulLogins);
        logInfo("Failed Logins: " + failedLogins);
        logInfo("Success Rate: " + (totalAttempts > 0 ? (successfulLogins * 100.0 / totalAttempts) : 0) + "%");

        // Write report
        reportManager.writeTestSummary(totalAttempts, successfulLogins, failedLogins);
        logInfo("Detailed report written to: " + reportManager.getReportFilePath());
    }

    // Helper methods
    private String getRandomAccount() {
        if (!accountPool.isEmpty()) {
            return accountPool.get(new Random().nextInt(accountPool.size()));
        }
        return "testuser@example.com";
    }

    private String getRandomPassword() {
        if (!passwordPool.isEmpty()) {
            return passwordPool.get(new Random().nextInt(passwordPool.size()));
        }
        return "testpass123";
    }

    private List<String> readLinesFromFile(String filePath) {
        List<String> lines = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                lines.add(line.trim());
            }
        } catch (IOException e) {
            logError("Error reading file " + filePath + ": " + e.getMessage());
        }
        return lines;
    }

    /**
     * Clean up resources
     */
    public void cleanup() {
        stopMonkey();
        if (fridaManager != null) {
            fridaManager.stopFrida();
        }
        if (logWriter != null) {
            logWriter.close();
        }
        logInfo("AndroidLoginDetector cleanup completed");
    }

    /**
     * Main method - program entry point
     */
    public static void main(String[] args) {
        AndroidLoginDetector detector = new AndroidLoginDetector();

        try {
            detector.startFridaMonitoring();
            detector.runLoginDetectionTest();
        } catch (Exception e) {
            System.err.println("Error during test execution: " + e.getMessage());
            e.printStackTrace();
        } finally {
            detector.cleanup();
        }
    }

    /**
     * Use UI manager to detect login page
     */
    private boolean detectLoginPageWithUI() {
        try {
            logInfo("Using UI manager to detect login page...");
            boolean isLoginPage = uiManager.detectLoginPage();

            if (isLoginPage) {
                logInfo("UI manager detected login page");
                logInfo("  - Google login: " + uiManager.isGoogleLoginDetected());
                logInfo("  - Facebook login: " + uiManager.isFacebookLoginDetected());
                logInfo("  - Username field: " + uiManager.isUsernameFieldDetected());
                logInfo("  - Password field: " + uiManager.isPasswordFieldDetected());
            } else {
                logInfo("UI manager did not detect login page");
            }

            return isLoginPage;
        } catch (Exception e) {
            logError("UI manager login page detection failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * 根据检测到的登录类型选择用户名
     */
    private String selectCredentials() {
        String username;

        if (uiManager.isGoogleLoginDetected()) {
            username = getRandomGoogleAccount();
            logInfo("Google login detected, using Google account: " + username);
        } else if (uiManager.isFacebookLoginDetected()) {
            username = getRandomFacebookAccount();
            logInfo("Facebook login detected, using Facebook account: " + username);
        } else {
            username = getRandomAccount();
            logInfo("Using standard account: " + username);
        }

        return username;
    }

    /**
     * 根据检测到的登录类型选择密码
     */
    private String selectPassword() {
        String password;

        if (uiManager.isGoogleLoginDetected()) {
            password = getRandomGooglePassword();
            logInfo("Google login detected, using Google password: " + password);
        } else if (uiManager.isFacebookLoginDetected()) {
            password = getRandomFacebookPassword();
            logInfo("Facebook login detected, using Facebook password: " + password);
        } else {
            password = getRandomPassword();
            logInfo("Using standard password: " + password);
        }

        return password;
    }

    /**
     * Use UI manager to input credentials
     */
    private boolean inputCredentialsWithUI(String username, String password) {
        try {
            logInfo("Using UI manager to input credentials...");
            boolean success = uiManager.inputCredentials(username, password);

            if (success) {
                logInfo("UI manager credentials input successful");
            } else {
                logInfo("UI manager credentials input failed");
            }

            return success;
        } catch (Exception e) {
            logError("UI manager credentials input failed: " + e.getMessage());
            return false;
        }
    }

    /**
     * 检查登录超时
     */
    private void checkLoginTimeout() {
        try {
            long loginDuration = uiManager.getLoginDuration();
            int timeoutThreshold = configLoader.getLoginTimeoutSeconds() * 1000; // 转换为毫秒

            if (loginDuration > 0) {
                logInfo("Login duration: " + loginDuration + "ms");

                if (loginDuration > timeoutThreshold) {
                    logError("LOGIN BUG DETECTED: Login timeout");
                    reportManager.reportLoginTimeout(loginDuration, "Current credentials");
                }
            } else {
                logInfo("Unable to get login duration");
            }
        } catch (Exception e) {
            logError("Failed to check login timeout: " + e.getMessage());
        }
    }

    /**
     * 启动Monkey并监控UI元素
     */
    private void startMonkeyWithUIMonitoring() {
        try {
            logInfo("Starting Monkey and monitoring UI elements...");

            // Start Monkey
            startMonkey();

            // Monitor UI elements during Monkey execution
            int monitoringInterval = configLoader.getDetectionApiInterval() * 1000; // 转换为毫秒
            long totalMonitoringTime = configLoader.getTestDuration(); // 毫秒

            long startTime = System.currentTimeMillis();
            while (System.currentTimeMillis() - startTime < totalMonitoringTime) {
                uiManager.monitorUIElements();

                // If login elements are detected, stop Monkey
                if (uiManager.isUsernameFieldDetected() || uiManager.isPasswordFieldDetected() ||
                        uiManager.isGoogleLoginDetected() || uiManager.isFacebookLoginDetected()) {
                    logInfo("Monkey exploration detected login elements, stopping exploration");
                    break;
                }

                try {
                    Thread.sleep(monitoringInterval);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }

        } catch (Exception e) {
            logError("Monkey UI monitoring failed: " + e.getMessage());
        }
    }

    /**
     * Analyze API logs and validate state machine
     */
    private void analyzeApiLogsAndValidateStateMachine() {
        try {
            logInfo("Analyzing API logs and validating state machine...");

            // Reset state sequence
            stateMachineManager.resetStateSequence();

            String logFilePath = "src/main/resources/frida_api_log.txt";
            if (apiLogAnalyzer != null) {
                apiLogAnalyzer.parseLogFile(logFilePath);

                List<ApiLogAnalyzer.ApiCallEntry> calls = apiLogAnalyzer.getApiCallLog();
                if (!calls.isEmpty()) {
                    logInfo("Captured " + calls.size() + " API calls");

                    // Analyze each API call and determine state
                    for (ApiLogAnalyzer.ApiCallEntry call : calls) {
                        String state = stateMachineManager.determineStateFromApiCall(call.methodName,
                                call.getMethodSignature());
                        stateMachineManager.addObservedState(state);

                        logInfo("API call: " + call.methodName + " -> State: " + state);
                    }

                    // Validate state transitions
                    List<String> navigationErrors = stateMachineManager.validateStateTransitions();
                    if (!navigationErrors.isEmpty()) {
                        logError("LOGIN BUG DETECTED: Navigation flow error");
                        for (String error : navigationErrors) {
                            logError("  - " + error);
                            reportManager.reportNavigationFlowError(error,
                                    String.join(" -> ", stateMachineManager.getObservedStateSequence()),
                                    "Current credentials");
                        }
                    } else {
                        logInfo("State machine validation passed");
                    }
                } else {
                    logInfo("No API calls captured");
                }
            } else {
                logInfo("ApiLogAnalyzer not initialized, skipping API log analysis");
            }
        } catch (IOException e) {
            logError("API log analysis failed: " + e.getMessage());
        }
    }

    /**
     * Stop Frida monitoring
     */
    private void stopFridaMonitoring() {
        try {
            logInfo("Stopping Frida monitoring...");
            fridaManager.stopFrida();
            logInfo("Frida monitoring stopped");
        } catch (Exception e) {
            logError("Failed to stop Frida monitoring: " + e.getMessage());
        }
    }

    /**
     * Get random Google account
     */
    private String getRandomGoogleAccount() {
        if (!googleEmailPool.isEmpty()) {
            return googleEmailPool.get(new Random().nextInt(googleEmailPool.size()));
        }
        return "testuser@gmail.com";
    }

    private String getRandomGooglePassword() {
        if (!googlePasswordPool.isEmpty()) {
            return googlePasswordPool.get(new Random().nextInt(googlePasswordPool.size()));
        }
        return "googlepass123";
    }

    private String getRandomFacebookAccount() {
        if (!facebookEmailPool.isEmpty()) {
            return facebookEmailPool.get(new Random().nextInt(facebookEmailPool.size()));
        }
        return "testuser@facebook.com";
    }

    private String getRandomFacebookPassword() {
        if (!facebookPasswordPool.isEmpty()) {
            return facebookPasswordPool.get(new Random().nextInt(facebookPasswordPool.size()));
        }
        return "facebookpass123";
    }
}