import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Pattern;

/**
 * Configuration loader - responsible for loading and managing all configuration
 * parameters
 */
public class ConfigLoader {
    private Properties config;
    private String appPackage = "org.mian.gitnex"; // Default app package
    private String apkPath = "apps/org.mian.gitnex_550.apk"; // Default APK path
    
    // Test configuration
    private int loginTimeoutSeconds = 10;

    // Test time configuration
    private int testRounds = 3;
    private long testTimeout = 60000; // milliseconds
    private long testDuration = 30000; // milliseconds
    private int testRoundInterval = 2; // seconds
    private int testInputInterval = 500; // milliseconds
    private int testLoginWait = 5; // seconds
    private int testSnapshotWait = 30; // seconds
    // Post-login handling
    private int postLoginWaitSeconds = 10; // seconds
    private boolean restoreOnMonkeyExhausted = true;

    // Monkey configuration
    private int monkeyEvents = 50;
    private int monkeyThrottle = 100;
    private int monkeyTouchPercentage = 100;
    private int monkeyScreenshotInterval = 10; // steps per screenshot

    // Detection configuration
    private int detectionLoginTimeout = 10; // seconds
    private int detectionApiInterval = 1; // seconds
    private int detectionCrashInterval = 2; // seconds
    // Credential selection configuration
    private double credentialsUseValidPairProbability = 0.5; // default 50%

    // Frida configuration
    private int fridaTimeout = 30; // seconds
    private int fridaRetryCount = 3;
    private int fridaRetryDelay = 2; // seconds
    private String fridaScriptPath = "src/main/resources/login_agent.js"; // seconds
    
    // Static analysis configuration
    private String staticAnalysisOutputDir = "reports/static_analysis";
    private String staticAnalysisOutputPattern = "{apk_name}.json";
    private String staticAnalysisPatternsPath = "src/main/resources/regex_patterns.txt";
    private int staticAnalysisVersion = 1;

    // UI element recognition configuration (general English-only defaults)
    private String loginButtonPatterns = "login,log in,log-in,sign in,sign_in,sign-in,submit,enter,continue,continue with,continue_with,proceed,next,done,ok,confirm,authenticate,verify,access,start,get started,let me in,join";
    private String usernameFieldPatterns = "username,user,email,email address,e-mail,login,account,user id,login id,account id,user_id,login_id,email_id,user_name,login_name,phone,phone number,mobile,mobile number,tel,telephone";
    private String passwordFieldPatterns = "password,passwd,pass,pwd,secret,passcode,pin,password1,pwd_field,security,password_field";
    private String googleLoginPatterns = "google,gmail,sign in with google,google sign in,google_sign_in,google_login";
    private String facebookLoginPatterns = "facebook,fb,sign in with facebook,facebook login,facebook_login,fb_login";
    private String loginActivityPatterns = "LoginActivity,SignInActivity,AuthActivity,AuthenticationActivity,LoginFragment,SignInFragment";
    private String loginPagePatterns = "login,signin,auth,authentication,credentials,login_screen,signin_screen";

    // SSO source exclusion (to avoid false positives from IME/launcher etc.)
    private String ssoExcludeSubstrings = "inputmethod,keyboard,ime,launcher";

    // Static analysis IR keywords (comma-separated). Keep empty by default; configurable via properties.
    private String staticIrKeywords = "";
    
    // Network chaos testing configuration
    private boolean networkChaosEnabled = false;
    private int networkGoodRatio = 40;
    private int networkBadRatio = 60;
    private int networkSwitchInterval = 60; // seconds
    private String networkChaosMode = "random";
    private String networkDisruptionMethodsStr = "disable_data,slow_network";
    private int networkDisruptionMinDuration = 10; // seconds
    private int networkDisruptionMaxDuration = 30; // seconds

    // Detection tuning
    private int detectionLoginRetries = 3; // attempts
    private int detectionLoginRetryIntervalMs = 800; // ms between dumps
    private int loginVoteThreshold = 2; // of [username,password,button]

    // UI class whitelist
    private String uiClassWhitelist = "EditText,TextInputEditText,android.widget.EditText,androidx.appcompat.widget.AppCompatEditText,WebView,android.webkit.WebView";

    // Regular expression patterns
    private String usernamePatternStr = ".*(user|email|account).*id|.*(user|usr|login|email|account|member).*name|.*username.*";
    private String passwordPatternStr = ".*(password|pwd|pass|secret).*";
    private String loginButtonPatternStr = ".*(login|sign_in|submit|go|enter|continue_button).*";
    private String nextButtonPatternStr = ".*(next|continue|proceed).*";
    private String loginActivityPatternStr = ".*LoginActivity|.*AuthActivity|.*SignInActivity|.*AuthenticationActivity";

    public ConfigLoader() {
        loadConfigFromProperties();
        // Only log once during initialization
    }

    /**
     * Load configuration from config.properties
     */
    private void loadConfigFromProperties() {
        config = new Properties();
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
            if (input != null) {
                config.load(input);
                loadAppConfigs();
                loadTimeConfigs();
                loadMonkeyConfigs();
                loadDetectionConfigs();
                loadFridaConfigs();
                loadUIElementConfigs();
                loadStaticAnalysisConfigs();
                loadNetworkChaosConfigs();
                // Configuration loaded - avoid excessive logging
            } else {
                System.err.println("ConfigLoader: config.properties not found, using default configuration");
            }
        } catch (IOException e) {
            System.err.println("ConfigLoader: Failed to load config.properties: " + e.getMessage());
        }
    }

    /**
     * Load app related configurations
     */
    private void loadAppConfigs() {
        appPackage = config.getProperty("app.package", "org.mian.gitnex");
        apkPath = config.getProperty("app.path", apkPath);
    }

    /**
     * Load time related configurations
     */
    private void loadTimeConfigs() {
        testRounds = Integer.parseInt(config.getProperty("test.rounds", "3"));
        testTimeout = Long.parseLong(config.getProperty("test.timeout", "60000"));
        testDuration = Long.parseLong(config.getProperty("test.duration", "30000"));
        testRoundInterval = Integer.parseInt(config.getProperty("test.round.interval", "2"));
        testInputInterval = Integer.parseInt(config.getProperty("test.input.interval", "500"));
        testLoginWait = Integer.parseInt(config.getProperty("test.login.wait", "5"));
        testSnapshotWait = Integer.parseInt(config.getProperty("test.snapshot.wait", "30"));
        loginTimeoutSeconds = Integer.parseInt(config.getProperty("detection.login.timeout", "10"));
        postLoginWaitSeconds = Integer.parseInt(config.getProperty("post.login.wait.seconds", "10"));
        restoreOnMonkeyExhausted = Boolean.parseBoolean(config.getProperty("monkey.restore.on.exhausted", "true"));
    }

    /**
     * Load Monkey configurations
     */
    private void loadMonkeyConfigs() {
        monkeyEvents = Integer.parseInt(config.getProperty("monkey.events", "50"));
        monkeyThrottle = Integer.parseInt(config.getProperty("monkey.throttle", "100"));
        monkeyTouchPercentage = Integer.parseInt(config.getProperty("monkey.touch.percentage", "100"));
        monkeyScreenshotInterval = Integer.parseInt(config.getProperty("monkey.screenshot.interval", "100"));
    }

    /**
     * Load detection configurations
     */
    private void loadDetectionConfigs() {
        detectionLoginTimeout = Integer.parseInt(config.getProperty("detection.login.timeout", "10"));
        detectionApiInterval = Integer.parseInt(config.getProperty("detection.api.interval", "1"));
        detectionCrashInterval = Integer.parseInt(config.getProperty("detection.crash.interval", "2"));
        detectionLoginRetries = Integer.parseInt(config.getProperty("detection.login.retries", String.valueOf(detectionLoginRetries)));
        detectionLoginRetryIntervalMs = Integer
                .parseInt(config.getProperty("detection.login.retry.interval.ms", String.valueOf(detectionLoginRetryIntervalMs)));
        loginVoteThreshold = Integer
                .parseInt(config.getProperty("detection.login.vote.threshold", String.valueOf(loginVoteThreshold)));
        try {
            String p = config.getProperty("credentials.use_valid_pair_probability", String.valueOf(credentialsUseValidPairProbability));
            if (p != null) {
                double v = Double.parseDouble(p);
                // clamp to [0,1]
                if (v < 0.0) v = 0.0;
                if (v > 1.0) v = 1.0;
                credentialsUseValidPairProbability = v;
            }
        } catch (Exception ignore) {
            // keep default
        }
    }

    /**
     * Load Frida configurations
     */
    private void loadFridaConfigs() {
        fridaTimeout = Integer.parseInt(config.getProperty("frida.timeout", "30"));
        fridaRetryCount = Integer.parseInt(config.getProperty("frida.retry.count", "3"));
        fridaRetryDelay = Integer.parseInt(config.getProperty("frida.retry.delay", "2"));
        fridaScriptPath = config.getProperty("frida.script.path", "src/main/resources/login_agent.js");
    }

    /**
     * Load UI element recognition configurations
     */
    private void loadUIElementConfigs() {
        loginButtonPatterns = config.getProperty("ui.login.button.patterns", loginButtonPatterns);
        usernameFieldPatterns = config.getProperty("ui.username.field.patterns", usernameFieldPatterns);
        passwordFieldPatterns = config.getProperty("ui.password.field.patterns", passwordFieldPatterns);
        googleLoginPatterns = config.getProperty("ui.google.login.patterns", googleLoginPatterns);
        facebookLoginPatterns = config.getProperty("ui.facebook.login.patterns", facebookLoginPatterns);
        loginActivityPatterns = config.getProperty("ui.login.activity.patterns", loginActivityPatterns);
        loginPagePatterns = config.getProperty("ui.login.page.patterns", loginPagePatterns);
        uiClassWhitelist = config.getProperty("ui.class.whitelist", uiClassWhitelist);
        ssoExcludeSubstrings = config.getProperty("ui.sso.exclude.substrings", ssoExcludeSubstrings);
    }

    /**
     * Load static analysis configurations
     */
    private void loadStaticAnalysisConfigs() {
        staticIrKeywords = config.getProperty("static.ir.keywords", staticIrKeywords);
        staticAnalysisOutputDir = config.getProperty("static.analysis.output.dir", staticAnalysisOutputDir);
        staticAnalysisOutputPattern = config.getProperty("static.analysis.output.pattern", staticAnalysisOutputPattern);
        staticAnalysisPatternsPath = config.getProperty("static.analysis.patterns.path", staticAnalysisPatternsPath);
        staticAnalysisVersion = Integer.parseInt(config.getProperty("static.analysis.version", String.valueOf(staticAnalysisVersion)));
    }
    
    /**
     * Load network chaos testing configurations
     */
    private void loadNetworkChaosConfigs() {
        networkChaosEnabled = Boolean.parseBoolean(config.getProperty("network.chaos.enabled", "false"));
        networkGoodRatio = Integer.parseInt(config.getProperty("network.good.ratio", "40"));
        networkBadRatio = Integer.parseInt(config.getProperty("network.bad.ratio", "60"));
        networkSwitchInterval = Integer.parseInt(config.getProperty("network.switch.interval", "60"));
        networkChaosMode = config.getProperty("network.chaos.mode", "random");
        networkDisruptionMethodsStr = config.getProperty("network.disruption.methods", "disable_data,slow_network");
        networkDisruptionMinDuration = Integer.parseInt(config.getProperty("network.disruption.min.duration", "10"));
        networkDisruptionMaxDuration = Integer.parseInt(config.getProperty("network.disruption.max.duration", "30"));
    }

    // =============================================================================
    // Time configuration getter methods
    // =============================================================================

    public int getLoginTimeoutSeconds() {
        return loginTimeoutSeconds;
    }

    public int getTestRounds() {
        return testRounds;
    }

    public long getTestTimeout() {
        return testTimeout;
    }

    public long getTestDuration() {
        return testDuration;
    }

    public int getTestRoundInterval() {
        return testRoundInterval;
    }

    public int getTestInputInterval() {
        return testInputInterval;
    }

    public int getTestLoginWait() {
        return testLoginWait;
    }

    public int getTestSnapshotWait() {
        return testSnapshotWait;
    }

    public int getPostLoginWaitSeconds() {
        return postLoginWaitSeconds;
    }

    public boolean isRestoreOnMonkeyExhausted() {
        return restoreOnMonkeyExhausted;
    }

    // =============================================================================
    // Monkey configuration getter methods
    // =============================================================================

    public int getMonkeyEvents() {
        return monkeyEvents;
    }

    public int getMonkeyThrottle() {
        return monkeyThrottle;
    }

    public int getMonkeyTouchPercentage() {
        return monkeyTouchPercentage;
    }

    public int getMonkeyScreenshotInterval() {
        return monkeyScreenshotInterval;
    }

    // =============================================================================
    // Detection configuration getter methods
    // =============================================================================

    public int getDetectionLoginTimeout() {
        return detectionLoginTimeout;
    }

    public int getDetectionApiInterval() {
        return detectionApiInterval;
    }

    public int getDetectionCrashInterval() {
        return detectionCrashInterval;
    }

    public int getDetectionLoginRetries() {
        return detectionLoginRetries;
    }

    public int getDetectionLoginRetryIntervalMs() {
        return detectionLoginRetryIntervalMs;
    }

    public int getLoginVoteThreshold() {
        return loginVoteThreshold;
    }

    /**
     * Probability [0,1] of using a known valid (username,password) pair when available.
     */
    public double getCredentialsUseValidPairProbability() {
        return credentialsUseValidPairProbability;
    }

    // =============================================================================
    // Frida configuration getter methods
    // =============================================================================

    public int getFridaTimeout() {
        return fridaTimeout;
    }

    public int getFridaRetryCount() {
        return fridaRetryCount;
    }

    public int getFridaRetryDelay() {
        return fridaRetryDelay;
    }
    
    public String getFridaScriptPath() {
        return fridaScriptPath;
    }

    // =============================================================================
    // UI element recognition configuration getter methods
    // =============================================================================

    public String getLoginButtonPatterns() {
        return loginButtonPatterns;
    }

    public String getUsernameFieldPatterns() {
        return usernameFieldPatterns;
    }

    public String getPasswordFieldPatterns() {
        return passwordFieldPatterns;
    }

    public String getGoogleLoginPatterns() {
        return googleLoginPatterns;
    }

    public String getFacebookLoginPatterns() {
        return facebookLoginPatterns;
    }

public String getLoginActivityPatterns() {
    return loginActivityPatterns;
}

public String getLoginPagePatterns() {
    return loginPagePatterns;
}

public String[] getUiClassWhitelist() {
    if (uiClassWhitelist == null || uiClassWhitelist.trim().isEmpty()) {
        return new String[0];
    }
    return uiClassWhitelist.split(",");
}

public String[] getSsoExcludeSubstrings() {
    if (ssoExcludeSubstrings == null || ssoExcludeSubstrings.trim().isEmpty()) {
        return new String[0];
    }
    return ssoExcludeSubstrings.split(",");
}

    public Pattern getUsernamePattern() {
        return Pattern.compile(usernamePatternStr, Pattern.CASE_INSENSITIVE);
    }

    public Pattern getPasswordPattern() {
        return Pattern.compile(passwordPatternStr, Pattern.CASE_INSENSITIVE);
    }

    public Pattern getLoginButtonPattern() {
        return Pattern.compile(loginButtonPatternStr, Pattern.CASE_INSENSITIVE);
    }

    public Pattern getNextButtonPattern() {
        return Pattern.compile(nextButtonPatternStr, Pattern.CASE_INSENSITIVE);
    }

    public Pattern getLoginActivityPattern() {
        return Pattern.compile(loginActivityPatternStr, Pattern.CASE_INSENSITIVE);
    }

    // =============================================================================
    // Configuration validation and printing methods
    // =============================================================================

    /**
     * Validate the configuration
     */
    public boolean validateConfigs() {
        if (testRounds <= 0) {
            System.err.println("Error: Test rounds must be greater than 0");
            return false;
        }

        if (testDuration <= 0) {
            System.err.println("Error: Test duration must be greater than 0");
            return false;
        }

        if (monkeyEvents <= 0) {
            System.err.println("Error: Monkey events must be greater than 0");
            return false;
        }

        if (fridaTimeout <= 0) {
            System.err.println("Error: Frida timeout must be greater than 0");
            return false;
        }

        System.out.println("Configuration validation passed");
        return true;
    }

    /**
     * Print configuration summary
     */
    public void printConfigSummary() {
        System.out.println("=== Configuration Summary ===");
        System.out.println("Test Rounds: " + testRounds);
        System.out.println("Duration per Round: " + testDuration + "ms");
        System.out.println("Round Interval: " + testRoundInterval + "s");
        System.out.println("Login Timeout: " + loginTimeoutSeconds + "s");
        System.out.println("Monkey Events: " + monkeyEvents);
        System.out.println("Monkey Delay: " + monkeyThrottle + "ms");
        System.out.println("Frida Timeout: " + fridaTimeout + "s");
        System.out.println("Frida Retry Count: " + fridaRetryCount);
        System.out.println("==================");
    }

    public String getAppPackage() {
        return appPackage;
    }

    public String getApkPath() {
        return apkPath;
    }
    
    // Static analysis configuration getters
    public String getStaticAnalysisOutputDir() {
        return staticAnalysisOutputDir;
    }
    
    public String getStaticAnalysisOutputPattern() {
        return staticAnalysisOutputPattern;
    }
    
    public String getStaticAnalysisPatternsPath() {
        return staticAnalysisPatternsPath;
    }
    
    public String[] getStaticIrKeywords() {
        if (staticIrKeywords == null || staticIrKeywords.trim().isEmpty()) {
            return new String[0];
        }
        return staticIrKeywords.split(",");
    }
    
    /**
     * Generate static analysis result path based on APK path and configuration
     */
    public String getStaticAnalysisResultPath(String apkPath) {
        try {
            File apk = new File(apkPath);
            String name = apk.getName();
            int dot = name.lastIndexOf('.');
            String apkName = (dot > 0) ? name.substring(0, dot) : name;
            
            // Replace placeholders in pattern
            String fileName = staticAnalysisOutputPattern
                .replace("{apk_name}", apkName)
                .replace("{version}", String.valueOf(staticAnalysisVersion));
            
            // Create output directory
            File dir = new File(staticAnalysisOutputDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
            return new File(dir, fileName).getPath();
        } catch (Exception e) {
            // Fallback to default
            return "reports/static_analysis/analysis_result.json";
        }
    }
    
    public int getStaticAnalysisVersion() {
        return staticAnalysisVersion;
    }
    
    // =============================================================================
    // Network chaos configuration getter methods
    // =============================================================================
    
    public boolean isNetworkChaosEnabled() {
        return networkChaosEnabled;
    }
    
    public int getNetworkGoodRatio() {
        return networkGoodRatio;
    }
    
    public int getNetworkBadRatio() {
        return networkBadRatio;
    }
    
    public int getNetworkSwitchInterval() {
        return networkSwitchInterval;
    }
    
    public String getNetworkChaosMode() {
        return networkChaosMode;
    }
    
    public java.util.List<String> getNetworkDisruptionMethods() {
        return java.util.Arrays.asList(networkDisruptionMethodsStr.split(","));
    }
    
    public int getNetworkDisruptionMinDuration() {
        return networkDisruptionMinDuration;
    }
    
    public int getNetworkDisruptionMaxDuration() {
        return networkDisruptionMaxDuration;
    }
}