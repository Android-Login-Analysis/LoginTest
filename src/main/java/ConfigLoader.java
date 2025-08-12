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

    // Monkey configuration
    private int monkeyEvents = 50;
    private int monkeyThrottle = 100;
    private int monkeyTouchPercentage = 100;
    private int monkeyScreenshotInterval = 10; // steps per screenshot

    // Detection configuration
    private int detectionLoginTimeout = 10; // seconds
    private int detectionApiInterval = 1; // seconds
    private int detectionCrashInterval = 2; // seconds

    // Frida configuration
    private int fridaTimeout = 30; // seconds
    private int fridaRetryCount = 3;
    private int fridaRetryDelay = 2; // seconds

    // UI element recognition configuration (general English-only defaults)
    private String loginButtonPatterns = "login,log in,log-in,sign in,sign_in,sign-in,submit,enter,continue,continue with,continue_with,proceed,next,done,ok,confirm,authenticate,verify,access,start,get started,let me in,join";
    private String usernameFieldPatterns = "username,user,email,email address,e-mail,login,account,user id,login id,account id,user_id,login_id,email_id,user_name,login_name,phone,phone number,mobile,mobile number,tel,telephone";
    private String passwordFieldPatterns = "password,passwd,pass,pwd,secret,passcode,pin,password1,pwd_field,security,password_field";
    private String googleLoginPatterns = "google,gmail,sign in with google,google sign in,google_sign_in,google_login";
    private String facebookLoginPatterns = "facebook,fb,sign in with facebook,facebook login,facebook_login,fb_login";
    private String loginActivityPatterns = "LoginActivity,SignInActivity,AuthActivity,AuthenticationActivity,LoginFragment,SignInFragment";
    private String loginPagePatterns = "login,signin,auth,authentication,credentials,login_screen,signin_screen";

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
        System.out.println("ConfigLoader: Configuration loaded successfully");
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
                System.out.println("ConfigLoader: Configuration loaded successfully");
            } else {
                System.out.println("ConfigLoader: config.properties not found, using default configuration");
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
    }

    /**
     * Load Frida configurations
     */
    private void loadFridaConfigs() {
        fridaTimeout = Integer.parseInt(config.getProperty("frida.timeout", "30"));
        fridaRetryCount = Integer.parseInt(config.getProperty("frida.retry.count", "3"));
        fridaRetryDelay = Integer.parseInt(config.getProperty("frida.retry.delay", "2"));
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
        return uiClassWhitelist.split(",");
    }

    // =============================================================================
    // Regular expression pattern getter methods
    // =============================================================================

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
}