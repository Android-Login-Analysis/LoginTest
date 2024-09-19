
import io.appium.java_client.android.Activity;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.ExecutesMethod.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.ExecuteMethod;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import io.appium.java_client.android.AndroidDriver;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;
import java.util.ArrayList;
import java.util.*;
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LoginDetectTest {
    AndroidDriver driver;
    Process monkeyProcess;

    private ConfigLoader config;

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

    @BeforeTest
    public void setUp() throws MalformedURLException {
        stopMonkey();
        String projectRoot = System.getProperty("user.dir");
        accountPool = readLinesFromFile(projectRoot + "/pools/accounts.txt");
        passwordPool = readLinesFromFile(projectRoot +"/pools/passwords.txt");
        instancePool = readLinesFromFile(projectRoot +"/pools/instances.txt");
        // Load third-party login credentials
        // Load third-party login emails and passwords
        googleEmailPool = readLinesFromFile(projectRoot + "/pools/google_emails.txt");
        googlePasswordPool = readLinesFromFile(projectRoot + "/pools/google_passwords.txt");
        facebookEmailPool = readLinesFromFile(projectRoot + "/pools/facebook_emails.txt");
        facebookPasswordPool = readLinesFromFile(projectRoot + "/pools/facebook_passwords.txt");

        this.config = new ConfigLoader();
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
        caps.setCapability("appium:appPackage", "org.mian.gitnex");
        caps.setCapability("appium:appActivity", "org.mian.gitnex.activities.MainActivity");

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

        while (System.currentTimeMillis() - startTime < duration) {
            if (!isTargetAppInForeground()) {
                System.out.println("App is not in the foreground, bringing it back...");
                bringAppToForeground();
            }
            // Collect available login methods
            List<Runnable> loginMethods = new ArrayList<>();

            if (isGoogleLoginAvailable()) {
                System.out.println("Google login button detected.");
                loginMethods.add(() -> handleGoogleLogin());  // Add Google login to available methods
            }
            if (isFacebookLoginAvailable()) {
                System.out.println("Facebook login button detected.");
                loginMethods.add(() -> handleFacebookLogin());  // Add Facebook login to available methods
            }
            if (isNativeLoginAvailable()) {
                System.out.println("Native login elements detected.");
                loginMethods.add(() -> handleNativeLogin());  // Add Native login to available methods
            }

            // If no login methods are available, restore environment and restart the session
            if (loginMethods.isEmpty()) {
                System.out.println("No login methods detected, restoring environment...");
                stopMonkey();
                restoreSnapshot();
                restartAppiumSession();
                continue;
            }

            // Randomly select a login method from available methods
            Random rand = new Random();
            Runnable selectedLoginMethod = loginMethods.get(rand.nextInt(loginMethods.size()));

            // Stop Monkey, execute the randomly selected login method, and restart Monkey
            stopMonkey();
            selectedLoginMethod.run();  // Execute the selected login method
            startMonkey();

            try {
                Thread.sleep(50);  // Monitor every 50ms
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        System.out.println("Test completed.");
    }


    private boolean isLoginElementPresent() {
        WebElement usernameField = safelyFindElement(config.getUsernamePattern());
        WebElement passwordField = safelyFindElement(config.getPasswordPattern());
        WebElement loginButton = safelyFindElement(config.getLoginButtonPattern());

        // Check if both username and password fields are present on the same page
        if (usernameField != null && passwordField != null && loginButton != null) {
            return true;
        } else if (usernameField != null && passwordField == null) {
            // If only the username field is present, wait for a page transition
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
    private WebElement safelyFindElement(Pattern pattern) {
        try {
            return findElementByPattern(pattern);
        } catch (NoSuchElementException e) {
            System.out.println("Element not found for pattern: " + pattern);
            return null;
        }
    }

    public WebElement findElementByPattern(Pattern pattern) {
        List<WebElement> elements = driver.findElements(By.xpath("//*"));
        for (WebElement element : elements) {
            if (pattern.matcher(element.getAttribute("id")).matches() ||
                    pattern.matcher(element.getAttribute("name")).matches() ||
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



    private void fillLoginDetails(WebElement element) {
        String fieldId = element.getAttribute("resource-id");
        Matcher usernameMatcher = config.getUsernamePattern().matcher(fieldId);
        Matcher passwordMatcher = config.getPasswordPattern().matcher(fieldId);
        if (usernameMatcher.find()) {
            element.click();
            driver.executeScript("mobile: hideKeyboard");
            element.clear();
            driver.executeScript("mobile: hideKeyboard");
            element.sendKeys(getRandomAccount());  // Fetch random username
            driver.executeScript("mobile: hideKeyboard");
        } else if (passwordMatcher.find()) {
            element.click();
            driver.executeScript("mobile: hideKeyboard");
            element.clear();
            driver.executeScript("mobile: hideKeyboard");
            element.sendKeys(getRandomPassword());  // Fetch random password
            driver.executeScript("mobile: hideKeyboard");
        }
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
                    "--pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 50000");
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
        if (isTargetElement(focusedElement)) {
            fillLoginDetails(focusedElement);  // Fill login details (username/password)
        }
    }

    // Check if the Google login button is available on the screen
    private boolean isGoogleLoginAvailable() {
        try {
            WebElement googleLoginButton = driver.findElement(By.xpath("//*[contains(@text, 'Google') " +
                    "or contains(@content-desc, 'Google')]"));
            return googleLoginButton != null;
        } catch (NoSuchElementException e) {
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
        return new String[] { email, password };  // Return both email and password
    }

    // Method to randomly select Facebook email and password independently
    private String[] getRandomFacebookCredentials() {
        Random rand = new Random();
        String email = facebookEmailPool.get(rand.nextInt(facebookEmailPool.size()));
        String password = facebookPasswordPool.get(rand.nextInt(facebookPasswordPool.size()));
        return new String[] { email, password };  // Return both email and password
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
            WebDriverWait wait = new WebDriverWait(driver, 10);
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
    public void tearDown(){
        System.out.println("Total Login Attempts: " + totalAttempts + ", Login Success: "+ successfulLogins +
                ", Login Failed: "+failedLogins );
        if (null !=driver){
            driver.quit();
        }
        stopMonkey();
    }
}
