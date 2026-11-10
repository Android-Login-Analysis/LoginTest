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
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

public class AndroidLoginDetector {

    // Core components
    private FridaManager fridaManager;
    private ApiLogAnalyzer apiLogAnalyzer;
    private LoginReportManager reportManager;
    private ConfigLoader configLoader;
    private UIManager uiManager;
    private StateMachineManager stateMachineManager;
    private StaticAnalyzer staticAnalyzer;

    // Last Monkey touch coordinates (parsed from Monkey verbose output)
    private volatile Integer lastTouchX = null;
    private volatile Integer lastTouchY = null;

    // Application configuration
    private String appPackage;
    private String appActivity;
    private String appPath;
    private String emulatorSnapshot;
    private String staticAnalysisResultPath;

    // Runtime round tracking for per-round artifacts (screenshots, logs, etc.)
    private volatile int currentRound = 0;

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
    
    // Enhanced components
    private LoginDetectionEnhancer.ErrorTracker errorTracker;
    private LoginDetectionEnhancer.SnapshotManager snapshotManager;
    private LoginDetectionEnhancer.ScreenshotManager screenshotManager;
    private NetworkChaosManager networkChaosManager;
    
    // Unified error report file for all rounds
    private String unifiedErrorReportPath;
    
    // Taint analysis
    private TaintAnalyzer taintAnalyzer;
    private boolean taintAnalysisEnabled = true;

    // Log record
    private PrintWriter logWriter;
    private String logFilePath;
    private DateTimeFormatter logFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

    public AndroidLoginDetector() {
        initializeLogging();
        initializeComponents();
        loadCredentialPools();
        initializeStateMachine();
        // Initialize enhanced components
        errorTracker = new LoginDetectionEnhancer.ErrorTracker();
        snapshotManager = new LoginDetectionEnhancer.SnapshotManager(appPackage);
        
        // Initialize taint analyzer
        if (taintAnalysisEnabled) {
            taintAnalyzer = new TaintAnalyzer(fridaManager);
            logInfo("Taint analyzer initialized");
        }
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
     * Stepwise Monkey + credential feeding loop for focused login testing
     * Enhanced: Continue exploration when elements not fully found
     */
    private void exploreStepwiseMonkeyFeedCredentials(String username, String password) {
        int totalEvents = configLoader.getMonkeyEvents();
        int throttle = configLoader.getMonkeyThrottle();
        int touchPct = configLoader.getMonkeyTouchPercentage();
        final int shotInterval = Math.max(1, configLoader.getMonkeyScreenshotInterval());

        boolean usernameDone = false;
        boolean passwordDone = false;
        boolean loginClicked = false;
        boolean baselineMarked = false;
        long loopStart = System.currentTimeMillis();
        int idleSteps = 0;
        int idleLimit = Math.max(10, Math.min(50, totalEvents / 2)); // KISS: cap idle steps
        UIManager.FocusType lastFocus = null;

        final long exploreCapMs = 8 * 60 * 1000L; // FIX(v1): bound exploration per round
        final long exploreStart = System.currentTimeMillis();
        for (int i = 1; i <= totalEvents; i++) {
            if (System.currentTimeMillis() - exploreStart > exploreCapMs) {
                logError("Exploration time cap reached (8 min) at step " + i + "; ending exploration");
                break;
            }
            try {
                String cmd = String.format(
                        "adb shell monkey -p %s -v --throttle %d " +
                                "--pct-touch %d --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 " +
                                "--pct-nav 0 --pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 1",
                        appPackage, throttle, touchPct);
                Process proc = Runtime.getRuntime().exec(cmd);
                int exit = proc.waitFor();
                logInfo("Monkey step " + i + " finished with exit=" + exit);

                if (i % shotInterval == 0) {
                    captureScreenshotForStep(i);
                }

                try { Thread.sleep(Math.max(40, throttle)); } catch (InterruptedException ie) { Thread.currentThread().interrupt(); }

                // Create baseline snapshot once when we detect the login page during exploration
                if (!baselineMarked) {
                    try {
                        if (uiManager.detectLoginPage()) {
                            // Create baseline snapshot when login page is detected
                            boolean snapshotCreated = snapshotManager.createSnapshot("baseline", "Login page detected during credential feeding");
                            if (snapshotCreated && screenshotManager != null) {
                                screenshotManager.captureScreenshot("baseline_during_feeding");
                            }
                            baselineMarked = true;
                            logInfo("Baseline snapshot ensured at step " + i);
                        }
                    } catch (Exception ignore) { }
                }

                // Use cache-based direct interaction instead of focus detection
                UIElementCache cache = UIElementCache.getInstance();
                boolean progressed = false;
                
                // Try to input username directly if not done
                if (!usernameDone && cache.getUsernameField() != null) {
                    UIElementCache.UIElement usernameField = cache.getUsernameField();
                    boolean ok = uiManager.clickAndInputText(usernameField.centerX, usernameField.centerY, username);
                    logInfo("Tried clicking and inputting username at (" + usernameField.centerX + "," + usernameField.centerY + "), ok=" + ok);
                    if (ok) {
                        usernameDone = true;
                        progressed = true;
                        logInfo("Inserted username after step " + i);
                    }
                }
                
                // Try to input password directly if not done
                if (!passwordDone && cache.getPasswordField() != null) {
                    UIElementCache.UIElement passwordField = cache.getPasswordField();
                    boolean ok = uiManager.clickAndInputText(passwordField.centerX, passwordField.centerY, password);
                    logInfo("Tried clicking and inputting password at (" + passwordField.centerX + "," + passwordField.centerY + "), ok=" + ok);
                    if (ok) {
                        passwordDone = true;
                        progressed = true;
                        logInfo("Inserted password after step " + i);
                    }
                }
                
                logInfo("Step " + i + " usernameDone=" + usernameDone + ", passwordDone=" + passwordDone + ", loginClicked=" + loginClicked);

                // Once both are done, try to click login when possible
                if (!loginClicked && usernameDone && passwordDone) {
                    // Prefer clicking a visible login button
                    boolean clicked = uiManager.clickLoginButtonIfVisible();
                    if (clicked) {
                        loginClicked = true;
                        logInfo("Clicked login button after step " + i);
                        // Smart login success detection instead of fixed wait
                        boolean loginSuccess = detectLoginSuccessWithSmartWait();
                        if (loginSuccess) {
                            logInfo("Login successful - page transition detected");
                            successfulLogins++;
                            // Capture post-login screenshot
                            if (screenshotManager != null) {
                                screenshotManager.captureScreenshot("login_success");
                            }
                        } else {
                            logInfo("Login may have failed or is still in progress");
                            failedLogins++;
                        }
                        // After login attempt, do NOT restore snapshot immediately
                        // Let the smart login detection handle the result first
                        logInfo("Login attempt completed, waiting for result verification");
                        break;
                    }
                }

                // If we haven't made progress with direct login elements, use Monkey exploration
                if (!progressed) {
                    idleSteps++;
                    
                    // Check if we have complete login elements
                    if (!cache.hasCompleteNormalLogin() && !cache.hasGoogleLogin() && !cache.hasFacebookLogin()) {
                        // No complete login elements found, use Monkey to explore
                        logInfo("No complete login elements found, using Monkey exploration at step " + i);
                        try {
                            String monkeyCmd = String.format(
                                "adb shell monkey -p %s -v --throttle %d " +
                                "--pct-touch %d --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 " +
                                "--pct-nav 0 --pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 1",
                                appPackage, throttle, configLoader.getMonkeyTouchPercentage());
                            
                            Process monkeyProcess = Runtime.getRuntime().exec(monkeyCmd);
                            monkeyProcess.waitFor();
                            
                            // After monkey action, detect login page again
                            if (uiManager.detectLoginPage()) {
                                logInfo("Login page detected after Monkey exploration at step " + i);
                                progressed = true; // Reset idle counter since we found something
                                idleSteps = 0;
                            }
                        } catch (Exception e) {
                            logError("Monkey exploration failed at step " + i + ": " + e.getMessage());
                        }
                    }
                } else {
                    idleSteps = 0;
                }

                if (idleSteps >= idleLimit) {
                    logError("No progress for " + idleSteps + " steps (limit=" + idleLimit + "), breaking credential feed loop");
                    if (configLoader.isRestoreOnMonkeyExhausted()) {
                        restoreBaselineSnapshotIfExists();
                    }
                    break;
                }

                // Only apply timeout if we're still trying to detect login page
                // Once Monkey exploration starts, let it complete all configured steps
                if (!progressed && idleSteps == 0) {
                    long elapsed = System.currentTimeMillis() - loopStart;
                    long maxMillis = Math.max(5_000L, configLoader.getLoginTimeoutSeconds() * 1000L);
                    if (elapsed > maxMillis) {
                        logError("Login page detection timed out after " + elapsed + " ms (max=" + maxMillis + ")");
                        logInfo("Switching to full Monkey exploration mode - no more timeout restrictions");
                        // Don't break here, let Monkey continue with all configured steps
                    }
                }

            } catch (Exception e) {
                logError("Credential-feeding Monkey error at step " + i + ": " + e.getMessage());
            }
        }

        // If we finished all operations without clicking successfully, optionally restore
        if (!loginClicked && configLoader.isRestoreOnMonkeyExhausted()) {
            logInfo("Monkey operations exhausted without successful click; will restore in next round");
            // Don't restore immediately, let next round handle it
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
        final long exploreCapMs = 8 * 60 * 1000L; // FIX(v1): bound exploration per round
        final long exploreStart = System.currentTimeMillis();
        for (int i = 1; i <= totalEvents; i++) {
            if (System.currentTimeMillis() - exploreStart > exploreCapMs) {
                logError("Exploration time cap reached (8 min) at step " + i + "; ending exploration");
                break;
            }
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
                        // Create baseline snapshot when login page is confirmed
                        boolean snapshotCreated = snapshotManager.createSnapshot("baseline", "Login page confirmed after focus detection");
                        if (snapshotCreated && screenshotManager != null) {
                            screenshotManager.captureScreenshot("baseline_confirmed_after_focus");
                        }
                        break;
                    }
                }

                // Full detection after each step (KISS, per request)
                if (uiManager.detectLoginPage()) {
                    logInfo("Login page detected after step " + i);
                    // Create baseline snapshot when login page is found during exploration
                    boolean snapshotCreated = snapshotManager.createSnapshot("baseline", "Login page found during Monkey exploration");
                    if (snapshotCreated && screenshotManager != null) {
                        screenshotManager.captureScreenshot("baseline_found_during_exploration");
                    }
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
        
        // Only restore baseline snapshot if this is NOT the first round
        // First round should start fresh, subsequent rounds restore to clean state
        if (roundNumber > 1) {
            // FIX(v1): random chaos is for the exploration phase only; round setup (reset, navigation) runs on a
            // normal network so that each round's condition is the deterministic one of the schedule
            if (networkChaosManager != null && networkChaosManager.isRunning()) {
                networkChaosManager.stop();
                networkChaosManager.applyCondition("normal");
            }
            logInfo("Round " + roundNumber + ": Restoring baseline snapshot to clean state");
            restoreBaselineSnapshotIfExists();
        } else {
            logInfo("Round 1: Starting fresh without snapshot restore");
        }
        
        appendRoundMarker(roundNumber);
        // Record current round for downstream components (e.g., screenshot directory segregation)
        this.currentRound = roundNumber;
        // Initialize screenshot manager for this round
        screenshotManager = new LoginDetectionEnhancer.ScreenshotManager(appPackage, roundNumber);
        // Clear previous error logs
        errorTracker.clearLogs();
        // Prepare device for visual feedback and stable capture
        ensureDeviceReadyForScreens();
        // Capture initial screenshot for this round
        screenshotManager.captureScreenshot("round_" + roundNumber + "_start");
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
        // Capture final screenshot for this round
        if (screenshotManager != null) {
            screenshotManager.captureScreenshot("round_" + roundNumber + "_end");
        }
        // Enhanced error tracking - append to unified error report
        errorTracker.checkAndRecordErrors(appPackage);
        // First round creates new file, subsequent rounds append
        boolean appendMode = (roundNumber > 1);
        errorTracker.saveErrorReport(unifiedErrorReportPath, roundNumber, appendMode);
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
        // Enhanced snapshot restoration with verification
        boolean restored = snapshotManager.restoreSnapshot("baseline");
        if (restored) {
            logInfo("Successfully restored baseline snapshot");
            // FIX(v1): with an app-level reset the app is relaunched from scratch and navigated again by the login
            // phase; navigating to the login page here only to "verify" the restore cost minutes per round
            if ("app".equalsIgnoreCase(System.getenv("LIFT_RESET_MODE"))) return;
            // Verify app is in correct state
            try {
                TimeUnit.SECONDS.sleep(2);
                // Check if we're on login page
                if (uiManager.detectLoginPage()) {
                    logInfo("Verified: App restored to login page");
                } else {
                    logInfo("Warning: App may not be on login page after restore");
                }
            } catch (Exception e) {
                logError("Error verifying snapshot restore: " + e.getMessage());
            }
        } else {
            logInfo("No baseline snapshot to restore");
        }
    }

    /**
     * Ensure the target app is running
     */
    private void ensureAppIsRunning() {
        try {
            // Start the app if not running
            Process startApp = Runtime.getRuntime().exec(
                "adb shell am start -n " + appPackage + "/" + appActivity);
            startApp.waitFor();
            TimeUnit.SECONDS.sleep(2);
            logInfo("Target app started: " + appPackage);
        } catch (Exception e) {
            logError("Failed to start app: " + e.getMessage());
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

        // Initialize API log analyzer with patterns from FridaManager
        try {
            if (fridaManager != null) {
                Map<String, Pattern> patterns = fridaManager.getStateToApiRegexPatterns();
                apiLogAnalyzer = new ApiLogAnalyzer(patterns);
                logInfo("ApiLogAnalyzer initialized with " + patterns.size() + " patterns from static analysis");
            } else {
                // Fallback to regex file if FridaManager not available
                String regexPath = "src/main/resources/regex_patterns.txt";
                apiLogAnalyzer = new ApiLogAnalyzer(regexPath);
                logInfo("ApiLogAnalyzer initialized with regex file (fallback)");
            }
        } catch (Exception e) {
            logError("Failed to initialize ApiLogAnalyzer: " + e.getMessage());
        }

        // Initialize report manager
        reportManager = new LoginReportManager();
        
        // Initialize network chaos manager
        networkChaosManager = new NetworkChaosManager(configLoader, new NetworkChaosManager.Logger() {
            @Override
            public void logInfo(String message) {
                AndroidLoginDetector.this.logInfo(message);
            }
            
            @Override
            public void logError(String message) {
                AndroidLoginDetector.this.logError(message);
            }
        });
    }

    private void loadAppConfig() {
        Properties config = new Properties();
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
            if (input != null) {
                config.load(input);
                appPackage = config.getProperty("app.package", "com.kickstarter.kickstarter");
                appActivity = config.getProperty("app.activity", "com.kickstarter.ui.activities.DiscoveryActivity");
                appPath = config.getProperty("app.path", "apps/Kickstarter_3.24.1_apkcombo.com.apk");
                // Auto-generate snapshot name based on app package
                emulatorSnapshot = generateSnapshotName(appPackage);
            }
        } catch (Exception e) {
            logError("Failed to load config.properties: " + e.getMessage());
            // Use default values
            appPackage = "com.kickstarter.kickstarter";
            appActivity = "com.kickstarter.ui.activities.DiscoveryActivity";
            appPath = "apps/Kickstarter_3.24.1_apkcombo.com.apk";
            emulatorSnapshot = generateSnapshotName(appPackage);
        }

        logInfo("App configuration loaded:");
        logInfo("  - Package: " + appPackage);
        logInfo("  - Activity: " + appActivity);
        logInfo("  - APK Path: " + appPath);
        logInfo("  - Emulator Snapshot (auto-generated): " + emulatorSnapshot);
    }

    private void initializeStaticAnalyzer() {
        try {
            logInfo("Initializing static analyzer...");
            
            String patternsPath = configLoader.getStaticAnalysisPatternsPath();
            // Use configurable result path based on APK file name and version
            staticAnalysisResultPath = configLoader.getStaticAnalysisResultPath(appPath);
            
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


    private void initializeFridaManager() {
        try {
            logInfo("Initializing Frida manager with static analysis results...");
            
            String regexPath = "src/main/resources/regex_patterns.txt";
            String agentPath = "src/main/resources/login_agent.js";
            String logPath = "logs/frida_api_log.txt";
            String controllerPath = "scripts/frida_controller.py";

            // Initialize Frida manager with static analysis results
            fridaManager = new FridaManager(regexPath, agentPath, logPath, staticAnalysisResultPath, configLoader);
            
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
        // FIX(v1): app data captured right after a completed login (e.g. after an SSO approval on the user's phone)
        java.io.File snap = new java.io.File(credDir, "loggedin.tgz");
        if (snap.isFile()) { loggedInSnapshot = snap.getPath(); logInfo("Logged-in snapshot available: " + snap.getPath()); }

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

        // FIX(v1): load tester-supplied valid credential pairs (valid_pairs.csv: username,password)
        validPairs.clear();
        java.util.List<String> pairLines = readLinesFromFile(new java.io.File(credDir, "valid_pairs.csv").getPath());
        if (pairLines != null) {
            for (String l : pairLines) {
                String t = l.trim();
                if (t.isEmpty() || t.startsWith("#") || t.toLowerCase().startsWith("username,")) continue;
                int c = t.indexOf(',');
                if (c > 0 && c < t.length() - 1) validPairs.add(new String[]{t.substring(0, c).trim(), t.substring(c + 1).trim()});
            }
        }
        logInfo("Loaded " + validPairs.size() + " valid credential pair(s)");
        // FIX(v1): authenticator secrets for MFA accounts (totp_secrets.csv: username,base32secret)
        java.util.Map<String, String> totp = new java.util.HashMap<>();
        java.util.List<String> totpLines = readLinesFromFile(new java.io.File(credDir, "totp_secrets.csv").getPath());
        if (totpLines != null) {
            for (String l : totpLines) {
                int c = l.indexOf(',');
                if (!l.startsWith("#") && c > 0) totp.put(l.substring(0, c).trim(), l.substring(c + 1).trim());
            }
        }
        if (uiManager != null) uiManager.setTotpSecrets(totp);
        logInfo("Loaded " + totp.size() + " TOTP secret(s)");

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
        
        // Initialize unified error report path (one file for all rounds)
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
        unifiedErrorReportPath = "reports/errors/test_errors_" + timestamp + ".txt";
        // Ensure error directory exists
        new java.io.File("reports/errors").mkdirs();

        logInfo("=== Starting AndroidLoginDetector Test with Static Analysis ===");
        logInfo("Target app: " + appPackage);
        logInfo("Test rounds: " + testRounds);
        logInfo("Static analysis results: " + staticAnalysisResultPath);
        logInfo("Unified error report: " + unifiedErrorReportPath);
        
        // Start taint analysis (once for all rounds)
        if (taintAnalysisEnabled && taintAnalyzer != null) {
            logInfo("Starting global taint tracking...");
            taintAnalyzer.startTracking(appPackage);
            logInfo("✓ Taint tracking active for all rounds");
        }

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
        
        // Start network chaos testing (if enabled) - AFTER emulator is ready
        if (networkChaosManager != null) {
            logInfo("Starting network chaos testing (emulator is ready)...");
            networkChaosManager.start();
            chaosEnabledForRun = true;
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
            
            // Step 2.5: Start crash detector monitoring (only once per test)
            if (round == 1 && stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                var crashDetector = stateMachineManager.getBugDetectionManager().getCrashDetector();
                crashDetector.startMonitoring(appPackage);
                logInfo("✓ Crash detector monitoring started for package: " + appPackage);
            }

            // Step 3: Start UI automation
            // UI manager is already initialized in constructor

            // Step 4: Detect login page using UI manager
            // FIX(v1): pick this round's credentials before detection so two-step logins
            // (identifier first, password on the next screen) can be completed during navigation.
            forcedValidity = System.getenv("LIFT_VALID_PROB") != null ? null : ROUND_VALIDITY[(round - 1) % ROUND_VALIDITY.length];
            roundUsername = getRandomAccount();
            roundPassword = getRandomPassword();
            forcedValidity = null;
            roundUsedValidPair = lastCredentialChoiceValid;
            uiManager.setPendingUsername(roundUsername);
            // a valid-credential round (even when the app itself has no test account, its SSO provider may)
            uiManager.setRoundValid(System.getenv("LIFT_VALID_PROB") != null ? roundUsedValidPair
                : ROUND_VALIDITY[(round - 1) % ROUND_VALIDITY.length]);
            uiManager.setServiceAccounts(realAccount(googleEmailPool), realAccount(facebookEmailPool));
            // FIX(v1): deterministic network condition for the whole login (navigation, MFA, submit)
            final String roundCondition = ROUND_CONDITIONS[(round - 1) % ROUND_CONDITIONS.length];
            uiManager.setRoundCondition(roundCondition);
            final boolean chaosWasRunning = networkChaosManager != null && (networkChaosManager.isRunning() || chaosEnabledForRun);
            if (networkChaosManager != null) {
                if (networkChaosManager.isRunning()) networkChaosManager.stop();
                networkChaosManager.applyCondition(roundCondition);
            }
            logInfo("Round network condition for login: " + roundCondition);
            // FIX(v1): apps offering a credential-free login next to SSO use it in the valid-credential rounds
            // (normal, limited, offline); the invalid round and the rotation phase use the credential form
            uiManager.setPreferGuestLogin(ROUND_VALIDITY[(round - 1) % ROUND_VALIDITY.length]);
            boolean loginPageDetected = detectLoginPageWithUI();
            // FIX(v1): the app died during navigation (often instrumentation-induced): relaunch, re-attach and retry once
            if (!loginPageDetected && stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null
                    && System.currentTimeMillis() - stateMachineManager.getBugDetectionManager().getCrashDetector().lastCrashMillis() < 40000) {
                logInfo("App crashed during navigation; relaunching, re-attaching Frida and retrying the login page detection");
                AppLauncher.launch(appPackage);
                restartFridaMonitoring();
                try { TimeUnit.SECONDS.sleep(8); } catch (InterruptedException ignored) { }
                uiManager.setPendingUsername(roundUsername);
                loginPageDetected = detectLoginPageWithUI();
            }
            // FIX(v1): pages that need the network to render the form (e.g. web logins) cannot be reached
            // offline; load the form on a working network, then re-apply the round condition before submitting
            if (!loginPageDetected && !"normal".equals(roundCondition) && networkChaosManager != null
                    && !"pending".equals(uiManager.getLastMfaOutcome())) {
                logInfo("Login page not reached under '" + roundCondition + "'; loading it on a normal network first");
                networkChaosManager.applyCondition("normal");
                uiManager.setRoundCondition("normal");
                // pages that failed to load while offline (e.g. WebView error pages) do not reload by themselves
                AppLauncher.run("adb", "shell", "am", "force-stop", appPackage);
                AppLauncher.launch(appPackage);
                uiManager.setPendingUsername(roundUsername);
                loginPageDetected = detectLoginPageWithUI();
                networkChaosManager.applyCondition(roundCondition);
                uiManager.setRoundCondition(roundCondition);
                if (loginPageDetected) logInfo("Login page loaded; round condition '" + roundCondition + "' re-applied before submitting");
            }
            boolean mfaPendingRound = "pending".equals(uiManager.getLastMfaOutcome());
            if (!loginPageDetected && !mfaPendingRound) {
                loginPageDetected = tryDirectLoginActivities();
            }
            if (mfaPendingRound) {
                logInfo("Login reached the MFA prompt before the password step (MFACodePending); no authenticator secret for " + roundUsername);
            }

            if (loginPageDetected) {
                // Create baseline snapshot ONLY when login page is first detected
                boolean snapshotCreated = snapshotManager.createSnapshot("baseline", "Login page baseline - Round " + round);
                if (snapshotCreated) {
                    logInfo("Baseline snapshot created after detecting login page");
                    if (screenshotManager != null) {
                        screenshotManager.captureScreenshot("baseline_login_page");
                    }
                } else {
                    logInfo("Failed to create baseline snapshot or already exists");
                }
                
                // Step 5: Select appropriate credentials based on login type
                String username = pickRoundUsername();
                String password = pickRoundPassword();
                
                // Note: Taint marking is now automatic in login_agent.js
                // It detects password fields via hint/inputType and marks them automatically
                // This avoids RPC session conflicts and captures all password inputs
                
                // Step 6: Input credentials with enhanced verification and monitoring
                logInfo("=== Starting Credential Input Phase ===");
                logInfo("Selected username: " + username);
                logInfo("Selected password: [" + password.length() + " chars]");
                
                // a credential-free login has no wrong credentials: it is expected to succeed like a valid pair
                boolean usedValidPair = lastCredentialChoiceValid || uiManager.isGuestMode()
                    || (uiManager.isServiceAccountAdopted() && uiManager.isRoundValid());
                boolean loginSuccess = inputCredentialsWithUI(username, password);
                
                // Additional verification after input
                if (loginSuccess) {
                    // Wait a moment for UI to update
                    try { Thread.sleep(1000); } catch (InterruptedException ie) { Thread.currentThread().interrupt(); }
                    
                    // Take final verification screenshot
                    if (screenshotManager != null) {
                        screenshotManager.captureScreenshot("credentials_input_complete");
                    }
                    
                    logInfo("✅ Credential input phase completed successfully");
                } else {
                    logInfo("❌ Credential input phase failed");
                    if (screenshotManager != null) {
                        screenshotManager.captureScreenshot("credentials_input_failed");
                    }
                }

                // FIX(v1): Login Delay oracle per paper V-C: delta-t from clicking login until the login
                // page is no longer visible. Invalid credentials legitimately keep the page, so an
                // unfinished login only counts (as a timeout) when a valid credential pair was used.
                long clickTime = uiManager.getLoginButtonClickTime();
                long gone = -1;
                if (loginSuccess && clickTime > 0 && stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                    var timeoutDetector = stateMachineManager.getBugDetectionManager().getTimeoutDetector();
                    gone = uiManager.waitForLoginPageGone("normal".equals(roundCondition) ? 35000 : 90000);
                    if (gone > 0) {
                        // FIX(v1): latency thresholds only make sense on a working network; on degraded networks
                        // the oracle looks for hangs (no result at all) instead of slowness
                        if ("normal".equals(roundCondition)) timeoutDetector.recordLoginAttempt(clickTime, gone, true);
                        else logInfo("Login completed under '" + roundCondition + "' network in " + (gone - clickTime) + " ms (not a delay sample)");
                    } else if (gone == -3) {
                        logInfo("Login stopped at the MFA prompt (MFACodePending); no authenticator secret for this account");
                    } else if (gone == -2) {
                        logInfo("Login rejected with message: '" + uiManager.getLastLoginErrorText() + "' (validPair=" + usedValidPair + ")");
                        if ("normal".equals(roundCondition) && !usedValidPair) recordFailureMessage(uiManager.getLastLoginErrorText(), false);
                        // offline: the request cannot reach the server, so any message is about the network failure;
                        // limited: the server may still answer, so only valid credentials make it a network failure
                        else if ("offline".equals(roundCondition) || "unresponsive".equals(roundCondition) || ("limited".equals(roundCondition) && usedValidPair))
                            recordFailureMessage(uiManager.getLastLoginErrorText(), true);
                    } else if (usedValidPair) {
                        timeoutDetector.recordLoginAttempt(clickTime, System.currentTimeMillis(), false);
                    } else {
                        logInfo("Login page still shown after invalid credentials; not a delay sample");
                    }
                }
                
                // FIX(v1): invalid round on a working network: while the app rejects the special-character username,
                // try the next one from the pool (up to 4 in total) on the same form, since only some of them reach
                // server-side handling that can misbehave (e.g. accepting the login or asking for MFA)
                if (!usedValidPair && invalidCandidates.size() > 1 && "normal".equals(roundCondition)) {
                    for (int k = 1; k < Math.min(4, invalidCandidates.size()) && loginSuccess
                            && (gone == -2 || (gone == -1 && !uiManager.lastWaitEndedInProgress())); k++) {
                        username = invalidCandidates.get(k);
                        logInfo("Invalid credentials rejected; retrying with the next special-character username: " + username);
                        loginSuccess = inputCredentialsWithUI(username, password);
                        clickTime = uiManager.getLoginButtonClickTime();
                        gone = (loginSuccess && clickTime > 0) ? uiManager.waitForLoginPageGone("normal".equals(roundCondition) ? 35000 : 90000) : -1;
                        if (gone == -2) recordFailureMessage(uiManager.getLastLoginErrorText(), false);
                        if (gone == -3) logInfo("Login stopped at the MFA prompt after invalid credentials");
                    }
                }
                // FIX(v1): the most common credential error is a wrong password for an existing account; when a real
                // account is known, the invalid round also tries it once with a wrong password, so the differential
                // oracle has the app's wrong-password message to compare network failures against
                if (!usedValidPair && invalidCandidates.size() > 0 && "normal".equals(roundCondition) && loginSuccess
                        && (gone == -2 || (gone == -1 && !uiManager.lastWaitEndedInProgress()))) {
                    String realUser = uiManager.isFacebookLoginDetected() ? realAccount(facebookEmailPool)
                        : uiManager.isGoogleLoginDetected() ? realAccount(googleEmailPool)
                        : (validPairs.isEmpty() ? null : validPairs.get(0)[0]);
                    if (realUser != null) {
                        String wrongPw = "Wrong" + (100000 + new Random().nextInt(900000)) + "x";
                        logInfo("Invalid round: existing account with a wrong password");
                        username = realUser;
                        loginSuccess = inputCredentialsWithUI(realUser, wrongPw);
                        clickTime = uiManager.getLoginButtonClickTime();
                        gone = (loginSuccess && clickTime > 0) ? uiManager.waitForLoginPageGone(35000) : -1;
                        if (gone == -2) recordFailureMessage(uiManager.getLastLoginErrorText(), false);
                    }
                }
                invalidCandidates = new java.util.ArrayList<>();
                // FIX(v1): loginSuccess only means "credentials entered and login clicked". Authentication
                // is considered successful only if the login page went away; with a valid pair we expect
                // success, so a remaining login page is a legitimate candidate. Invalid credentials that keep
                // the login page are expected behaviour and must not reach the navigation oracle.
                // LOGIN_HANG: still spinning at the end of the wait (no timeout handling), whatever the credentials
                if (loginSuccess && gone == -1 && !usedValidPair && uiManager.lastWaitEndedInProgress() && stateMachineManager != null
                        && stateMachineManager.getBugDetectionManager() != null && clickTime > 0) {
                    logInfo("Login still in progress after the wait under '" + roundCondition + "' network: no timeout handling");
                    stateMachineManager.getBugDetectionManager().getTimeoutDetector().recordLoginAttempt(clickTime, System.currentTimeMillis(), false);
                }
                // FIX(v1): password passed through an Intent/Bundle extra in plaintext
                checkPasswordInExtras(username, password, clickTime);
                boolean authenticated = gone > 0;
                // FIX(v1): wrong credentials must never be accepted or advance to MFA (#4031 / #4032-style)
                if (!usedValidPair && loginSuccess && stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                    var observed = stateMachineManager.getBugDetectionManager().getObservedDetector();
                    if (uiManager.mfaPromptAfterSubmit()) {
                        observed.record("INCORRECT_LOGIN_FLOW", "MFA_AFTER_INVALID_CREDENTIALS",
                            "Invalid credentials advanced the login to the MFA step",
                            "username '" + username + "' (invalid) reached the MFA prompt under '" + roundCondition + "' network");
                    } else if (authenticated) {
                        String evidence = uiManager.confirmLeftLogin();
                        if (evidence != null) {
                            observed.record("INCORRECT_NAVIGATION", "INVALID_CREDENTIALS_ACCEPTED",
                                "The login screen was left although the credentials were invalid",
                                "username '" + username + "' (invalid); after login: " + evidence);
                        } else {
                            logInfo("Login page left after invalid credentials, but a login/error/recovery page followed: not an acceptance");
                            authenticated = false;
                        }
                    }
                }
                if (authenticated && stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                    try { Thread.sleep(4000); } catch (InterruptedException ignored) { }   // let the app persist the session
                    stateMachineManager.getBugDetectionManager().getStorageDetector().scan(appPackage, username, password);
                }
                // a valid login is only expected to succeed on a working network
                boolean expectSuccess = authenticated || (usedValidPair && "normal".equals(roundCondition));
                logInfo("Login outcome: inputOk=" + loginSuccess + ", loginPageGone=" + authenticated + ", validPair=" + usedValidPair);
                if (loginSuccess && expectSuccess) {
                    logInfo("Login process completed successfully");
                    if (authenticated) successfulLogins++;
                    
                    // Record login success and navigation for NavigationFlowDetector
                    if (stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                        var navDetector = stateMachineManager.getBugDetectionManager().getNavigationDetector();
                        navDetector.recordLoginSuccess();
                        logInfo("✓ Navigation detector: recorded login success");
                        
                        // Get current activity after login
                        try {
                            String currentActivity = uiManager.getCurrentActivity();
                            if (currentActivity != null) {
                                navDetector.setCurrentActivity(currentActivity);
                                logInfo("✓ Navigation detector: current activity = " + currentActivity);
                            } else {
                                logInfo("⚠ Navigation detector: unable to get current activity");
                            }
                            
                            // Get current state from state machine (last observed state)
                            List<String> stateSequence = stateMachineManager.getObservedStateSequence();
                            if (!stateSequence.isEmpty()) {
                                String currentState = stateSequence.get(stateSequence.size() - 1);
                                navDetector.setCurrentState(currentState);
                                logInfo("✓ Navigation detector: current state = " + currentState);
                            }
                        } catch (Exception e) {
                            logError("Failed to update navigation detector context: " + e.getMessage());
                        }
                    }
                } else if (loginSuccess) {
                    logInfo(usedValidPair
                        ? "Login with valid credentials did not complete under '" + roundCondition + "' network; login page still shown"
                        : "Login rejected with invalid credentials (expected); login page still shown");
                    failedLogins++;
                } else {
                    logError("Login process failed");
                    failedLogins++;
                }
            } else if (mfaPendingRound) {
                logInfo("Skipping exploration: MFA prompt reached");
                // FIX(v1): MFA prompt checks (#6640-style: code 'sent' while offline; #6647-style: prompt cannot be closed)
                if (stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                    var observed = stateMachineManager.getBugDetectionManager().getObservedDetector();
                    String prompt = uiManager.currentMfaPromptText();
                    if (prompt != null && !"normal".equals(roundCondition) && prompt.toLowerCase().matches(".*\\b(sent|we've sent|we have sent|check your)\\b.*")) {
                        observed.record("ACCOUNT_MANAGEMENT_BREAK", "MFA_CODE_PROMPT_WITHOUT_DELIVERY",
                            "MFA prompt claims a code was sent while the device had no working network",
                            "Network '" + roundCondition + "', prompt: '" + prompt + "'");
                    }
                    if (prompt != null && !uiManager.tryDismissMfaPrompt()) {
                        observed.record("UI_ERROR", "MFA_PROMPT_NOT_DISMISSABLE",
                            "The MFA prompt cannot be cancelled (Cancel/Back keep the user on it)",
                            "Prompt: '" + prompt + "'");
                    }
                }
            } else {
                logInfo("No login page detected, starting stepwise Monkey exploration with focused credential feeding");
                String username = pickRoundUsername();
                String password = pickRoundPassword();
                exploreStepwiseMonkeyFeedCredentials(username, password);
            }

            // FIX(v1): restore the network after the login phase
            uiManager.setRoundCondition("normal");
            if (networkChaosManager != null) {
                networkChaosManager.applyCondition("normal");
                if (chaosWasRunning) networkChaosManager.start();
            }

            // Step 7: Analyze API logs and validate state machine
            analyzeApiLogsAndValidateStateMachine();

            // Step 8: Check for crashes and ANRs
            checkCrashAndAnrLogs();

            // Step 9: Extract taint flows BEFORE stopping Frida
            // CRITICAL: Must extract taint before stopping Frida, otherwise TaintStore is lost
            if (taintAnalysisEnabled && taintAnalyzer != null) {
                logInfo("[TAINT] Extracting taint flows for Round " + round);
                extractAndReportTaintFlows(round);
            }

            // Step 9.5 (FIX v1): lifecycle/rotation oracle on a fresh login page, every N rounds
            int rotationEvery = 1;
            try { rotationEvery = Math.max(1, Integer.parseInt(System.getenv().getOrDefault("LIFT_ROTATION_EVERY", "1"))); } catch (Exception ignored) { }
            if (round % rotationEvery == 0) {
                logInfo("=== Rotation (lifecycle) checks, round " + round + " ===");
                boolean chaosPaused = false;
                if (networkChaosManager != null && networkChaosManager.isRunning()) { networkChaosManager.stop(); chaosPaused = true; }
                try {
                    snapshotManager.restoreSnapshot("baseline");
                    // re-attach Frida to the fresh process: keeps instrumentation and WebView debugging enabled
                    startFridaMonitoring();
                    try { TimeUnit.SECONDS.sleep(8); } catch (InterruptedException ignored) { }
                    String rUser = accountPool.isEmpty() ? "testuser@example.com" : accountPool.get(new Random().nextInt(accountPool.size()));
                    String rPass = passwordPool.isEmpty() ? "wrongpass123" : passwordPool.get(new Random().nextInt(passwordPool.size()));
                    uiManager.setPendingUsername(rUser);   // before navigation: it resets per-attempt state (incl. DOM mode)
                    uiManager.setPreferGuestLogin(false);   // rotation checks need a credential form
                    uiManager.setStopAtIdentifier(true);    // identifier-only screens are rotated too
                    boolean onLogin = detectLoginPageWithUI();
                    if (!onLogin && stateMachineManager.getBugDetectionManager() != null
                            && System.currentTimeMillis() - stateMachineManager.getBugDetectionManager().getCrashDetector().lastCrashMillis() < 40000) {
                        logInfo("App crashed while reaching the login page for rotation checks; relaunching and retrying once");
                        AppLauncher.launch(appPackage);
                        restartFridaMonitoring();
                        try { TimeUnit.SECONDS.sleep(8); } catch (InterruptedException ignored) { }
                        uiManager.setPendingUsername(rUser);
                        uiManager.setPreferGuestLogin(false);
                        uiManager.setStopAtIdentifier(true);
                        onLogin = detectLoginPageWithUI();
                    }
                    onLogin = onLogin || tryDirectLoginActivities();
                    uiManager.setStopAtIdentifier(false);
                    if (onLogin) {
                        List<String[]> findings = uiManager.runRotationChecks(rUser, rPass);
                        if (stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                            var lifecycle = stateMachineManager.getBugDetectionManager().getLifecycleDetector();
                            String activity = AppLauncher.topActivityLine().trim();
                            for (String[] f : findings) lifecycle.recordObservedLoss(f[0], f[1], activity);
                        }
                        logInfo("Rotation checks finished with " + findings.size() + " finding(s)");
                    } else {
                        logInfo("Rotation checks skipped: login page not reached");
                    }
                } catch (Exception e) {
                    logError("Rotation checks failed: " + e.getMessage());
                } finally {
                    if (chaosPaused) networkChaosManager.start();
                }
            }

            // Step 10: Stop Frida monitoring (after extracting taint)
            stopFridaMonitoring();

            // Step 11: Run bug detection and generate report
            if (stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                logInfo("[BUG_DETECTION] Running bug detectors for Round " + round);
                var bugManager = stateMachineManager.getBugDetectionManager();
                var bugs = bugManager.detectAllBugs();
                
                if (!bugs.isEmpty()) {
                    logInfo("⚠️  Detected " + bugs.size() + " potential bug(s) in Round " + round);
                    bugManager.generateReport(round);
                } else {
                    logInfo("✓ No bugs detected in Round " + round);
                }
            }

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

        runLoggedInPhase();

        // Generate final report
        generateFinalReport();
        
        // Stop crash detector monitoring
        if (stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
            var crashDetector = stateMachineManager.getBugDetectionManager().getCrashDetector();
            crashDetector.stopMonitoring();
            logInfo("✓ Crash detector monitoring stopped");
        }

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
     * Step 2: Restart emulator from snapshot (only if login baseline exists)
     */
    private void restartEmulatorSnapshot() {
        try {
            // Only try to load baseline snapshot if it exists
            boolean restored = snapshotManager.restoreSnapshot("baseline");
            if (restored) {
                logInfo("Baseline snapshot restored successfully");
                // Wait for emulator to stabilize
                TimeUnit.SECONDS.sleep(5);
            } else {
                logInfo("No baseline snapshot found - will create one when login page is detected");
                // Just ensure app is running
                ensureAppIsRunning();
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

    private String loggedInSnapshot = null;
    private boolean chaosEnabledForRun = false;

    /**
     * FIX(v1): post-login oracles on a restored logged-in session. Logins that need an out-of-band approval
     * (Google "Verify it's you") cannot be completed in every round; their app data is captured once after the
     * approval and restored here, so storage and post-login navigation oracles still run on a real session.
     */
    private void runLoggedInPhase() {
        if (loggedInSnapshot == null || stateMachineManager == null || stateMachineManager.getBugDetectionManager() == null) return;
        logInfo("=== Logged-in phase: restoring the captured session ===");
        try {
            networkChaosManager.applyCondition("normal");
            AppLauncher.run("adb", "push", loggedInSnapshot, "/data/local/tmp/lift_loggedin.tgz");
            String pkg = appPackage;
            AppLauncher.run("adb", "shell", "am force-stop " + pkg + "; u=$(stat -c %u /data/data/" + pkg + "); rm -rf /data/data/" + pkg
                + "/*; cd /data/data && tar xzf /data/local/tmp/lift_loggedin.tgz && chown -R $u:$u /data/data/" + pkg
                + " && restorecon -R /data/data/" + pkg + "; rm -f /data/local/tmp/lift_loggedin.tgz");
            AppLauncher.launch(pkg);
            Thread.sleep(8000);
            var bdm = stateMachineManager.getBugDetectionManager();
            bdm.getStorageDetector().scan(pkg, null, null);
            // account page right after login: an empty page is an incorrect post-login navigation (#1860-style)
            String hit = uiManager.tapText("(account|my account|profile|accounts)");
            if (hit != null) {
                Thread.sleep(7000);
                int n = uiManager.contentNodeCount();
                logInfo("Logged-in phase: '" + hit + "' page shows " + n + " content node(s)");
                if (n == 0 && AppLauncher.isInForeground(pkg)) {
                    bdm.getObservedDetector().record("INCORRECT_NAVIGATION", "BLANK_PAGE_AFTER_LOGIN",
                        "The account page is blank after a successful login",
                        "Page opened via '" + hit + "' shows no content; top=" + AppLauncher.topActivityLine().trim());
                }
            }
            logInfo("[LOGGED-IN PHASE] storage findings: " + bdm.getStorageDetector().detectBugs().size()
                + ", observed findings: " + bdm.getObservedDetector().detectBugs().size());
        } catch (Exception e) {
            logError("Logged-in phase failed: " + e.getMessage());
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
        
        // Generate final taint analysis report
        if (taintAnalysisEnabled && taintAnalyzer != null) {
            generateFinalTaintReport();
        }
        
        // Append final summary to unified error report
        appendFinalSummaryToErrorReport();
    }
    
    /**
     * Append final summary to unified error report
     */
    private void appendFinalSummaryToErrorReport() {
        if (unifiedErrorReportPath == null) {
            return;
        }
        
        try (PrintWriter writer = new PrintWriter(new FileWriter(unifiedErrorReportPath, true))) {
            writer.println();
            writer.println("=".repeat(80));
            writer.println("FINAL TEST SUMMARY");
            writer.println("=".repeat(80));
            writer.println("Completed at: " + LocalDateTime.now().format(logFormatter));
            writer.println();
            writer.println("Test Statistics:");
            writer.println("  - Total Login Attempts: " + totalAttempts);
            writer.println("  - Successful Logins: " + successfulLogins);
            writer.println("  - Failed Logins: " + failedLogins);
            writer.println("  - Success Rate: " + String.format("%.2f%%", 
                totalAttempts > 0 ? (successfulLogins * 100.0 / totalAttempts) : 0));
            writer.println();
            writer.println("Error Report Location: " + unifiedErrorReportPath);
            writer.println("=".repeat(80));
            
            logInfo("Final summary appended to unified error report: " + unifiedErrorReportPath);
        } catch (IOException e) {
            logError("Failed to append final summary to error report: " + e.getMessage());
        }
    }

    /**
     * Extract and report taint flows for a specific round
     */
    private void extractAndReportTaintFlows(int roundNumber) {
        try {
            logInfo("Extracting taint analysis results for Round " + roundNumber);
            
            // Get taint report from analyzer
            TaintAnalyzer.TaintReport report = taintAnalyzer.getTaintReport();
            
            if (report == null) {
                logInfo("[TAINT] No taint report available for Round " + roundNumber);
                return;
            }
            
            // Log violations found in this round
            List<TaintAnalyzer.TaintViolation> violations = report.getViolations();
            
            if (violations.isEmpty()) {
                logInfo("[TAINT] Round " + roundNumber + ": No violations detected");
            } else {
                logInfo("[TAINT] Round " + roundNumber + ": Found " + violations.size() + " violation(s)");
                
                for (TaintAnalyzer.TaintViolation v : violations) {
                    logError("[TAINT] " + v.toString());
                }
            }
            
            // Save round-specific report
            String roundReportPath = "reports/taint/round_" + roundNumber + "_taint.txt";
            new java.io.File("reports/taint").mkdirs();
            taintAnalyzer.saveReport(roundReportPath);
            logInfo("[TAINT] Round report saved to: " + roundReportPath);
            
        } catch (Exception e) {
            logError("[TAINT] Failed to extract taint flows: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    /**
     * Generate final comprehensive taint analysis report
     */
    private void generateFinalTaintReport() {
        try {
            logInfo("=== Generating Final Taint Analysis Report ===");
            
            // Get comprehensive report
            String readableReport = taintAnalyzer.generateReadableReport();
            logInfo(readableReport);
            
            // Save to file
            String finalReportPath = "reports/taint/final_taint_analysis.txt";
            taintAnalyzer.saveReport(finalReportPath);
            logInfo("[TAINT] Final comprehensive report saved to: " + finalReportPath);
            
            // Get summary statistics
            TaintAnalyzer.TaintReport report = taintAnalyzer.getTaintReport();
            if (report != null) {
                logInfo("[TAINT] Total taints tracked: " + report.getTotalTaints());
                logInfo("[TAINT] Total flows detected: " + report.getTotalFlows());
                logInfo("[TAINT] Total violations: " + report.getViolations().size());
            }
            
        } catch (Exception e) {
            logError("[TAINT] Failed to generate final taint report: " + e.getMessage());
            e.printStackTrace();
        }
    }

    // Helper methods
    // FIX(v1): per paper Section V-B each attempt draws from valid credentials, invalid credentials and
    // special-character strings. Previously usernames and passwords were sampled independently, so a
    // valid pair was almost never used and successful-login flows were rarely exercised.
    private final java.util.List<String[]> validPairs = new java.util.ArrayList<>();
    private String pendingPairedPassword = null;
    private String roundUsername = null, roundPassword = null;
    private boolean roundUsedValidPair = false;

    // Google/Facebook flows keep their dedicated pools; otherwise use the round's pre-picked pair.
    private String pickRoundUsername() {
        if (uiManager.isGoogleLoginDetected() || uiManager.isFacebookLoginDetected() || roundUsername == null) {
            return selectCredentials();
        }
        lastCredentialChoiceValid = roundUsedValidPair;
        return roundUsername;
    }

    private String pickRoundPassword() {
        if (uiManager.isGoogleLoginDetected() || uiManager.isFacebookLoginDetected() || roundPassword == null) {
            return selectPassword();
        }
        return roundPassword;
    }
    private boolean lastCredentialChoiceValid = false;
    // special-character usernames for the invalid round; the first is tried, the rest are retries while rejected
    private java.util.List<String> invalidCandidates = new java.util.ArrayList<>();
    // LIFT_VALID_PROB overrides the share of attempts that use a valid pair (e.g. 1.0 to verify accounts)
    private static final double VALID_PAIR_PROBABILITY = parseProb(System.getenv("LIFT_VALID_PROB"), 0.5);
    private static double parseProb(String v, double d) {
        try { return v == null ? d : Math.max(0, Math.min(1, Double.parseDouble(v))); } catch (Exception e) { return d; }
    }

    // FIX(v1): deterministic 4-round schedule (network condition x credential validity)
    private static final String[] ROUND_CONDITIONS = {"normal", "normal", "limited", "offline", "unresponsive"};
    private static final Boolean[] ROUND_VALIDITY = {true, false, true, true, true};
    private Boolean forcedValidity = null;
    // differential misleading-error oracle: messages seen for credential failures vs network failures
    private final java.util.Set<String> credentialFailureMessages = new java.util.LinkedHashSet<>();
    private final java.util.Set<String> networkFailureMessages = new java.util.LinkedHashSet<>();
    private boolean misleadingReported = false;

    private final java.util.Set<String> extraFindings = new java.util.HashSet<>();

    private void checkPasswordInExtras(String username, String password, long sinceMs) {
        // when the test account reuses the username as password, only password-like keys are meaningful
        boolean sameAsUser = username != null && username.equals(password);
        if (password == null || password.length() < 4 || stateMachineManager == null || stateMachineManager.getBugDetectionManager() == null) return;
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
            byte[] d = md.digest(password.getBytes(java.nio.charset.StandardCharsets.UTF_8));
            StringBuilder h = new StringBuilder();
            for (byte b : d) h.append(String.format("%02x", b));
            java.io.File f = new java.io.File("logs/intent_extras.txt");
            if (!f.exists()) return;
            for (String line : java.nio.file.Files.readAllLines(f.toPath())) {
                String[] p = line.split("\t");
                if (p.length < 4 || !p[3].equals(h.toString())) continue;
                double ts = Double.parseDouble(p[0]) * 1000;
                if (sinceMs > 0 && ts < sinceMs - 60000) continue;
                if (sameAsUser && !p[2].toLowerCase().matches(".*(pass|pwd|secret|cred).*")) continue;
                String key = p[1] + ":" + p[2];
                if (extraFindings.add(key)) {
                    stateMachineManager.getBugDetectionManager().getObservedDetector().record("INCORRECT_LOGIN_FLOW", "PASSWORD_IN_INTENT_EXTRA",
                        "The login password is passed in plaintext through an Intent/Bundle extra",
                        p[1] + " extra '" + p[2] + "' carries the password used for this login");
                }
            }
        } catch (Exception e) {
            logError("Intent extra check failed: " + e.getMessage());
        }
    }

    private void recordFailureMessage(String msg, boolean networkFault) {
        if (msg == null || msg.trim().isEmpty()) return;
        String norm = msg.trim().toLowerCase().replaceAll("\\s+", " ");
        (networkFault ? networkFailureMessages : credentialFailureMessages).add(norm);
        if (misleadingReported) return;
        for (String n : networkFailureMessages) {
            if (credentialFailureMessages.contains(n) && stateMachineManager != null && stateMachineManager.getBugDetectionManager() != null) {
                misleadingReported = true;
                stateMachineManager.getBugDetectionManager().getErrorMismatchDetector().recordDifferentialFinding(n);
                logInfo("[ERROR_MSG] Same message for wrong credentials and network failure: '" + n + "'");
            }
        }
    }

    private String getRandomAccount() {
        pendingPairedPassword = null;
        boolean useValid = forcedValidity != null ? forcedValidity : new Random().nextDouble() < VALID_PAIR_PROBABILITY;
        if (!validPairs.isEmpty() && useValid) {
            String[] pair = validPairs.get(new Random().nextInt(validPairs.size()));
            pendingPairedPassword = pair[1];
            lastCredentialChoiceValid = true;
            logInfo("Credential choice: VALID pair");
            return pair[0];
        }
        lastCredentialChoiceValid = false;
        if (forcedValidity != null && !forcedValidity) {
            // FIX(v1): invalid rounds use a special-character string as the username (paper V-B credential pool)
            java.util.List<String> specials = new java.util.ArrayList<>();
            for (String c : passwordPool) if (c.matches(".*[\\^=+%*()'\\\\<>&;].*")) specials.add(c);
            // prefer email-shaped strings: many forms validate the email format client-side, so only those
            // invalid credentials actually reach the authentication logic
            java.util.List<String> emailLike = new java.util.ArrayList<>();
            for (String c : specials) if (c.contains("@")) emailLike.add(c);
            if (!emailLike.isEmpty()) specials = emailLike;
            if (!specials.isEmpty()) {
                invalidCandidates = new java.util.ArrayList<>(specials);
                java.util.Collections.shuffle(invalidCandidates);
                String u = invalidCandidates.get(0);
                logInfo("Credential choice: invalid, special-character username");
                return u;
            }
        }
        logInfo("Credential choice: random (likely invalid / special characters)");
        if (!accountPool.isEmpty()) {
            return accountPool.get(new Random().nextInt(accountPool.size()));
        }
        return "testuser@example.com";
    }

    private String getRandomPassword() {
        if (pendingPairedPassword != null) {
            String p = pendingPairedPassword;
            pendingPairedPassword = null;
            return p;
        }
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
        // Stop network chaos testing and restore normal network
        if (networkChaosManager != null) {
            networkChaosManager.stop();
            // Save disruption report
            try {
                // Ensure reports/network directory exists
                File networkReportsDir = new File("reports/network");
                if (!networkReportsDir.exists()) {
                    networkReportsDir.mkdirs();
                }
                
                String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
                String reportPath = "reports/network/network_disruptions_" + timestamp + ".txt";
                networkChaosManager.saveDisruptionReport(reportPath);
                logInfo("Network disruption report saved to: " + reportPath);
            } catch (Exception e) {
                logError("Failed to save network disruption report: " + e.getMessage());
            }
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

    // FIX(v1): before random exploration, try login activities declared in the manifest.
    private boolean tryDirectLoginActivities() {
        try {
            java.util.List<String> candidates = AppLauncher.findLoginActivities(appPath, appPackage);
            logInfo("Manifest login activity candidates: " + candidates);
            for (String cls : candidates) {
                logInfo("Trying direct launch of login activity: " + cls);
                long launchStart = System.currentTimeMillis();
                boolean launched = AppLauncher.launchActivity(appPackage, cls);
                bugdetectors.CrashDetector.markToolInducedWindow(launchStart, System.currentTimeMillis() + 10000);
                if (launched && detectLoginPageWithUI()) {
                    logInfo("Login page reached via direct activity launch: " + cls);
                    return true;
                }
            }
        } catch (Exception e) {
            logError("Direct login activity launch failed: " + e.getMessage());
        }
        return false;
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
                boolean snapshotCreated = snapshotManager.createSnapshot("baseline", "Login page detected via UI manager");
                if (snapshotCreated && screenshotManager != null) {
                    screenshotManager.captureScreenshot("baseline_ui_manager_detection");
                }
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
            logInfo("Google login detected, using Google password: [" + password.length() + " chars]");
        } else if (uiManager.isFacebookLoginDetected()) {
            password = getRandomFacebookPassword();
            logInfo("Facebook login detected, using Facebook password: [" + password.length() + " chars]");
        } else {
            password = getRandomPassword();
            logInfo("Using standard password: [" + password.length() + " chars]");
        }

        return password;
    }

    /**
     * Use UI manager to input credentials with enhanced verification
     */
    private boolean inputCredentialsWithUI(String username, String password) {
        if (uiManager.isGuestMode()) {
            logInfo("Using the credential-free (anonymous/guest) login option");
            return uiManager.guestLogin();
        }
        if (uiManager.isWebMode()) {
            logInfo("Login form is inside a WebView; using DevTools input");
            return uiManager.webLogin(username, password);
        }
        try {
            logInfo("=== Starting Enhanced Credential Input Process ===");
            logInfo("Username to input: " + username);
            logInfo("Password length: " + password.length() + " characters");
            
            // Take screenshot before input
            if (screenshotManager != null) {
                screenshotManager.captureScreenshot("before_credential_input");
            }
            
            // Get UI dump before input for comparison
            String uiDumpBefore = uiManager.getCurrentUIDump();
            
            // Step 1: Input credentials WITHOUT clicking button
            boolean inputSuccess = uiManager.inputCredentialsOnly(username, password);
            if (!inputSuccess) {
                logError("Failed to input credentials");
                return false;
            }
            
            // Step 2: Take screenshot AFTER input but BEFORE clicking button
            if (screenshotManager != null) {
                screenshotManager.captureScreenshot("after_credential_input");
            }
            
            // Step 3: Click login button
            boolean clickSuccess = uiManager.clickLoginButton();
            if (!clickSuccess) {
                logError("Failed to click login button");
                return false;
            }
            
            // Get UI dump after input to verify changes
            String uiDumpAfter = uiManager.getCurrentUIDump();
            
            boolean success = inputSuccess && clickSuccess;
            
            // Verify input by checking UI changes
            boolean inputVerified = verifyCredentialInput(uiDumpBefore, uiDumpAfter, username, password);
            
            if (success && inputVerified) {
                logInfo("✅ UI manager credentials input successful and verified");
                return true;
            } else if (success && !inputVerified) {
                logInfo("⚠️  UI manager reported success but verification failed");
                return false;
            } else {
                logInfo("❌ UI manager credentials input failed");
                return false;
            }
            
        } catch (Exception e) {
            logError("UI manager credentials input failed: " + e.getMessage());
            if (screenshotManager != null) {
                screenshotManager.captureScreenshot("credential_input_error");
            }
            return false;
        }
    }
    
    /**
     * Verify credential input by analyzing UI changes
     */
    private boolean verifyCredentialInput(String uiDumpBefore, String uiDumpAfter, String username, String password) {
        try {
            logInfo("=== Verifying Credential Input ===");
            
            // Check if UI changed (indicates input occurred)
            boolean uiChanged = !uiDumpBefore.equals(uiDumpAfter);
            logInfo("UI changed after input: " + uiChanged);
            
            // Look for username in UI dump (might be visible in some fields)
            boolean usernameVisible = uiDumpAfter.toLowerCase().contains(username.toLowerCase());
            logInfo("Username visible in UI: " + usernameVisible);
            
            // Check for password field indicators (usually shows dots or asterisks)
            boolean passwordFieldFilled = checkPasswordFieldFilled(uiDumpAfter);
            logInfo("Password field appears filled: " + passwordFieldFilled);
            
            // Check for input field focus changes
            boolean focusChanged = checkFocusChanged(uiDumpBefore, uiDumpAfter);
            logInfo("Input focus changed: " + focusChanged);
            
            // Additional verification: check for common input indicators
            boolean hasInputIndicators = checkInputIndicators(uiDumpAfter);
            logInfo("Has input indicators: " + hasInputIndicators);
            
            // Consider input verified if any positive indicator is found
            boolean verified = uiChanged || usernameVisible || passwordFieldFilled || focusChanged || hasInputIndicators;
            
            logInfo("=== Input Verification Result: " + (verified ? "VERIFIED" : "FAILED") + " ===");
            
            return verified;
            
        } catch (Exception e) {
            logError("Error during credential verification: " + e.getMessage());
            return false;
        }
    }
    
    /**
     * Check if password field appears to be filled
     */
    private boolean checkPasswordFieldFilled(String uiDump) {
        // Look for common password field indicators
        return uiDump.contains("••••") || 
               uiDump.contains("****") || 
               uiDump.contains("password") && (uiDump.contains("filled") || uiDump.contains("text="));
    }
    
    /**
     * Check if input focus changed between before and after
     */
    private boolean checkFocusChanged(String before, String after) {
        // Look for focus indicators
        String focusPattern = "focused=";
        int focusCountBefore = countOccurrences(before, focusPattern);
        int focusCountAfter = countOccurrences(after, focusPattern);
        return focusCountBefore != focusCountAfter;
    }
    
    /**
     * Check for general input indicators in UI
     */
    private boolean checkInputIndicators(String uiDump) {
        // Look for signs that input fields have content
        return uiDump.contains("text=\"") && !uiDump.contains("text=\"\"")||  // Non-empty text fields
               uiDump.contains("hint=") ||  // Hint text (often disappears when filled)
               uiDump.contains("content-desc=");  // Content descriptions
    }
    
    /**
     * Count occurrences of a substring
     */
    private int countOccurrences(String text, String pattern) {
        int count = 0;
        int index = 0;
        while ((index = text.indexOf(pattern, index)) != -1) {
            count++;
            index += pattern.length();
        }
        return count;
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

            // Parse Monkey verbose output to track last touch coordinates
            startMonkeyScreenshotWatcher(process);
            return process;
        } catch (Exception e) {
            logError("Error starting Monkey: " + e.getMessage());
            return null;
        }
    }

    // Lightweight watcher: updates lastTouchX/lastTouchY from Monkey output
    private void startMonkeyScreenshotWatcher(Process monkeyProcess) {
        Thread t = new Thread(() -> {
            try (BufferedReader br = new BufferedReader(new InputStreamReader(monkeyProcess.getInputStream()))) {
                String line;
                // Example lines:
                //   Sending Touch (ACTION_DOWN): 540,960
                //   Sending Touch (ACTION_UP): 540,960
                java.util.regex.Pattern p = java.util.regex.Pattern.compile(
                        ".*Sending\\s+Touch.*?:\\s*(\\d+),(\\d+).*"
                );
                while ((line = br.readLine()) != null) {
                    java.util.regex.Matcher m = p.matcher(line);
                    if (m.matches()) {
                        try {
                            lastTouchX = Integer.parseInt(m.group(1));
                            lastTouchY = Integer.parseInt(m.group(2));
                        } catch (NumberFormatException ignore) { /* ignore malformed */ }
                    }
                }
            } catch (Exception ex) {
                logError("Monkey screenshot watcher error: " + ex.getMessage());
            }
        });
        t.setDaemon(true);
        t.start();
    }

    // Enhanced screenshot capture with better organization and reliability
    private void captureScreenshotForStep(int step) {
        try {
            String baseDir = buildScreenshotDirFromApk();
            ensureDirExists(baseDir);

            // Enable show_touches just before capture
            new ProcessBuilder("adb", "shell", "settings", "put", "system", "show_touches", "1")
                    .redirectErrorStream(true).start().waitFor();

            String onDevicePng = "/data/local/tmp/als_step_" + step + ".png";
            int s1 = new ProcessBuilder("adb", "shell", "screencap", "-p", onDevicePng)
                    .redirectErrorStream(true).start().waitFor();
            if (s1 != 0) {
                logError("screencap failed with exit=" + s1 + " for step=" + step);
            } else {
                File out = new File(baseDir, String.format("step_%d.png", step));
                int s2 = new ProcessBuilder("adb", "pull", onDevicePng, out.getAbsolutePath())
                        .redirectErrorStream(true).start().waitFor();
                if (s2 == 0 && out.exists() && out.length() > 0) {
                    logInfo("Saved screenshot: " + out.getAbsolutePath());
                    // Overlay red crosshair if we have last touch coords
                    if (lastTouchX != null && lastTouchY != null) {
                        try {
                            BufferedImage img = ImageIO.read(out);
                            if (img != null) {
                                Graphics2D g2d = img.createGraphics();
                                g2d.setColor(Color.RED);
                                g2d.setStroke(new BasicStroke(3f));
                                int x = Math.max(0, Math.min(lastTouchX, img.getWidth() - 1));
                                int y = Math.max(0, Math.min(lastTouchY, img.getHeight() - 1));
                                int size = 20;
                                g2d.drawLine(x - size, y, x + size, y);
                                g2d.drawLine(x, y - size, x, y + size);
                                g2d.dispose();
                                ImageIO.write(img, "png", out);
                            }
                        } catch (Exception ig) {
                            logError("Failed to annotate screenshot with crosshair: " + ig.getMessage());
                        }
                    }
                } else {
                    logError("Failed to pull screenshot (exit=" + s2 + "): " + out.getAbsolutePath());
                }
            }

            // Disable show_touches immediately after capture
            new ProcessBuilder("adb", "shell", "settings", "put", "system", "show_touches", "0")
                    .redirectErrorStream(true).start().waitFor();

            // Also dump current UI hierarchy for correlation
            String uiDir = baseDir.replace("/screenshot/", "/ui_dump/");
            ensureDirExists(uiDir);
            File uiOut = new File(uiDir, "step_" + step + ".xml");
            String abs = uiOut.getAbsolutePath();
            String onDeviceXml = "/data/local/tmp/als_uidump_" + step + ".xml";
            int d1 = new ProcessBuilder("adb", "shell", "uiautomator", "dump", onDeviceXml)
                    .redirectErrorStream(true).start().waitFor();
            if (d1 != 0) {
                logError("uiautomator dump failed with exit=" + d1 + " for step=" + step);
                return;
            }
            int d2 = new ProcessBuilder("adb", "pull", onDeviceXml, abs)
                    .redirectErrorStream(true).start().waitFor();
            if (d2 == 0 && uiOut.exists() && uiOut.length() > 0) {
                logInfo("Saved UI dump: " + abs);
            } else {
                logError("Failed to save UI dump (exit=" + d2 + "): " + abs);
            }
        } catch (Exception e) {
            logError("Capture failed at step " + step + ": " + e.getMessage());
        }
    }

    // Ensure the device is ready for visible interaction feedback and capturing
    private void ensureDeviceReadyForScreens() {
        try {
            // Wake and unlock
            new ProcessBuilder("adb", "shell", "input", "keyevent", "224").start().waitFor(); // WAKEUP
            new ProcessBuilder("adb", "shell", "wm", "dismiss-keyguard").start().waitFor();
            // Keep screen on longer (30 min)
            new ProcessBuilder("adb", "shell", "settings", "put", "system", "screen_off_timeout", "1800000").start().waitFor();
            // Do NOT enable show_touches globally; it will be toggled only around screenshots
            // Optional: pointer location is noisy; keep off by default
            // new ProcessBuilder("adb", "shell", "settings", "put", "system", "pointer_location", "1").start().waitFor();
        } catch (Exception e) {
            logError("Failed to prepare device for screenshots: " + e.getMessage());
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
        try {
            String projectRoot = new java.io.File(".").getCanonicalPath();
            String roundDir = (currentRound > 0) ? ("round_" + currentRound + "/") : "";
            return new java.io.File(projectRoot, "reports/screenshot/" + base + "/" + roundDir).getAbsolutePath();
        } catch (Exception e) {
            // Fallback to relative if canonical fails
            String roundDir = (currentRound > 0) ? ("/round_" + currentRound) : "";
            return "reports/screenshot/" + base + roundDir + "/";
        }
    }

    /**
     * Smart login success detection using multiple strategies
     * Replaces simple 10-second wait with intelligent detection
     */
    private boolean detectLoginSuccessWithSmartWait() {
        try {
            String previousUiDump = uiManager.getCurrentUIDump();
            long startTime = System.currentTimeMillis();
            int maxWaitSeconds = configLoader.getPostLoginWaitSeconds();
            
            // Poll for login success with smart detection
            for (int i = 0; i < maxWaitSeconds; i++) {
                Thread.sleep(1000); // Check every second
                
                String currentUiDump = uiManager.getCurrentUIDump();
                
                // Use enhanced login success detector
                boolean success = LoginDetectionEnhancer.LoginSuccessDetector.detectLoginSuccess(
                    currentUiDump, previousUiDump, startTime, maxWaitSeconds);
                
                if (success) {
                    logInfo("Login success detected after " + i + " seconds");
                    return true;
                }
                
                // Enhanced error detection - check for various error indicators
                if (currentUiDump != null) {
                    String lowerDump = currentUiDump.toLowerCase();
                    
                    // Common error messages
                    if (lowerDump.contains("error") || 
                        lowerDump.contains("invalid") ||
                        lowerDump.contains("incorrect") ||
                        lowerDump.contains("failed") ||
                        lowerDump.contains("wrong") ||
                        lowerDump.contains("denied") ||
                        lowerDump.contains("unauthorized") ||
                        lowerDump.contains("authentication failed") ||
                        lowerDump.contains("login failed") ||
                        lowerDump.contains("bad credentials") ||
                        lowerDump.contains("username or password") ||
                        lowerDump.contains("try again") ||
                        lowerDump.contains("check your") ||
                        lowerDump.contains("unable to") ||
                        lowerDump.contains("connection error") ||
                        lowerDump.contains("network error") ||
                        lowerDump.contains("timeout")) {
                        logInfo("Login error detected in UI after " + i + " seconds: " + extractErrorMessage(currentUiDump));
                        return false;
                    }
                    
                    // Check for Toast notifications (they appear as android.widget.Toast)
                    if (lowerDump.contains("toast") && 
                        (lowerDump.contains("error") || lowerDump.contains("failed") || lowerDump.contains("wrong") || lowerDump.contains("invalid"))) {
                        logInfo("Toast error notification detected after " + i + " seconds");
                        return false;
                    }
                    
                    // Check for Dialog boxes with error content
                    if (lowerDump.contains("dialog") && 
                        (lowerDump.contains("error") || lowerDump.contains("failed") || lowerDump.contains("wrong"))) {
                        logInfo("Error dialog detected after " + i + " seconds");
                        return false;
                    }
                }
                
                // Update previous dump for next comparison
                previousUiDump = currentUiDump;
                
                // Check for ANR/crash during login
                errorTracker.checkAndRecordErrors(appPackage);
                
                // Additional check: Monitor logcat for Toast messages and other system notifications
                if (i % 2 == 0) { // Check every 2 seconds to avoid overwhelming
                    if (checkLogcatForErrors()) {
                        logInfo("Login error detected via logcat after " + i + " seconds");
                        return false;
                    }
                }
            }
            
            // If we've waited max time, check final state more carefully
            String finalUiDump = uiManager.getCurrentUIDump();
            
            // More robust login success detection
            boolean stillOnLoginPage = finalUiDump != null && (
                finalUiDump.toLowerCase().contains("login") || 
                finalUiDump.toLowerCase().contains("sign") ||
                finalUiDump.contains("login_username") ||
                finalUiDump.contains("login_password") ||
                finalUiDump.contains("login_button")
            );
            
            if (stillOnLoginPage) {
                logInfo("Still on login page after " + maxWaitSeconds + " seconds - login likely failed");
                return false;
            }
            
            // Check if we've moved to a different screen
            boolean loginSuccess = !stillOnLoginPage && 
                                 !finalUiDump.toLowerCase().contains("error") &&
                                 !finalUiDump.toLowerCase().contains("invalid") &&
                                 !finalUiDump.toLowerCase().contains("incorrect");
            
            logInfo("Final login detection result: " + (loginSuccess ? "SUCCESS" : "FAILED"));
            return loginSuccess;
                   
        } catch (Exception e) {
            logError("Error in smart login detection: " + e.getMessage());
            // Fallback to simple wait
            try {
                Thread.sleep(configLoader.getPostLoginWaitSeconds() * 1000L);
            } catch (InterruptedException ie) {
                Thread.currentThread().interrupt();
            }
            return false;
        }
    }
    
    /**
     * Generate appropriate snapshot name based on app package
     */
    private String generateSnapshotName(String packageName) {
        if (packageName == null || packageName.isEmpty()) {
            return "snap_default_login";
        }
        
        // Extract meaningful part from package name
        String[] parts = packageName.split("\\.");
        String appName = parts[parts.length - 1]; // Get last part (usually app name)
        
        // Handle common package patterns
        if (parts.length >= 2) {
            String secondLast = parts[parts.length - 2];
            // For packages like com.company.appname, use company_appname
            if (!secondLast.equals("android") && !secondLast.equals("google")) {
                appName = secondLast + "_" + appName;
            }
        }
        
        return "snap_" + appName.toLowerCase() + "_login";
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

                // Get only the last round's calls (current round)
                List<List<ApiLogAnalyzer.ApiCallEntry>> roundLogs = apiLogAnalyzer.getRoundLogs();
                List<ApiLogAnalyzer.ApiCallEntry> calls = roundLogs.isEmpty() ? 
                    new ArrayList<>() : roundLogs.get(roundLogs.size() - 1);
                
                if (!calls.isEmpty()) {
                    logInfo("Captured " + calls.size() + " API calls in current round");

                    // Use state already determined by Frida agent
                    int knownStateCount = 0;
                    for (ApiLogAnalyzer.ApiCallEntry call : calls) {
                        // Use the state from Frida log if available, otherwise try to determine it
                        String state = call.mappedState;
                        if (state == null || state.equals("Unknown")) {
                            state = stateMachineManager.determineStateFromApiCall(call.methodName,
                                    call.getMethodSignature());
                        } else {
                            knownStateCount++;
                        }
                        stateMachineManager.addObservedState(state);

                        // Only log non-Unknown states or important methods
                        if (!state.equals("Unknown") || call.methodName.contains("onCreate") || 
                            call.methodName.contains("http") || call.methodName.contains("Http")) {
                            logInfo("API call: " + call.className + "." + call.methodName + " -> State: " + state);
                        }
                    }
                    logInfo("Known states from Frida: " + knownStateCount + "/" + calls.size());

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
            // FIX(v1): end the app process before detaching (see FridaManager.startFrida) so the
            // tool's own detach cannot crash the app and be misreported as an app crash.
            if ("app".equalsIgnoreCase(System.getenv("LIFT_RESET_MODE"))) {
                try {
                    new ProcessBuilder("adb", "shell", "am", "force-stop", appPackage)
                        .redirectErrorStream(true).start().waitFor(15, TimeUnit.SECONDS);
                } catch (Exception ignored) { }
            }
            fridaManager.stopFrida();
            logInfo("Frida monitoring stopped");
        } catch (Exception e) {
            logError("Failed to stop Frida monitoring: " + e.getMessage());
        }
    }

    /**
     * Get random Google account
     */
    // placeholder accounts in the pools (demo/test/example addresses) are not real service accounts
    private static String realAccount(List<String> pool) {
        for (String a : pool) {
            String l = a.toLowerCase();
            if (l.matches(".*(demo|test|example|sample|dummy|fake).*") || l.endsWith("@facebook.com")) continue;
            return a;
        }
        return null;
    }

    // FIX(v1): in valid rounds the real service account is used with the password on the same line of the pool;
    // random pool entries (placeholders) are only used when no real account exists or the round is invalid
    private String pickService(List<String> accounts, List<String> passwords, boolean wantPassword, String fallback) {
        String real = realAccount(accounts);
        if (real != null && uiManager.isRoundValid()) {
            int i = accounts.indexOf(real);
            if (!wantPassword) return real;
            if (i >= 0 && i < passwords.size()) return passwords.get(i);
        }
        List<String> pool = wantPassword ? passwords : accounts;
        return pool.isEmpty() ? fallback : pool.get(new Random().nextInt(pool.size()));
    }

    private String getRandomGoogleAccount() { return pickService(googleEmailPool, googlePasswordPool, false, "testuser@gmail.com"); }
    private String getRandomGooglePassword() { return pickService(googleEmailPool, googlePasswordPool, true, "googlepass123"); }
    private String getRandomFacebookAccount() { return pickService(facebookEmailPool, facebookPasswordPool, false, "testuser@facebook.com"); }
    private String getRandomFacebookPassword() { return pickService(facebookEmailPool, facebookPasswordPool, true, "facebookpass123"); }
    
    /**
     * Extract error message from UI dump for better logging
     */
    private String extractErrorMessage(String uiDump) {
        if (uiDump == null) return "Unknown error";
        
        String[] lines = uiDump.split("\n");
        for (String line : lines) {
            String lowerLine = line.toLowerCase();
            if (lowerLine.contains("error") || lowerLine.contains("invalid") || 
                lowerLine.contains("failed") || lowerLine.contains("wrong") ||
                lowerLine.contains("denied") || lowerLine.contains("unauthorized")) {
                // Extract the relevant part of the line
                return line.trim().length() > 100 ? line.trim().substring(0, 100) + "..." : line.trim();
            }
        }
        return "Error detected but message not extracted";
    }
    
    /**
     * Check logcat for Toast messages and other system-level error notifications
     */
    private boolean checkLogcatForErrors() {
        try {
            // Use adb logcat to check for recent Toast messages and errors
            ProcessBuilder pb = new ProcessBuilder("adb", "logcat", "-d", "-t", "10", "*:W");
            Process process = pb.start();
            
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                String lowerLine = line.toLowerCase();
                
                // Check for Toast messages with error content
                if (lowerLine.contains("toast") && 
                    (lowerLine.contains("error") || lowerLine.contains("failed") || 
                     lowerLine.contains("invalid") || lowerLine.contains("wrong") ||
                     lowerLine.contains("authentication") || lowerLine.contains("login"))) {
                    logInfo("Logcat Toast error detected: " + line.trim());
                    return true;
                }
                
                // Check for network errors that might indicate login failure
                if (lowerLine.contains("network") && 
                    (lowerLine.contains("error") || lowerLine.contains("failed") || lowerLine.contains("timeout"))) {
                    logInfo("Logcat network error detected: " + line.trim());
                    return true;
                }
                
                // Check for authentication-related errors
                if (lowerLine.contains("auth") && 
                    (lowerLine.contains("error") || lowerLine.contains("failed") || lowerLine.contains("denied"))) {
                    logInfo("Logcat authentication error detected: " + line.trim());
                    return true;
                }
            }
            
            process.waitFor();
            reader.close();
            
        } catch (Exception e) {
            // Don't log this as error since logcat monitoring is supplementary
            // logError("Failed to check logcat: " + e.getMessage());
        }
        return false;
    }
}