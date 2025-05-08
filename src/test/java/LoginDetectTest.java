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

    @BeforeTest
    public void setUp() throws MalformedURLException {
        stopMonkey();
        String projectRoot = System.getProperty("user.dir");
        accountPool = readLinesFromFile(projectRoot + "/pools/accounts.txt");
        passwordPool = readLinesFromFile(projectRoot + "/pools/passwords.txt");
        instancePool = readLinesFromFile(projectRoot + "/pools/instances.txt");
        // Load third-party login credentials
        // Load third-party login emails and passwords
        googleEmailPool = readLinesFromFile(projectRoot + "/pools/google_accounts.txt");
        googlePasswordPool = readLinesFromFile(projectRoot + "/pools/google_passwords.txt");
        facebookEmailPool = readLinesFromFile(projectRoot + "/pools/facebook_accounts.txt");
        facebookPasswordPool = readLinesFromFile(projectRoot + "/pools/facebook_passwords.txt");

        this.config = new ConfigLoader();
        String regexFilePath = "regex_patterns.txt";  // Path to the regex pattern file
        fridaManager = new FridaManager(regexFilePath);
        // Print all regex patterns loaded
        fridaManager.getRegexPatterns().forEach(System.out::println);
        // Start Frida
        fridaManager.startFrida(app);
        startAppiumSession();
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

        // Store the target app's package and activity for later use
        targetAppPackage = (String) driver.getCapabilities().getCapability("appPackage");
        targetAppActivity = (String) driver.getCapabilities().getCapability("appActivity");

    }

    // Method to check if the current app is the target app
    private boolean isTargetAppInForeground() {
        String currentPackage = driver.getCurrentPackage();
        return currentPackage != null && currentPackage.equals(targetAppPackage);
    }

    // Bring app to the foreground if it is not the current app
    public void bringAppToForeground() {
        if (!isTargetAppInForeground()) {
            System.out.println("App is not in foreground, bringing it to the foreground...");
            Activity activity = new Activity(targetAppPackage, targetAppActivity);
            activity.setStopApp(true);  // Stop the app and restart it
            driver.executeScript("mobile: startActivity", activity);
        } else {
            System.out.println("App is already in foreground.");
        }
    }

    private void restartAppiumSession() throws MalformedURLException {
        System.out.println("Restarting Appium session...");
        driver.quit(); // Quit the existing session
        startAppiumSession();
    }

    private void restoreSnapshot() {
        try {
            System.out.println("Restoring snapshot...");
            Runtime.getRuntime().exec("adb emu avd snapshot load snap_gitnex_login");
            TimeUnit.SECONDS.sleep(30); //
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void runTest() throws MalformedURLException {
        long startTime = System.currentTimeMillis();
        long duration = 3600000;  // Run for 1 hour
        boolean googleLoginInitiated = false;
        boolean facebookLoginInitiated = false;


        while (System.currentTimeMillis() - startTime < duration) {
            if (!isTargetAppInForeground()) {
                System.out.println("App is not in the foreground, bringing it back...");
                bringAppToForeground();
            }
            stopMonkey();
            // First try to collect available login methods
            List<Runnable> loginMethods = new ArrayList<>();
            FindLoginMethod(loginMethods);
            // If no login methods are available, start monkey try to found login page
            if (loginMethods.isEmpty()) {
                System.out.println("No login methods detected, starting monkey to explore the app...");
                // Check every five seconds
                while (loginMethods.isEmpty() && (System.currentTimeMillis() - startTime < duration)) {
                    startMonkey();
                    try {
                        TimeUnit.SECONDS.sleep(5);
                        FindLoginMethod(loginMethods);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                stopMonkey();  // If loginMethods is not empty or time run out, then stop Monkey
            }

            // If time run out still not found login methods, exit the program
            if (loginMethods.isEmpty()) {
                System.out.println("Test failed: No login methods found within the allocated time.");
                tearDown();  // clear
                throw new RuntimeException("Failed to find login methods in the given time frame.");
            } else {
                // Log found login methods
                System.out.println("Detected login methods: ");
                loginMethods.forEach(method -> System.out.println(method.getClass().getSimpleName()));
            }

            // If already found the login methods,start monkey to trigger login method
            while (System.currentTimeMillis() - startTime < duration) {
                startMonkey();
                try {
                    TimeUnit.SECONDS.sleep(5);
                    FindLoginMethod(loginMethods);
                    // Check if currently on the login page
                    if (!isLoginElementPresent()) {
                        System.out.println("Not on login page, restarting app...");
                        restoreSnapshot();
                        restartAppiumSession();
                        // Optionally, restart Frida as needed
                        fridaManager.restartFrida(app);
                        // TODO restart frida
                        break;
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                WebElement clickedElement = getFocusedElement();
                if (clickedElement != null) {
                    // Check if the clicked element is the Google or Facebook login button
                    if (isGoogleLoginButton(clickedElement)) {
                        googleLoginInitiated = true;
                        System.out.println("Google login button clicked. Google login method initiated.");
                        continue;  // Wait for username or password field interaction
                    } else if (isFacebookLoginButton(clickedElement)) {
                        facebookLoginInitiated = true;
                        System.out.println("Facebook login button clicked. Facebook login method initiated.");
                        continue;  // Wait for username or password field interaction
                    }
                    int isUserOrPass = isUsernameOrPassword(clickedElement);
                    if (isUserOrPass != 0) {
                        stopMonkey();
                    }
                    // Process credentials filling if the flags are set
                    if (googleLoginInitiated && isUserOrPass != 0) {
                        String[] credentials = getRandomGoogleCredentials();
                        String key = "";
                        if (isUserOrPass == 1) {
                            key = credentials[0];
                        } else {
                            key = credentials[1];
                        }
                        fillLoginDetails(clickedElement, key);
                        System.out.println("Filled Google login credentials.");
                    } else if (facebookLoginInitiated && isUserOrPass != 0) {
                        String[] credentials = getRandomFacebookCredentials();
                        String key = "";
                        if (isUserOrPass == 1) {
                            key = credentials[0];
                        } else {
                            key = credentials[1];
                        }
                        fillLoginDetails(clickedElement, key);
                        System.out.println("Filled Facebook login credentials.");
                        startMonkey();
                    } else if (isUserOrPass != 0) { // native username password login
                        String key = "";
                        if (isUserOrPass == 1) {
                            key = getRandomAccount();
                        } else {
                            key = getRandomPassword();
                        }
                        fillLoginDetails(clickedElement, key);
                        System.out.println("Filled Native login credentials.");
                    }
                    if (isLoginButton(clickedElement)) {
                        System.out.println("Login button clicked, reset.");
                        googleLoginInitiated = false;
                        facebookLoginInitiated = false;
                    }
                }
                stopMonkey();
            }
        }
        System.out.println("Test completed.");
    }

    private boolean isLoginButton(WebElement element) {
        // Get element's attributes for comparison
        String elementResourceId = element.getAttribute("resource-id");
        String elementName = element.getAttribute("name");
        String elementContentDesc = element.getAttribute("content-desc");
        WebElement LoginField = getCommonLoginField(config.getLoginButtonPattern(), "Login Button field found.", "Login Button not found.");
        return matchesAny(LoginField, elementResourceId, elementName, elementContentDesc);
    }

    private int isUsernameOrPassword(WebElement element) {
        // Fetch the username and password field based on defined patterns
        WebElement usernameField = getCommonLoginField(config.getUsernamePattern(), "Username field found.", "Username field not found.");
        WebElement passwordField = getCommonLoginField(config.getPasswordPattern(), "Password field found.", "Password field not found.");

        // Get element's attributes for comparison
        String elementResourceId = element.getAttribute("resource-id");
        String elementName = element.getAttribute("name");
        String elementContentDesc = element.getAttribute("content-desc");

        // Compare these attributes with username and password fields
        if (matchesAny(usernameField, elementResourceId, elementName, elementContentDesc)) {
            return 1;  // Username field
        } else if (matchesAny(passwordField, elementResourceId, elementName, elementContentDesc)) {
            return 2;  // Password field
        }
        return 0;  // No match
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
        // Implement the logic to determine if the element is the Google login button
        return element.getAttribute("content-desc").contains("Google") || element.getText().contains("Google");
    }

    private boolean isFacebookLoginButton(WebElement element) {
        // Implement the logic to determine if the element is the Facebook login button
        return element.getAttribute("content-desc").contains("Facebook") || element.getText().contains("Facebook");
    }


    private void FindLoginMethod(List<Runnable> loginMethods) {
        if (isGoogleLoginAvailable()) {
            System.out.println("Google login button detected.");
            loginMethods.add(this::handleGoogleLogin);  // Add Google login to available methods
        }
        if (isFacebookLoginAvailable()) {
            System.out.println("Facebook login button detected.");
            loginMethods.add(this::handleFacebookLogin);  // Add Facebook login to available methods
        }
        if (isNativeLoginAvailable()) {
            System.out.println("Native login elements detected.");
            loginMethods.add(this::handleNativeLogin);  // Add Native login to available methods
        }
    }


    private boolean isLoginElementPresent() {
        // Try to find the username field and log the result
        WebElement usernameField = getCommonLoginField(config.getUsernamePattern(), "Username field found.", "Username field not found.");

        // Try to find the password field and log the result
        WebElement passwordField = getCommonLoginField(config.getPasswordPattern(), "Password field found.", "Password field not found.");

        // Try to find the login button and log the result
        WebElement loginButton = getCommonLoginField(config.getLoginButtonPattern(), "Login button found.", "Login button not found.");

        // Check if all necessary elements are present on the same page
        if (usernameField != null && passwordField != null && loginButton != null) {
            return true;
        } else if (usernameField != null && passwordField == null) {
            // If only the username field is present, handle the possibility of a multi-page login process
            return handleMultiPageLogin(usernameField);
        }

        return false;
    }


    // New method to handle multi-page login scenarios
    private boolean handleMultiPageLogin(WebElement usernameField) {
        try {
            // Enter the username and submit
            usernameField.click();
            usernameField.clear();
            usernameField.sendKeys(getRandomAccount());
            driver.executeScript("mobile: hideKeyboard");

            // Click on next/submit if there is a "next" button or auto submission
            WebElement nextButton = safelyFindElement(config.getNextButtonPattern());
            if (nextButton != null) {
                nextButton.click();
            }

            // Wait for the page to load and check if the password field appears
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));  // Adjust wait time as needed
            WebElement passwordField = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(config.getPasswordPattern().toString())));

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
                List<WebElement> elements = driver.findElements(By.xpath("//android.widget.EditText | //android.widget.Button | //android.widget.TextView"));
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
        return null; // Return null if no element is found after retries
    }

    private boolean matchesPattern(WebElement element, Pattern pattern) {
        String resourceId = element.getAttribute("resource-id");
        String name = element.getAttribute("name");
        String contentDesc = element.getAttribute("content-desc");
        String text = element.getText();
        System.out.println("Checking element with Resource-ID: '" + resourceId + "', Name: '" + name + "', Content-Desc: '" + contentDesc + "', Text: '" + text + "'");
        return pattern.matcher(resourceId).matches() || pattern.matcher(name).matches() ||
                pattern.matcher(contentDesc).matches() || pattern.matcher(text).matches();
    }

    public WebElement findElementByPattern(Pattern pattern) {
        List<WebElement> elements = driver.findElements(By.xpath("//android.widget.EditText | //android.widget.Button | //android.widget.TextView"));
        for (WebElement element : elements) {
            System.out.println("element" + element);
            String resourceId = element.getAttribute("resource-id");
            String name = element.getAttribute("name");
            String contentDesc = element.getAttribute("content-desc");
            String text = element.getText();

            System.out.println("Checking element with Resource-ID: '" + resourceId + " name: " + name + "', Content-Desc: '" + contentDesc + "', Text: '" + text + "'");


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
        return driver.switchTo().activeElement();  // Get currently focused element
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
        return isLoginElementPresent();  // Use the existing method to check for native login elements
    }

    private void handleNativeLogin() {
        WebElement focusedElement = getFocusedElement();
    }

    // Check if the Google login button is available on the screen
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

    // Check if the Facebook login button is available on the screen
    private boolean isFacebookLoginAvailable() {
        try {
            WebElement facebookLoginButton = driver.findElement(By.xpath("//*[contains(@text, 'Facebook')" +
                    " or contains(@content-desc, 'Facebook')]"));
            return facebookLoginButton != null;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    // Method to randomly select Google credentials from the pool
    private String[] getRandomGoogleCredentials() {
        Random rand = new Random();
        String email = googleEmailPool.get(rand.nextInt(googleEmailPool.size()));
        String password = googlePasswordPool.get(rand.nextInt(googlePasswordPool.size()));
        return new String[]{email, password};  // Return both email and password
    }

    // Method to randomly select Facebook email and password independently
    private String[] getRandomFacebookCredentials() {
        Random rand = new Random();
        String email = facebookEmailPool.get(rand.nextInt(facebookEmailPool.size()));
        String password = facebookPasswordPool.get(rand.nextInt(facebookPasswordPool.size()));
        return new String[]{email, password};  // Return both email and password
    }

    // Modify Google login handling to use credentials from the pool
    public void handleGoogleLogin() {
        try {
            // Switch to Google login WebView
            driver.context("WEBVIEW_com.google.android.gms");  // Switch to WebView context

            // Get random Google credentials
            String[] googleCredentials = getRandomGoogleCredentials();
            String email = googleCredentials[0];
            String password = googleCredentials[1];

            // Find the email input field and enter the email
            WebElement emailField = driver.findElement(By.xpath("//input[@type='email']"));
            emailField.sendKeys(email);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            // Wait for the password input field to load
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            WebElement passwordField = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@type='password']")));
            passwordField.sendKeys(password);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            // After completing login, return to the native app context
            driver.context("NATIVE_APP");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Similar logic can be used for handling Facebook login
    public void handleFacebookLogin() {
        try {
            // Switch to Facebook login WebView
            driver.context("WEBVIEW_com.facebook");  // Switch to WebView context

            // Get random Facebook credentials
            String[] facebookCredentials = getRandomFacebookCredentials();
            String email = facebookCredentials[0];
            String password = facebookCredentials[1];

            // Find the email input field and enter the email
            WebElement emailField = driver.findElement(By.xpath("//input[@type='email']"));
            emailField.sendKeys(email);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            // Wait for the password input field to load
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            WebElement passwordField = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@type='password']")));
            passwordField.sendKeys(password);
            driver.findElement(By.xpath("//span[text()='Next']")).click();

            // After completing login, return to the native app context
            driver.context("NATIVE_APP");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @AfterTest
    public void tearDown() {
        System.out.println("Total Login Attempts: " + totalAttempts + ", Login Success: " + successfulLogins +
                ", Login Failed: " + failedLogins);
        if (null != driver) {
            driver.quit();
        }
        stopMonkey();
    }
}
