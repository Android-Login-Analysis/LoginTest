import io.appium.java_client.android.Activity;
import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Map;
import java.util.HashMap;

public class LoginDetectTest {

    String app = "org.mian.gitnex";
    String activity = "org.mian.gitnex.activities.MainActivity";
    AndroidDriver driver;
    Process monkeyProcess;
    List<String> accountPool;
    List<String> passwordPool;
    List<String> instancePool;
    List<String> googleEmailPool;
    List<String> googlePasswordPool;
    List<String> facebookEmailPool;
    List<String> facebookPasswordPool;
    // Global variables for tracking retries and results
    int retryCount = 0;
    int maxRetries = 100;
    int totalAttempts = 0;
    int successfulLogins = 0;
    int failedLogins = 0;
    String targetAppPackage;
    String targetAppActivity;
    private ConfigLoader config;

    private FridaManager fridaManager;
    private ApiLogAnalyzer apiLogAnalyzer;
    private LoginReportManager reportManager;
    private String currentRoundCredentials = "Not Available"; // For tracking credentials used in current round

    // Default paths, can be made configurable
    private String fridaAgentJsPath = "src/main/resources/login_agent.js"; // Path in resources directory
    private String fridaLogFilePath = "src/main/resources/frida_api_log.txt"; // Log file in resources directory
    private String regexPatternsFilePathConfig = "src/main/resources/regex_patterns.txt"; // Regex patterns file in
                                                                                          // resources directory

    private Map<String, List<String>> validStateTransitions;
    private boolean currentRoundUsedSpecialChars = false; // For Credential Rejection Oracle

    @BeforeTest
    public void setUp() throws MalformedURLException, IOException {
        stopMonkey();
        String projectRoot = System.getProperty("user.dir");
        // Construct absolute paths if needed, or ensure files are in expected locations
        String actualRegexPath = projectRoot + File.separator + regexPatternsFilePathConfig;
        String actualAgentPath = projectRoot + File.separator + fridaAgentJsPath;
        String actualLogPath = projectRoot + File.separator + fridaLogFilePath;

        accountPool = readLinesFromFile(projectRoot + "/pools/accounts.txt");
        passwordPool = readLinesFromFile(projectRoot + "/pools/passwords.txt");
        instancePool = readLinesFromFile(projectRoot + "/pools/instances.txt");
        googleEmailPool = readLinesFromFile(projectRoot + "/pools/google_accounts.txt");
        googlePasswordPool = readLinesFromFile(projectRoot + "/pools/google_passwords.txt");
        facebookEmailPool = readLinesFromFile(projectRoot + "/pools/facebook_accounts.txt");
        facebookPasswordPool = readLinesFromFile(projectRoot + "/pools/facebook_passwords.txt");

        this.config = new ConfigLoader();
        // Initialize FridaManager with paths
        fridaManager = new FridaManager(actualRegexPath, actualAgentPath, actualLogPath, app);
        // ApiLogAnalyzer uses the same regex file but processes it differently
        apiLogAnalyzer = new ApiLogAnalyzer(actualRegexPath);

        // Initialize report manager
        reportManager = new LoginReportManager();
        System.out.println("Report will be generated at: " + reportManager.getReportFilePath());

        System.out.println("ApiLogAnalyzer loaded regex patterns from: " + actualRegexPath);
        // System.out.println("FridaManager will use agent: " + actualAgentPath + " and
        // log to: " + actualLogPath);
        // System.out.println("Frida agent will be initialized with JSON: " +
        // fridaManager.getApiRegexPatternsJsonString());

        startAppiumSession();

        if (targetAppPackage != null && !targetAppPackage.isEmpty()) {
            // FridaManager now internally uses the JSON string it prepared.
            fridaManager.startFrida(targetAppPackage);
        } else {
            System.err.println("Target app package is null, Frida not started.");
        }
        initializeValidStateTransitions();
    }

    private void startAppiumSession() throws MalformedURLException {
        DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("platformName", "Android");
        caps.setCapability("appium:automationName", "UiAutomator2");
        caps.setCapability("appium:platformVersion", "15.0");
        caps.setCapability("appium:deviceName", "Android Emulator");
        caps.setCapability("appium:app", System.getProperty("user.dir") +
                "/apps/org.mian.gitnex_550.apk");
        caps.setCapability("appium:appPackage", app);
        caps.setCapability("appium:appActivity", activity);

        driver = new AndroidDriver(new URL("http://127.0.0.1:4723/"), caps);

        targetAppPackage = (String) driver.getCapabilities().getCapability("appPackage");
        targetAppActivity = (String) driver.getCapabilities().getCapability("appActivity");
    }

    private boolean isTargetAppInForeground() {
        String currentPackage = driver.getCurrentPackage();
        return currentPackage != null && currentPackage.equals(targetAppPackage);
    }

    public void bringAppToForeground() {
        if (!isTargetAppInForeground()) {
            System.out.println("App is not in foreground, bringing it to the foreground...");
            Activity activity = new Activity(targetAppPackage, targetAppActivity);
            activity.setStopApp(true);
            driver.executeScript("mobile: startActivity", activity);
        } else {
            System.out.println("App is already in foreground.");
        }
    }

    private void restartAppiumSession() throws MalformedURLException {
        System.out.println("Restarting Appium session...");
        driver.quit();
        startAppiumSession();
    }

    private void restoreSnapshot() {
        try {
            System.out.println("Restoring snapshot...");
            Runtime.getRuntime().exec("adb emu avd snapshot load snap_gitnex_login");
            TimeUnit.SECONDS.sleep(30);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initializeValidStateTransitions() {
        validStateTransitions = new HashMap<>();

        // Pre-Login Phase
        validStateTransitions.put("InitialState", List.of("CheckingToken", "CredentialInput")); // App start might go to
                                                                                                // check token or
                                                                                                // directly to input if
                                                                                                // no token exists
        validStateTransitions.put("CheckingToken", List.of("LoggedIn_Via_Token", "CredentialInput")); // Result of token
                                                                                                      // check
        // "LoggedIn_Via_Token" would be a specific success state if token is valid

        validStateTransitions.put("CredentialInput", List.of("EncodingCredentials", "CredentialFormatError"));
        validStateTransitions.put("EncodingCredentials", List.of("Authenticating")); // Assuming encoding always leads
                                                                                     // to auth attempt if successful
        validStateTransitions.put("CredentialFormatError", List.of("CredentialInput"));

        // Login Phase
        validStateTransitions.put("Authenticating", List.of("CheckingCredentials")); // Initial step of authentication
        validStateTransitions.put("CheckingCredentials",
                List.of("ServiceUnavailable_Auth", "InvalidCredentials", "CheckingMFASettings")); // Outcomes of
                                                                                                  // credential check

        validStateTransitions.put("ServiceUnavailable_Auth", List.of("CredentialInput", "InitialState")); // Or retry
                                                                                                          // Authenticating
        validStateTransitions.put("InvalidCredentials", List.of("CredentialInput"));

        validStateTransitions.put("CheckingMFASettings", List.of("MFACodePending", "LoggedIn_NoMFA")); // MFA check
                                                                                                       // result
        // "LoggedIn_NoMFA" is success if MFA is not needed

        validStateTransitions.put("MFACodePending", List.of("SendingMFACode"));
        validStateTransitions.put("SendingMFACode", List.of("MFAVerification", "ServiceUnavailable_MFA_Send"));
        validStateTransitions.put("ServiceUnavailable_MFA_Send", List.of("MFACodePending")); // Retry sending or inform
                                                                                             // user

        validStateTransitions.put("MFAVerification", List.of("VerifyingMFA"));
        validStateTransitions.put("VerifyingMFA",
                List.of("ServiceUnavailable_MFA_Verify", "MFAError", "LoggedIn_WithMFA"));
        validStateTransitions.put("ServiceUnavailable_MFA_Verify", List.of("MFAVerification")); // Retry verification or
                                                                                                // inform user
        validStateTransitions.put("MFAError", List.of("MFACodePending"));

        // Post-Login Phase
        // These are various ways login can be considered successful from different
        // paths.
        // You might consolidate them into a single "LoggedIn" state if the subsequent
        // APIs are identical.
        validStateTransitions.put("LoggedIn_Via_Token", List.of("AppMainScreen")); // Successful login via token
        validStateTransitions.put("LoggedIn_NoMFA", List.of("AppMainScreen")); // Successful login without MFA
        validStateTransitions.put("LoggedIn_WithMFA", List.of("AppMainScreen")); // Successful login with MFA

        // "AppMainScreen" could be a generic state representing the app's main
        // interface post-login.
        // From AppMainScreen, a logout could lead back to "InitialState" or
        // "CredentialInput".
        validStateTransitions.put("AppMainScreen", List.of("UserLogout", "InitialState"));
        validStateTransitions.put("UserLogout", List.of("InitialState", "CredentialInput"));

        System.out.println("Initialized valid state transitions based on the diagram.");
        System.out.println("Total states with defined outgoing transitions: " + validStateTransitions.size());
        if (validStateTransitions.isEmpty()) {
            System.err.println("Warning: Valid state transitions map is empty after initialization!");
        }
    }

    private boolean containsSpecialCharacters(String s) {
        if (s == null || s.trim().isEmpty()) {
            return false;
        }
        // Define what you consider special characters, e.g., not alphanumeric
        // This pattern matches if there is any character that is NOT a letter or digit.
        Pattern specialCharsPattern = Pattern.compile("[^a-zA-Z0-9]");
        return specialCharsPattern.matcher(s).find();
    }

    private void analyzeRoundLogs() {
        System.out.println("--- Analyzing Logs for Current Round ---");
        try {
            apiLogAnalyzer.parseLogFile(fridaLogFilePath);
            List<ApiLogAnalyzer.ApiCallEntry> calls = apiLogAnalyzer.getApiCallLog();
            if (calls.isEmpty()) {
                System.out.println("No API calls captured by Frida for this round or log file is empty.");
                return;
            }

            System.out.println("Mapped API calls for the round:");
            calls.forEach(System.out::println);

            List<String> observedStates = apiLogAnalyzer.getObservedStateSequence();
            System.out.println("Observed state sequence: " + observedStates);

            if (validStateTransitions.isEmpty()) {
                System.err.println("Valid State Transitions not defined! Cannot check for incorrect navigation flow.");
            } else {
                List<String> navigationErrors = apiLogAnalyzer.findIncorrectTransitions(observedStates,
                        validStateTransitions);

                // Report navigation flow errors
                if (!navigationErrors.isEmpty()) {
                    System.err.println("LOGIN BUG DETECTED: Incorrect Navigation Flow detected:");
                    for (String error : navigationErrors) {
                        System.err.println(error);
                        reportManager.reportNavigationFlowError(
                                error,
                                String.join(" -> ", observedStates),
                                currentRoundCredentials);
                    }
                } else {
                    System.out.println("Navigation flow appears normal.");
                }
            }

            // Check for credential rejection patterns in state sequence
            if (currentRoundUsedSpecialChars && observedStates.contains("CredentialFormatError")) {
                System.out.println("Special character rejection pattern detected in API sequence.");
                reportManager.reportCredentialRejection(
                        currentRoundCredentials,
                        true);
            }

            // Check for API-based timeout indicators
            if (observedStates.contains("Authenticating") && !observedStates.contains("LoginSuccess")) {
                // Check time difference between first Authenticating state and last state
                long authStartTime = -1;
                long authEndTime = -1;

                for (int i = 0; i < calls.size(); i++) {
                    ApiLogAnalyzer.ApiCallEntry entry = calls.get(i);
                    if (entry.mappedState.equals("Authenticating") && authStartTime == -1) {
                        authStartTime = entry.timestamp;
                    }
                    // Keep updating the end time
                    authEndTime = entry.timestamp;
                }

                if (authStartTime != -1 && authEndTime != -1) {
                    long authDuration = authEndTime - authStartTime;
                    int timeoutThresholdMs = 10000; // 10 seconds

                    if (authDuration > timeoutThresholdMs) {
                        System.err.println("LOGIN BUG DETECTED: Authentication process appears to have taken too long: "
                                + authDuration + "ms");
                        reportManager.reportLoginTimeout(authDuration, currentRoundCredentials);
                    }
                }
            }

        } catch (IOException e) {
            System.err.println("Error analyzing round logs: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private void checkCrashAndAnrLogs() {
        System.out.println("Checking logcat for crashes and ANRs...");
        try {
            Process process = Runtime.getRuntime().exec("adb logcat -d -e \"FATAL EXCEPTION\" -e \"ANR in\"");
            BufferedReader reader = new BufferedReader(new java.io.InputStreamReader(process.getInputStream()));
            String line;
            boolean crashDetected = false;
            boolean anrDetected = false;
            StringBuilder crashInfo = new StringBuilder();
            StringBuilder anrInfo = new StringBuilder();

            while ((line = reader.readLine()) != null) {
                if (line.contains("FATAL EXCEPTION")) {
                    System.err.println("LOGIN BUG DETECTED: Crash detected in logcat: " + line);
                    crashInfo.append(line).append("\n");
                    crashDetected = true;
                }
                if (line.contains("ANR in") && line.contains(targetAppPackage)) {
                    System.err.println("LOGIN BUG DETECTED: ANR detected in logcat: " + line);
                    anrInfo.append(line).append("\n");
                    anrDetected = true;
                }
            }
            reader.close();
            process.waitFor();

            // Report detected issues
            if (crashDetected) {
                reportManager.reportCrash(crashInfo.toString(), currentRoundCredentials);
            } else {
                System.out.println("No new FATAL EXCEPTIONs in logcat dump.");
            }

            if (anrDetected) {
                reportManager.reportANR(anrInfo.toString(), currentRoundCredentials);
            } else {
                System.out.println("No new ANRs for " + targetAppPackage + " in logcat dump.");
            }

        } catch (IOException | InterruptedException e) {
            System.err.println("Error reading or processing logcat output: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Test
    public void runTest() throws MalformedURLException, IOException, InterruptedException {
        long testStartTime = System.currentTimeMillis();
        long testDuration = 3600000;
        boolean googleLoginInitiated = false;
        boolean facebookLoginInitiated = false;

        try {
            Runtime.getRuntime().exec("adb logcat -c");
        } catch (IOException e) {
            e.printStackTrace();
        }

        while (System.currentTimeMillis() - testStartTime < testDuration) {
            long roundStartTime = System.currentTimeMillis();
            System.out.println("--- Starting new test round --- " + retryCount);
            totalAttempts++;
            currentRoundUsedSpecialChars = false;
            currentRoundCredentials = "Not Available";

            if (!isTargetAppInForeground()) {
                System.out.println("App is not in the foreground, bringing it back...");
                bringAppToForeground();
                TimeUnit.SECONDS.sleep(2);
            }
            stopMonkey();
            new File(fridaLogFilePath).delete();
            fridaManager.restartFrida(targetAppPackage);

            List<Runnable> loginMethods = new ArrayList<>();
            FindLoginMethod(loginMethods);

            if (loginMethods.isEmpty()) {
                System.out.println("No login methods detected directly, starting monkey to explore the app...");
                long monkeyStartTime = System.currentTimeMillis();
                while (loginMethods.isEmpty() && (System.currentTimeMillis() - monkeyStartTime < 30000)
                        && (System.currentTimeMillis() - testStartTime < testDuration)) {
                    startMonkey();
                    try {
                        TimeUnit.SECONDS.sleep(5);
                        FindLoginMethod(loginMethods);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        break;
                    }
                }
                stopMonkey();
            }

            if (loginMethods.isEmpty()) {
                System.out.println("Test round failed: No login methods found for app: " + targetAppPackage);
                restoreSnapshot();
                restartAppiumSession();
                fridaManager.restartFrida(targetAppPackage);
                retryCount++;
                if (retryCount > maxRetries) {
                    System.err.println("Max retries reached for finding login methods. Ending test.");
                    break;
                }
                continue;
            }

            System.out.println("Detected login methods: ");
            loginMethods.forEach(method -> System.out.println(method.getClass().getSimpleName()));

            boolean onLoginPage = isLoginElementPresent();

            long interactionStartTime = System.currentTimeMillis();
            while (System.currentTimeMillis() - interactionStartTime < 60000
                    && (System.currentTimeMillis() - testStartTime < testDuration)) {
                if (!isTargetAppInForeground()) {
                    bringAppToForeground();
                    TimeUnit.SECONDS.sleep(2);
                }
                startMonkey();
                try {
                    TimeUnit.SECONDS.sleep(5);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                }
                stopMonkey();

                if (!isLoginElementPresent()) {
                    System.out.println(
                            "Not on a recognized login page (UI check). Might have logged in or navigated away.");
                    break;
                }

                WebElement focusedElement = getFocusedElement();
                WebElement clickedElement = focusedElement;

                if (clickedElement != null) {
                    System.out.println("Monkey possibly interacted with: " + clickedElement.getTagName() + " Text:"
                            + clickedElement.getText());
                    if (isGoogleLoginButton(clickedElement) && !googleLoginInitiated) {
                        googleLoginInitiated = true;
                        System.out.println("Google login button targeted. Attempting Google login flow.");
                    } else if (isFacebookLoginButton(clickedElement) && !facebookLoginInitiated) {
                        facebookLoginInitiated = true;
                        System.out.println("Facebook login button targeted. Attempting Facebook login flow.");
                    }

                    int credentialFieldType = isUsernameOrPassword(clickedElement);
                    if (credentialFieldType != 0) {
                        String keyValue;
                        if (googleLoginInitiated) {
                            String[] creds = getRandomGoogleCredentials();
                            keyValue = (credentialFieldType == 1) ? creds[0] : creds[1];
                            currentRoundCredentials = "Google: " + creds[0] + " / " + creds[1];
                            System.out.println("Filling Google credential (type " + credentialFieldType + ")");
                        } else if (facebookLoginInitiated) {
                            String[] creds = getRandomFacebookCredentials();
                            keyValue = (credentialFieldType == 1) ? creds[0] : creds[1];
                            currentRoundCredentials = "Facebook: " + creds[0] + " / " + creds[1];
                            System.out.println("Filling Facebook credential (type " + credentialFieldType + ")");
                        } else {
                            String username = "";
                            String password = "";
                            if (credentialFieldType == 1) {
                                keyValue = getRandomAccount();
                                username = keyValue;
                            } else {
                                keyValue = getRandomPassword();
                                password = keyValue;
                                if (containsSpecialCharacters(keyValue)) {
                                    System.out.println("Password with special characters selected for this attempt.");
                                    currentRoundUsedSpecialChars = true;
                                }
                            }
                            currentRoundCredentials = "Standard: " + username + " / " + password;
                            System.out.println(
                                    "Filling Native credential (type " + credentialFieldType + "): " + keyValue);
                        }
                        fillLoginDetails(clickedElement, keyValue);
                    }

                    if (isLoginButton(clickedElement)) {
                        System.out.println("Login button targeted/clicked by Monkey. Login attempt initiated.");
                        long clickTime = System.currentTimeMillis();
                        clickedElement.click();

                        int loginTimeoutSeconds = 10; // Defaulting to 10 seconds
                        TimeUnit.SECONDS.sleep(loginTimeoutSeconds / 2);

                        long disappearTime = -1;
                        try {
                            if (clickedElement.isDisplayed()) {
                                System.out.println("Login button still visible after click and wait.");
                            } else {
                                disappearTime = System.currentTimeMillis();
                                System.out.println("Login button disappeared. Potential login success/navigation.");
                            }
                        } catch (StaleElementReferenceException | NoSuchElementException e) {
                            disappearTime = System.currentTimeMillis();
                            System.out.println(
                                    "Login button became stale/disappeared. Potential login success/navigation.");
                        }

                        long loginDurationMs = (disappearTime != -1) ? (disappearTime - clickTime)
                                : (System.currentTimeMillis() - clickTime);

                        if (loginDurationMs > loginTimeoutSeconds * 1000) {
                            System.err.println("LOGIN BUG DETECTED: Potential Login Delay/Timeout (UI). Duration: "
                                    + loginDurationMs + "ms");
                            reportManager.reportLoginTimeout(loginDurationMs, currentRoundCredentials);
                            failedLogins++;
                        }

                        googleLoginInitiated = false;
                        facebookLoginInitiated = false;
                        break;
                    }
                }
            }

            stopMonkey();
            System.out.println("--- End of Interaction for Round ---");

            // Check crash and ANR logs after each round
            checkCrashAndAnrLogs();

            // Analyze API logs captured by Frida for this round
            analyzeRoundLogs();

            if (!isLoginElementPresent() && isTargetAppInForeground()) {
                System.out.println("UI indicates potential login success (login elements gone).");
                successfulLogins++;
            } else if (isLoginElementPresent()) {
                System.out.println("UI indicates still on login page or returned to it.");
            }

            System.out.println("Preparing for next round...");
            restoreSnapshot();
            restartAppiumSession();
            fridaManager.restartFrida(targetAppPackage);

            retryCount = 0;
            System.out.println("Round completed. Total attempts: " + totalAttempts + ", Success (UI hint): "
                    + successfulLogins + ", Failed (UI hint): " + failedLogins);
            System.out.println("---------------------------------------");
            System.out.println("Test round completed in " + (System.currentTimeMillis() - roundStartTime) + "ms");
            TimeUnit.SECONDS.sleep(5);
        }

        // At the end of all test rounds, write the summary report
        reportManager.writeTestSummary(totalAttempts, successfulLogins, failedLogins);
    }

    private boolean isLoginButton(WebElement element) {
        if (element == null)
            return false;
        return matchesPattern(element, config.getLoginButtonPattern());
    }

    private int isUsernameOrPassword(WebElement element) {
        if (element == null)
            return 0;
        if (matchesPattern(element, config.getUsernamePattern()))
            return 1;
        if (matchesPattern(element, config.getPasswordPattern()))
            return 2;
        return 0;
    }

    private boolean matchesAny(WebElement field, String resourceId, String name, String contentDesc) {
        if (field != null) {
            String fieldResourceId = field.getAttribute("resource-id");
            String fieldName = field.getAttribute("name");
            String fieldContentDesc = field.getAttribute("content-desc");
            return (fieldResourceId != null && fieldResourceId.equals(resourceId)) ||
                    (fieldName != null && fieldName.equals(name)) ||
                    (fieldContentDesc != null && fieldContentDesc.equals(contentDesc));
        }
        return false;
    }

    private boolean isGoogleLoginButton(WebElement element) {
        if (element == null)
            return false;
        String text = element.getText();
        String contentDesc = element.getAttribute("content-desc");
        return (text != null && text.toLowerCase().contains("google")) ||
                (contentDesc != null && contentDesc.toLowerCase().contains("google"));
    }

    private boolean isFacebookLoginButton(WebElement element) {
        if (element == null)
            return false;
        String text = element.getText();
        String contentDesc = element.getAttribute("content-desc");
        return (text != null && text.toLowerCase().contains("facebook")) ||
                (contentDesc != null && contentDesc.toLowerCase().contains("facebook"));
    }

    private void FindLoginMethod(List<Runnable> loginMethods) {
        if (isGoogleLoginAvailable()) {
            System.out.println("Google login button detected.");
            loginMethods.add(this::handleGoogleLogin);
        }
        if (isFacebookLoginAvailable()) {
            System.out.println("Facebook login button detected.");
            loginMethods.add(this::handleFacebookLogin);
        }
        if (isNativeLoginAvailable()) {
            System.out.println("Native login elements detected.");
            loginMethods.add(this::handleNativeLogin);
        }
    }

    private boolean isLoginElementPresent() {
        WebElement usernameField = getCommonLoginField(config.getUsernamePattern(), "Username field found.",
                "Username field not found.");
        WebElement passwordField = getCommonLoginField(config.getPasswordPattern(), "Password field found.",
                "Password field not found.");
        WebElement loginButton = getCommonLoginField(config.getLoginButtonPattern(), "Login button found.",
                "Login button not found.");

        if (usernameField != null && passwordField != null && loginButton != null) {
            return true;
        } else if (usernameField != null && passwordField == null) {
            return handleMultiPageLogin(usernameField);
        }

        return false;
    }

    private boolean handleMultiPageLogin(WebElement usernameField) {
        try {
            usernameField.click();
            usernameField.clear();
            usernameField.sendKeys(getRandomAccount());
            driver.executeScript("mobile: hideKeyboard");

            WebElement nextButton = safelyFindElement(config.getNextButtonPattern());
            if (nextButton != null) {
                nextButton.click();
            }

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            WebElement passwordField = wait.until(
                    ExpectedConditions.presenceOfElementLocated(By.xpath(config.getPasswordPattern().toString())));

            return passwordField != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean isLoginScreenPresent() {
        try {
            String currentActivity = driver.currentActivity();
            assert currentActivity != null;
            return config.getLoginActivityPattern().matcher(currentActivity).matches();
        } catch (Exception e) {
            return false;
        }
    }

    private WebElement getCommonLoginField(Pattern config, String x, String x1) {
        WebElement usernameField = safelyFindElement(config);
        if (usernameField != null) {
            System.out.println(x);
        } else {
            System.out.println(x1);
        }
        return usernameField;
    }

    private WebElement safelyFindElement(Pattern pattern) {
        final int MAX_TRIES = 3;
        for (int attempt = 0; attempt < MAX_TRIES; attempt++) {
            try {
                List<WebElement> elements = driver.findElements(
                        By.xpath("//android.widget.EditText | //android.widget.Button | //android.widget.TextView"));
                for (WebElement element : elements) {
                    if (matchesPattern(element, pattern)) {
                        return element;
                    }
                }
                System.out.println("No element matches the given pattern: " + pattern);
            } catch (StaleElementReferenceException e) {
                System.out.println("Encountered StaleElementReferenceException, retrying...");
            } catch (NoSuchElementException e) {
                System.out.println("Element not found for pattern: " + pattern);
            }
        }
        return null;
    }

    private boolean matchesPattern(WebElement element, Pattern pattern) {
        String resourceId = element.getAttribute("resource-id");
        String name = element.getAttribute("name");
        String contentDesc = element.getAttribute("content-desc");
        String text = element.getText();
        System.out.println("Checking element with Resource-ID: '" + resourceId + "', Name: '" + name
                + "', Content-Desc: '" + contentDesc + "', Text: '" + text + "'");
        return pattern.matcher(resourceId).matches() || pattern.matcher(name).matches() ||
                pattern.matcher(contentDesc).matches() || pattern.matcher(text).matches();
    }

    public WebElement findElementByPattern(Pattern pattern) {
        List<WebElement> elements = driver.findElements(
                By.xpath("//android.widget.EditText | //android.widget.Button | //android.widget.TextView"));
        for (WebElement element : elements) {
            System.out.println("element" + element);
            String resourceId = element.getAttribute("resource-id");
            String name = element.getAttribute("name");
            String contentDesc = element.getAttribute("content-desc");
            String text = element.getText();

            System.out.println("Checking element with Resource-ID: '" + resourceId + " name: " + name
                    + "', Content-Desc: '" + contentDesc + "', Text: '" + text + "'");

            if (pattern.matcher(element.getAttribute("resource-id")).matches() ||
                    pattern.matcher(element.getAttribute("name")).matches() ||
                    pattern.matcher(element.getAttribute("content-desc")).matches() ||
                    pattern.matcher(element.getText()).matches()) {
                return element;
            }
        }
        return null;
    }

    private WebElement getFocusedElement() {
        return driver.switchTo().activeElement();
    }

    private boolean isTargetElement(WebElement element) {
        String elementId = element.getAttribute("resource-id");
        if (elementId != null) {
            Matcher usernameMatcher = config.getUsernamePattern().matcher(elementId);
            Matcher passwordMatcher = config.getPasswordPattern().matcher(elementId);
            return usernameMatcher.find() || passwordMatcher.find();
        }
        return false;
    }

    private void fillLoginDetails(WebElement element, String key) {
        element.click();
        driver.executeScript("mobile: hideKeyboard");
        element.clear();
        driver.executeScript("mobile: hideKeyboard");
        element.sendKeys(key);
        driver.executeScript("mobile: hideKeyboard");
    }

    private List<String> readLinesFromFile(String filePath) {
        List<String> lines = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                lines.add(line.trim());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return lines;
    }

    private String getRandomAccount() {
        Random rand = new Random();
        return accountPool.get(rand.nextInt(accountPool.size()));
    }

    private String getRandomPassword() {
        Random rand = new Random();
        return passwordPool.get(rand.nextInt(passwordPool.size()));
    }

    private String getRandomInstance() {
        Random rand = new Random();
        return instancePool.get(rand.nextInt(instancePool.size()));
    }

    private void startMonkey() {
        System.out.println("Starting Monkey!");
        try {
            monkeyProcess = Runtime.getRuntime().exec("adb shell monkey -p org.mian.gitnex -v --throttle 100 " +
                    "--pct-touch 100 --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 --pct-nav 0 " +
                    "--pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 1");
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Monkey Is Done!");
    }

    private void stopMonkey() {
        if (monkeyProcess != null) {
            monkeyProcess.destroy();
            try {
                Runtime.getRuntime().exec("adb shell pkill -f monkey");
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("Monkey stopped!");
        }
    }

    private boolean isNativeLoginAvailable() {
        return isLoginElementPresent();
    }

    private void handleNativeLogin() {
        WebElement focusedElement = getFocusedElement();
    }

    private boolean isGoogleLoginAvailable() {
        try {
            WebElement googleLoginButton = driver.findElement(By.xpath("//*[contains(@text, 'Google') " +
                    "or contains(@content-desc, 'Google')]"));
            return googleLoginButton != null;
        } catch (NoSuchElementException e) {
            System.out.println("Google login button not found.");
            e.printStackTrace();
            return false;
        }
    }

    private boolean isFacebookLoginAvailable() {
        try {
            WebElement facebookLoginButton = driver.findElement(By.xpath("//*[contains(@text, 'Facebook')" +
                    " or contains(@content-desc, 'Facebook')]"));
            return facebookLoginButton != null;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    private String[] getRandomGoogleCredentials() {
        Random rand = new Random();
        String email = googleEmailPool.get(rand.nextInt(googleEmailPool.size()));
        String password = googlePasswordPool.get(rand.nextInt(googlePasswordPool.size()));
        return new String[] { email, password };
    }

    private String[] getRandomFacebookCredentials() {
        Random rand = new Random();
        String email = facebookEmailPool.get(rand.nextInt(facebookEmailPool.size()));
        String password = facebookPasswordPool.get(rand.nextInt(facebookPasswordPool.size()));
        return new String[] { email, password };
    }

    public void handleGoogleLogin() {
        try {
            driver.context("WEBVIEW_com.google.android.gms");

            String[] googleCredentials = getRandomGoogleCredentials();
            String email = googleCredentials[0];
            String password = googleCredentials[1];

            WebElement emailField = driver.findElement(By.xpath("//input[@type='email']"));
            emailField.sendKeys(email);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            WebElement passwordField = wait
                    .until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@type='password']")));
            passwordField.sendKeys(password);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            driver.context("NATIVE_APP");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void handleFacebookLogin() {
        try {
            driver.context("WEBVIEW_com.facebook");

            String[] facebookCredentials = getRandomFacebookCredentials();
            String email = facebookCredentials[0];
            String password = facebookCredentials[1];

            WebElement emailField = driver.findElement(By.xpath("//input[@type='email']"));
            emailField.sendKeys(email);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            WebElement passwordField = wait
                    .until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@type='password']")));
            passwordField.sendKeys(password);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            driver.context("NATIVE_APP");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @AfterTest
    public void tearDown() {
        System.out.println("--- Test Execution Summary ---");
        System.out.println("Total Login Attempts (Rounds): " + totalAttempts);
        System.out.println("Successful Logins (UI Heuristic): " + successfulLogins);
        System.out.println("Failed Logins (UI Heuristic / Timeout): " + failedLogins);

        if (null != driver) {
            driver.quit();
        }
        stopMonkey();
        if (fridaManager != null) {
            fridaManager.stopFrida();
        }
        System.out.println("--- Test Suite Finished ---");
    }
}
