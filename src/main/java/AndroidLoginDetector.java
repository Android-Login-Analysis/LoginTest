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
 * AndroidLoginDetector - Automatically detects login-related bugs in Android applications
 * 
 * Enhanced workflow with static analysis:
 * 1. Perform static analysis on APK to identify target methods
 * 2. Use Monkey to generate event-driven app
 * 3. Detect login pages and credential-related UI input elements
 * 4. Randomly select credentials from the predefined pool as input
 * 5. Use Frida with static analysis results for efficient hooking
 * 6. Record API calls to log
 * 7. Reconstruct state machine transitions using regular expressions
 * 8. Use test prophecy to detect login flow errors
 */
public class AndroidLoginDetector {

    // Core components
    private FridaManager fridaManager;
    private ApiLogAnalyzer apiLogAnalyzer;
    private LoginReportManager reportManager;
    private ConfigLoader configLoader;
    private UIManager uiManager;
    private StateMachineManager stateMachineManager;
    private StaticAnalyzer staticAnalyzer;

    // Application configuration
    private String appPackage;
    private String appActivity;
    private String appPath;
    private String emulatorSnapshot;
    private String staticAnalysisResultPath;

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

    /**
     * Stepwise Monkey exploration: run 1 event per command and check login after each step
     */
    private void exploreStepwiseWithMonkeyAndDetectLogin() {
        int totalEvents = configLoader.getMonkeyEvents();
        int throttle = configLoader.getMonkeyThrottle();
        int touchPct = configLoader.getMonkeyTouchPercentage();
        final int shotInterval = Math.max(1, configLoader.getMonkeyScreenshotInterval());
        for (int i = 1; i <= totalEvents; i++) {
            try {
                String cmd = String.format(
                        "adb shell monkey -p %s -v --throttle %d " +
                                "--pct-touch %d --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 " +
                                "--pct-nav 0 --pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 1",
                        appPackage, throttle, touchPct);
                Process proc = Runtime.getRuntime().exec(cmd);
                // Wait for this single event to complete
                proc.waitFor();

                if (i % shotInterval == 0) {
                    captureScreenshotForStep(i);
                }

                // Optional small delay to allow UI to settle
                try {
                    Thread.sleep(Math.max(50, throttle));
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                }

                // Fast path: if focus is already on a login field, we consider it a strong hint
                boolean focusedLogin = uiManager.checkFocusedLoginField();
                if (focusedLogin) {
                    logInfo("Focused login field detected after step " + i);
                    // Also run full detection for confirmation
                    if (uiManager.detectLoginPage()) {
                        logInfo("Login page confirmed after step " + i);
                        createBaselineSnapshotIfNeeded();
                        break;
                    }
                }

                // Full detection after each step (KISS, per request)
                if (uiManager.detectLoginPage()) {
                    logInfo("Login page detected after step " + i);
                    createBaselineSnapshotIfNeeded();
                    break;
                }
            } catch (Exception e) {
                logError("Stepwise Monkey error at step " + i + ": " + e.getMessage());
            }
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
        // Restore emulator snapshot if baseline exists and append Frida round marker
        restoreBaselineSnapshotIfExists();
        appendRoundMarker(roundNumber);
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
        // Check ANR/Crash after each round and report
        checkCrashAndAnrLogs();
    }

    // --- Round helpers ---

    private static final String BASELINE_SNAPSHOT_NAME = "login_baseline";

    private void appendRoundMarker(int roundNumber) {
        try {
            File logsDir = new File("logs");
            if (!logsDir.exists()) logsDir.mkdirs();
            File apiLog = new File(logsDir, "frida_api_log.txt");
            try (FileWriter fw = new FileWriter(apiLog, true)) {
                String marker = String.format("==== ROUND %d START | %s ====%n", roundNumber,
                        LocalDateTime.now().format(logFormatter));
                fw.write(marker);
            }
            logInfo("Appended Frida round marker for round " + roundNumber);
        } catch (IOException e) {
            logError("Failed to append round marker: " + e.getMessage());
        }
    }

    private void restoreBaselineSnapshotIfExists() {
        try {
            // List snapshots and check existence
            Process list = Runtime.getRuntime().exec("adb emu avd snapshot list");
            BufferedReader br = new BufferedReader(new InputStreamReader(list.getInputStream()));
            String line; boolean exists = false;
            while ((line = br.readLine()) != null) {
                if (line.contains(BASELINE_SNAPSHOT_NAME)) { exists = true; break; }
            }
            br.close();
            list.waitFor();
            if (!exists) {
                logInfo("Baseline snapshot not found. Skipping restore.");
                return;
            }
            // Restore snapshot
            logInfo("Restoring baseline snapshot: " + BASELINE_SNAPSHOT_NAME);
            Process load = Runtime.getRuntime().exec("adb emu avd snapshot load " + BASELINE_SNAPSHOT_NAME);
            load.waitFor();
            // Give emulator some time to settle
            TimeUnit.SECONDS.sleep(2);
        } catch (Exception e) {
            logError("Failed to restore baseline snapshot: " + e.getMessage());
        }
    }

    private void createBaselineSnapshotIfNeeded() {
        try {
            // Check if snapshot already exists
            Process list = Runtime.getRuntime().exec("adb emu avd snapshot list");
            BufferedReader br = new BufferedReader(new InputStreamReader(list.getInputStream()));
            String line; boolean exists = false;
            while ((line = br.readLine()) != null) {
                if (line.contains(BASELINE_SNAPSHOT_NAME)) { exists = true; break; }
            }
            br.close();
            list.waitFor();
            if (exists) {
                return; // already created
            }
            // Create snapshot
            logInfo("Creating baseline snapshot: " + BASELINE_SNAPSHOT_NAME);
            Process save = Runtime.getRuntime().exec("adb emu avd snapshot save " + BASELINE_SNAPSHOT_NAME);
            save.waitFor();
            TimeUnit.SECONDS.sleep(1);
        } catch (Exception e) {
            logError("Failed to create baseline snapshot: " + e.getMessage());
        }
    }

    private void initializeComponents() {
        // Initialize config loader
        configLoader = new ConfigLoader();

        // Initialize UIManager
        uiManager = new UIManager(configLoader);

        // Initialize state machine manager
        stateMachineManager = new StateMachineManager(configLoader);

        // Load app config
        loadAppConfig();

        // Initialize static analyzer
        initializeStaticAnalyzer();

        // Initialize Frida manager with static analysis results
        initializeFridaManager();

        // Initialize API log analyzer
        try {
            String regexPath = "src/main/resources/regex_patterns.txt";
            apiLogAnalyzer = new ApiLogAnalyzer(regexPath);
        } catch (IOException e) {
            logError("Failed to initialize ApiLogAnalyzer: " + e.getMessage());
        }

        // Initialize report manager
        reportManager = new LoginReportManager();
    }

    private void loadAppConfig() {
        Properties config = new Properties();
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
            if (input != null) {
                config.load(input);
                appPackage = config.getProperty("app.package", "com.kickstarter.kickstarter");
                appActivity = config.getProperty("app.activity", "com.kickstarter.ui.activities.DiscoveryActivity");
                appPath = config.getProperty("app.path", "apps/Kickstarter_3.24.1_apkcombo.com.apk");
                emulatorSnapshot = config.getProperty("emulator.snapshot", "snap_kickstarter_login");
            }
        } catch (Exception e) {
            logError("Failed to load config.properties: " + e.getMessage());
            // Use default values
            appPackage = "com.kickstarter.kickstarter";
            appActivity = "com.kickstarter.ui.activities.DiscoveryActivity";
            appPath = "apps/Kickstarter_3.24.1_apkcombo.com.apk";
            emulatorSnapshot = "snap_kickstarter_login";
        }

        logInfo("App configuration loaded:");
        logInfo("  - Package: " + appPackage);
        logInfo("  - Activity: " + appActivity);
        logInfo("  - APK Path: " + appPath);
        logInfo("  - Emulator Snapshot: " + emulatorSnapshot);
    }

    private void initializeStaticAnalyzer() {
        try {
            logInfo("Initializing static analyzer...");
            
            String patternsPath = "src/main/resources/regex_patterns.txt";
            // Use deterministic result path based on APK file name to avoid ambiguity
            staticAnalysisResultPath = getStaticAnalysisResultPathForApk(appPath);
            
            // Create output directory
            File outputDir = new File(new File(staticAnalysisResultPath).getParent());
            if (!outputDir.exists()) {
                outputDir.mkdirs();
            }
            
            // Perform static analysis if result file doesn't exist or is outdated
            File resultFile = new File(staticAnalysisResultPath);
            File apkFile = new File(appPath);
            
            if (!resultFile.exists() || resultFile.lastModified() < apkFile.lastModified()) {
                logInfo("Static analysis required - performing analysis...");
                staticAnalyzer = new StaticAnalyzer(appPath, patternsPath, staticAnalysisResultPath);
                staticAnalyzer.analyze();
                logInfo("Static analysis completed and saved to: " + staticAnalysisResultPath);
            } else {
                logInfo("Static analysis result found and up-to-date: " + staticAnalysisResultPath);
            }
                
        } catch (Exception e) {
            logError("Failed to initialize static analyzer: " + e.getMessage());
            throw new RuntimeException("Static analyzer initialization failed", e);
        }
    }

    /**
     * Build deterministic static analysis result path from APK path.
     * Example: apps/foo/bar/MyApp.apk -> reports/static_analysis/MyApp.json
     */
    private String getStaticAnalysisResultPathForApk(String apkPath) {
        try {
            File apk = new File(apkPath);
            String name = apk.getName();
            int dot = name.lastIndexOf('.');
            String base = (dot > 0) ? name.substring(0, dot) : name;
            File dir = new File("reports/static_analysis");
            if (!dir.exists()) {
                dir.mkdirs();
            }
            return new File(dir, base + ".json").getPath();
        } catch (Exception e) {
            // Fallback to previous default if anything goes wrong
            return "reports/static_analysis_result.json";
        }
    }

    private void initializeFridaManager() {
        try {
            logInfo("Initializing Frida manager with static analysis results...");
            
            String regexPath = "src/main/resources/regex_patterns.txt";
            String agentPath = "src/main/resources/login_agent.js";
            String logPath = "logs/frida_api_log.txt";
            String controllerPath = "scripts/frida_controller.py";

            // Initialize Frida manager with static analysis results
            fridaManager = new FridaManager(regexPath, agentPath, logPath, controllerPath, configLoader);
            
            // Pass static analysis results to Frida manager for efficient hooking
            if (staticAnalysisResultPath != null && new File(staticAnalysisResultPath).exists()) {
                fridaManager.setStaticAnalysisResults(staticAnalysisResultPath);
                logInfo("Frida manager configured with static analysis results");
            } else {
                logError("Static analysis results not found, Frida will use default hooking");
            }
            
        } catch (Exception e) {
            logError("Failed to initialize Frida manager: " + e.getMessage());
            throw new RuntimeException("Frida manager initialization failed", e);
        }
    }

    private void loadCredentialPools() {
        // Determine the credential directory under pools/
        // Priority:
        // 1) pools/<appPackage>
        // 2) pools/<appPackage>_*
        // 3) fallback to global pools/ files
        java.io.File poolsDir = new java.io.File("pools");
        java.io.File credDir = new java.io.File(poolsDir, appPackage);

        if (!credDir.isDirectory()) {
            java.io.File[] candidates = poolsDir.listFiles(new java.io.FileFilter() {
                @Override
                public boolean accept(java.io.File f) {
                    return f.isDirectory() && f.getName().startsWith(appPackage + "_");
                }
            });
            if (candidates != null && candidates.length > 0) {
                java.util.Arrays.sort(candidates, new java.util.Comparator<java.io.File>() {
                    @Override
                    public int compare(java.io.File a, java.io.File b) {
                        // Prefer lexicographically larger suffix (often higher version)
                        return b.getName().compareTo(a.getName());
                    }
                });
                credDir = candidates[0];
                logInfo("Using credential pool directory: " + credDir.getPath());
            } else {
                logInfo("No per-app credential directory found for '" + appPackage + "', will use global pools if available");
            }
        } else {
            logInfo("Using credential pool directory: " + credDir.getPath());
        }

        // Primary paths (from selected directory)
        String primaryAccounts = new java.io.File(credDir, "accounts.txt").getPath();
        String primaryPasswords = new java.io.File(credDir, "passwords.txt").getPath();
        String primaryGoogleAccounts = new java.io.File(credDir, "google_accounts.txt").getPath();
        String primaryGooglePasswords = new java.io.File(credDir, "google_passwords.txt").getPath();
        String primaryFacebookAccounts = new java.io.File(credDir, "facebook_accounts.txt").getPath();
        String primaryFacebookPasswords = new java.io.File(credDir, "facebook_passwords.txt").getPath();

        // Global fallbacks
        String globalAccounts = new java.io.File(poolsDir, "accounts.txt").getPath();
        String globalPasswords = new java.io.File(poolsDir, "passwords.txt").getPath();
        String globalGoogleAccounts = new java.io.File(poolsDir, "google_accounts.txt").getPath();
        String globalGooglePasswords = new java.io.File(poolsDir, "google_passwords.txt").getPath();
        String globalFacebookAccounts = new java.io.File(poolsDir, "facebook_accounts.txt").getPath();
        String globalFacebookPasswords = new java.io.File(poolsDir, "facebook_passwords.txt").getPath();

        // Read with graceful fallback to global files
        java.util.List<String> tmp;

        tmp = readLinesFromFile(primaryAccounts);
        if (tmp == null || tmp.isEmpty()) tmp = readLinesFromFile(globalAccounts);
        accountPool = (tmp != null) ? tmp : new java.util.ArrayList<>();

        tmp = readLinesFromFile(primaryPasswords);
        if (tmp == null || tmp.isEmpty()) tmp = readLinesFromFile(globalPasswords);
        passwordPool = (tmp != null) ? tmp : new java.util.ArrayList<>();

        tmp = readLinesFromFile(primaryGoogleAccounts);
        if (tmp == null || tmp.isEmpty()) tmp = readLinesFromFile(globalGoogleAccounts);
        googleEmailPool = (tmp != null) ? tmp : new java.util.ArrayList<>();

        tmp = readLinesFromFile(primaryGooglePasswords);
        if (tmp == null || tmp.isEmpty()) tmp = readLinesFromFile(globalGooglePasswords);
        googlePasswordPool = (tmp != null) ? tmp : new java.util.ArrayList<>();

        tmp = readLinesFromFile(primaryFacebookAccounts);
        if (tmp == null || tmp.isEmpty()) tmp = readLinesFromFile(globalFacebookAccounts);
        facebookEmailPool = (tmp != null) ? tmp : new java.util.ArrayList<>();

        tmp = readLinesFromFile(primaryFacebookPasswords);
        if (tmp == null || tmp.isEmpty()) tmp = readLinesFromFile(globalFacebookPasswords);
        facebookPasswordPool = (tmp != null) ? tmp : new java.util.ArrayList<>();

        logInfo("Loaded credential pools:");
        logInfo("  - Standard accounts: " + accountPool.size());
        logInfo("  - Standard passwords: " + passwordPool.size());
        logInfo("  - Google accounts: " + googleEmailPool.size());
        logInfo("  - Google passwords: " + googlePasswordPool.size());
        logInfo("  - Facebook accounts: " + facebookEmailPool.size());
        logInfo("  - Facebook passwords: " + facebookPasswordPool.size());
    }

    private void initializeStateMachine() {
        // State machine is now initialized automatically by StateMachineManager
        // from regex_patterns.txt file during construction
        logInfo("State machine initialized with " + stateMachineManager.getAllStates().size() + " states");
        
        // Print state machine information for debugging
        stateMachineManager.printStateMachine();
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
     * Start Frida monitoring with static analysis results
     */
    public void startFridaMonitoring() {
        if (appPackage != null && !appPackage.isEmpty()) {
            logInfo("Starting Frida monitoring with static analysis results for package: " + appPackage);
            fridaManager.startFrida(appPackage);
            logInfo("Frida monitoring started successfully");
        } else {
            logError("App package is null, Frida not started");
        }
    }

    /**
     * Run login detection test - enhanced workflow with static analysis
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
        int testRounds = configLoader.getTestRounds();

        logInfo("=== Starting AndroidLoginDetector Test with Static Analysis ===");
        logInfo("Target app: " + appPackage);
        logInfo("Test rounds: " + testRounds);
        logInfo("Static analysis results: " + staticAnalysisResultPath);

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

            // Step 2: Start Frida monitoring with static analysis results
            startFridaMonitoring();

            // Step 3: Start UI automation
            // UI manager is already initialized in constructor

            // Step 4: Detect login page using UI manager
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
                logInfo("No login page detected, starting stepwise Monkey exploration with per-step detection");
                exploreStepwiseWithMonkeyAndDetectLogin();
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
        return detectLoginPageWithUI();
    }

    /**
     * Input credentials using UI manager
     */
    private void inputCredentials(String username, String password) {
        inputCredentialsWithUI(username, password);
    }

    /**
     * Step 5: Restart emulator from snapshot
     */
    private void restartEmulatorSnapshot() {
        try {
            logInfo("Restarting emulator snapshot: " + emulatorSnapshot);
            
            // Check if snapshot exists
            Process checkProcess = Runtime.getRuntime().exec("adb emu avd snapshot list");
            BufferedReader reader = new BufferedReader(new InputStreamReader(checkProcess.getInputStream()));
            String line;
            boolean snapshotExists = false;
            
            while ((line = reader.readLine()) != null) {
                if (line.contains(emulatorSnapshot)) {
                    snapshotExists = true;
                    break;
                }
            }
            reader.close();
            checkProcess.waitFor();
            
            if (snapshotExists) {
                // Load existing snapshot
                Runtime.getRuntime().exec("adb emu avd snapshot load " + emulatorSnapshot);
                logInfo("Emulator snapshot restored from existing snapshot");
            } else {
                // Create new snapshot if it doesn't exist
                logInfo("Snapshot '" + emulatorSnapshot + "' not found, creating new snapshot...");
                
                // Wait for emulator to be ready
                TimeUnit.SECONDS.sleep(5);
                
                // Create snapshot
                Process createProcess = Runtime.getRuntime().exec("adb emu avd snapshot save " + emulatorSnapshot);
                createProcess.waitFor();
                
                if (createProcess.exitValue() == 0) {
                    logInfo("New snapshot '" + emulatorSnapshot + "' created successfully");
                } else {
                    logError("Failed to create snapshot '" + emulatorSnapshot + "'");
                    // Continue without snapshot
                }
            }
            
            TimeUnit.SECONDS.sleep(configLoader.getTestSnapshotWait());
            logInfo("Emulator snapshot operation completed");
            
        } catch (Exception e) {
            logError("Error with emulator snapshot: " + e.getMessage());
            // Continue without snapshot
        }
    }

    /**
     * Step 6: Analyze API logs and rebuild state machine
     */
    private void analyzeApiLogs() {
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
                // Create baseline snapshot once when first login page is detected
                createBaselineSnapshotIfNeeded();
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
     * Select username based on detected login type
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
     * Select password based on detected login type
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
     * Check login timeout
     */
    private void checkLoginTimeout() {
        try {
            long loginDuration = uiManager.getLoginDuration();
            int timeoutThreshold = configLoader.getLoginTimeoutSeconds() * 1000; // Convert to milliseconds

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
     * Start Monkey and monitor UI elements (exploration-first, even if login not yet detected)
     */
    private void startMonkeyWithUIMonitoring() {
        try {
            logInfo("Starting Monkey and monitoring focused elements...");

            // Start Monkey in background (always allow exploration)
            Process monkeyProcess = startMonkeyWithProcess();
            if (monkeyProcess == null) {
                logError("Failed to start Monkey process");
                return;
            }

            // Monitor focused elements during Monkey execution
            int monitoringInterval = configLoader.getDetectionApiInterval() * 1000; // ms
            long totalMonitoringTime = configLoader.getTestDuration(); // ms

            long startTime = System.currentTimeMillis();
            boolean monkeyCompleted = false;

            while (System.currentTimeMillis() - startTime < totalMonitoringTime && !monkeyCompleted) {
                // Check if Monkey process is still running
                try {
                    int exitCode = monkeyProcess.exitValue();
                    logInfo("Monkey process completed with exit code: " + exitCode);
                    monkeyCompleted = true;
                    break;
                } catch (IllegalThreadStateException e) {
                    // Process is still running
                }

                // If we reach a login-focused field, stop exploration early
                boolean loginFieldFocused = uiManager.checkFocusedLoginField();
                if (loginFieldFocused) {
                    logInfo("Monkey focused on login field, stopping exploration");
                    stopMonkey();
                    break;
                }

                try {
                    Thread.sleep(monitoringInterval);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }

            // If Monkey is still running after timeout, stop it
            if (!monkeyCompleted) {
                logInfo("Monkey monitoring timeout reached, stopping Monkey");
                stopMonkey();
            }
        } catch (Exception e) {
            logError("Monkey UI monitoring failed: " + e.getMessage());
            stopMonkey();
        }
    }

    private Process startMonkeyWithProcess() {
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
            
            Process process = Runtime.getRuntime().exec(monkeyCommand);
            logInfo("Monkey command executed: " + monkeyCommand);

            // Start a lightweight reader to parse monkey output and take screenshots every 100 events
            startMonkeyScreenshotWatcher(process);
            return process;
        } catch (Exception e) {
            logError("Error starting Monkey: " + e.getMessage());
            return null;
        }
    }

    // ---------------------- Screenshot on Monkey progress ----------------------
    private void startMonkeyScreenshotWatcher(Process monkeyProcess) {
        Thread t = new Thread(() -> {
            try {
                java.io.BufferedReader reader = new java.io.BufferedReader(
                        new java.io.InputStreamReader(monkeyProcess.getInputStream()));
                String line;
                int events = 0;
                int lastCapturedAt = 0;
                final int interval = Math.max(1, configLoader.getMonkeyScreenshotInterval());
                java.util.regex.Pattern sentPattern = java.util.regex.Pattern.compile("Sending event #\\s*(\\d+)");
                java.util.regex.Pattern injectedPattern = java.util.regex.Pattern.compile("Events injected:\\s*(\\d+)");
                while ((line = reader.readLine()) != null) {
                    java.util.regex.Matcher m1 = sentPattern.matcher(line);
                    java.util.regex.Matcher m2 = injectedPattern.matcher(line);
                    if (m1.find()) {
                        events = parseSafeInt(m1.group(1), events);
                    } else if (m2.find()) {
                        events = parseSafeInt(m2.group(1), events);
                    }
                    if (events >= lastCapturedAt + interval) {
                        // capture at each interval boundary, may capture multiple if skipped
                        while (events >= lastCapturedAt + interval) {
                            lastCapturedAt += interval;
                            captureScreenshotForStep(lastCapturedAt);
                        }
                    }
                }
            } catch (Exception ex) {
                logError("Monkey screenshot watcher error: " + ex.getMessage());
            }
        });
        t.setDaemon(true);
        t.start();
    }

    private int parseSafeInt(String s, int fallback) {
        try { return Integer.parseInt(s.trim()); } catch (Exception e) { return fallback; }
    }

    private void captureScreenshotForStep(int step) {
        java.io.InputStream in = null;
        java.io.FileOutputStream out = null;
        try {
            String dir = buildScreenshotDirFromApk();
            ensureDirExists(dir);
            java.io.File outFile = new java.io.File(dir, "step_" + step + ".png");
            String abs = outFile.getAbsolutePath();

            Process proc = Runtime.getRuntime().exec(new String[]{"bash","-lc","adb exec-out screencap -p"});
            in = proc.getInputStream();
            out = new java.io.FileOutputStream(outFile);
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) != -1) {
                out.write(buf, 0, n);
            }
            int code = proc.waitFor();
            if (code == 0 && outFile.length() > 0) {
                logInfo("Saved screenshot: " + abs);
            } else {
                logError("Screenshot command exit=" + code + ", file size=" + outFile.length() + ": " + abs);
            }
        } catch (Exception e) {
            logError("Failed to save screenshot at step " + step + ": " + e.getMessage());
        } finally {
            try { if (in != null) in.close(); } catch (Exception ignore) {}
            try { if (out != null) out.close(); } catch (Exception ignore) {}
        }
    }

    private String buildScreenshotDirFromApk() {
        String apkPath = configLoader.getApkPath();
        String base = apkPath;
        int slash = base.lastIndexOf('/') >= 0 ? base.lastIndexOf('/') : base.lastIndexOf('\\');
        if (slash >= 0) base = base.substring(slash + 1);
        if (base.toLowerCase().endsWith(".apk")) {
            base = base.substring(0, base.length() - 4);
        }
        return "reports/screenshot/" + base;
    }

    private void ensureDirExists(String dir) {
        try {
            java.nio.file.Files.createDirectories(java.nio.file.Paths.get(dir));
        } catch (Exception ignored) {}
    }

    /**
     * Analyze API logs and validate state machine
     */
    private void analyzeApiLogsAndValidateStateMachine() {
        try {
            logInfo("Analyzing API logs and validating state machine...");

            // Reset state sequence
            stateMachineManager.resetStateSequence();

            String logFilePath = "logs/frida_api_log.txt";
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