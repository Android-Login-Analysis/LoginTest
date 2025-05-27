// import io.appium.java_client.AppiumBy;
// import io.appium.java_client.AppiumDriver;
// import io.appium.java_client.PerformsTouchActions;
// import io.appium.java_client.TouchAction;
// import io.appium.java_client.android.AndroidDriver;
// import io.appium.java_client.android.AndroidTouchAction;
// import io.appium.java_client.android.options.UiAutomator2Options;
// import io.appium.java_client.pagefactory.AndroidFindBy;
// //import org.checkerframework.checker.units.qual.A;
// //import org.checkerframework.checker.units.qual.Time;
// import org.openqa.selenium.By;
// import org.openqa.selenium.NoSuchElementException;
// import org.openqa.selenium.WebElement;
// import org.openqa.selenium.interactions.Actions;
// import org.openqa.selenium.remote.DesiredCapabilities;
// import org.openqa.selenium.support.ui.ExpectedConditions;
// import org.openqa.selenium.support.ui.WebDriverWait;
// import org.testng.annotations.AfterClass;
// import org.testng.annotations.AfterTest;
// import org.testng.annotations.BeforeTest;
// import org.testng.annotations.Test;

// import java.io.BufferedReader;
// import java.io.FileReader;
// import java.io.IOException;
// import java.net.MalformedURLException;
// import java.net.URL;
// import java.time.Duration;
// import java.util.ArrayList;
// import java.util.List;
// import java.util.Random;
// import java.util.Timer;
// import java.util.concurrent.TimeUnit;

// public class FirstAndroidTest {
// AppiumDriver driver;
// Process monkeyProcess;

// List<String> accountPool;
// List<String> passwordPool;
// List<String> instancePool;

// // Global variables for tracking retries and results
// int retryCount = 0;
// int maxRetries = 100;
// int totalAttempts = 0;
// int successfulLogins = 0;
// int failedLogins = 0;

// @BeforeTest
// public void setUp() throws MalformedURLException {
// stopMonkey();
// String projectRoot = System.getProperty("user.dir");
// accountPool = readLinesFromFile(projectRoot + "/pools/accounts.txt");
// passwordPool = readLinesFromFile(projectRoot + "/pools/passwords.txt");
// instancePool = readLinesFromFile(projectRoot + "/pools/instances.txt");
// startAppiumSession();
// }

// private void startAppiumSession() throws MalformedURLException {
// DesiredCapabilities caps = new DesiredCapabilities();
// caps.setCapability("platformName", "Android");
// caps.setCapability("appium:automationName", "UiAutomator2");
// caps.setCapability("appium:platformVersion", "14.0");
// caps.setCapability("appium:deviceName", "Android Emulator");
// caps.setCapability("appium:app", System.getProperty("user.dir") +
// "/apps/org.mian.gitnex_550.apk");
// caps.setCapability("appium:appPackage", "org.mian.gitnex");
// caps.setCapability("appium:appActivity",
// "org.mian.gitnex.activities.MainActivity");

// // 基本配置
// caps.setCapability("appium:noReset", true);
// caps.setCapability("appium:newCommandTimeout", 300);

// // 设置 Appium 服务器地址
// URL appiumServer = new URL("http://127.0.0.1:4723/");

// try {
// driver = new AndroidDriver(appiumServer, caps);
// driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
// } catch (Exception e) {
// System.err.println("Failed to start Appium session: " + e.getMessage());
// e.printStackTrace();
// throw e;
// }
// }

// private void restartAppiumSession() throws MalformedURLException {
// System.out.println("Restarting Appium session...");
// driver.quit(); // Quit the existing session
// startAppiumSession();
// }

// private void restoreSnapshot() {
// try {
// System.out.println("Restoring snapshot...");
// // Replace "snap_gitnex_login" with your actual snapshot name
// Runtime.getRuntime().exec("adb emu avd snapshot load snap_gitnex_login");
// TimeUnit.SECONDS.sleep(10); // Wait for emulator to restore the snapshot
// } catch (Exception e) {
// e.printStackTrace();
// }
// }

// @Test
// public void runTest() throws InterruptedException, MalformedURLException {
// // close alert
// if (driver.findElement(By.id("org.mian.gitnex:id/alertTitle")).isDisplayed())
// {
// System.out.println("Attempting to close alert window.");
// driver.findElement(By.id("android:id/button3")).click();
// }
// if (isLoginScreenPresent()) {
// performLogin();
// }

// long startTime = System.currentTimeMillis();
// long duration = 120000;

// startMonkey();
// while (true) {
// if (System.currentTimeMillis() - startTime > duration) {
// System.out.println("Time Run Out, Stop");
// break;
// }
// TimeUnit.SECONDS.sleep(20);
// if (!isLoginScreenPresent()) {
// System.out.println("Login screen not detected, restoring snapshot...");
// stopMonkey();
// restoreSnapshot();
// restartAppiumSession();
// performLogin();
// startMonkey();
// } else {
// System.out.println("Login screen detected");
// }
// }

// // Log final results
// System.out.println("Total login attempts: " + totalAttempts);
// System.out.println("Successful logins: " + successfulLogins);
// System.out.println("Failed logins: " + failedLogins);
// }

// private boolean isLoginScreenPresent() {
// try {
// driver.findElement(By.id("org.mian.gitnex:id/loginMethod"));
// return true;
// } catch (Exception e) {
// return false;
// }
// }

// private void performLogin() {
// boolean loginSuccessful = false;
// retryCount = 0;

// while (!loginSuccessful && retryCount < maxRetries) {
// totalAttempts++;
// String username = getRandomAccount();
// String password = getRandomPassword();
// String instance = getRandomInstance();
// try {
// System.out.println("Attempting to login, try #" + (retryCount + 1));

// System.out.println("Attempting to click on login method selection.");
// driver.findElement(By.id("org.mian.gitnex:id/loginUsernamePassword")).click();

// System.out.println("Attempting to open dropdown menu.");
// driver.findElement(By.id("org.mian.gitnex:id/httpsSpinner")).click();
// driver.findElement(By.id("org.mian.gitnex:id/instance_url")).click();

// System.out.println("Selecting instance URL input field.");
// WebElement element =
// driver.findElement(By.id("org.mian.gitnex:id/instance_url"));
// element.click(); // This click might be redundant if the element is already
// focused.
// driver.executeScript("mobile: hideKeyboard");

// System.out.println("Setting instance URL.");
// element.sendKeys(instance);
// driver.executeScript("mobile: hideKeyboard");

// System.out.println("Selecting username input field.");
// WebElement element1 =
// driver.findElement(By.id("org.mian.gitnex:id/login_uid"));
// element1.click();
// driver.executeScript("mobile: hideKeyboard");

// System.out.println("Entering username.");
// element1.sendKeys(username);
// driver.executeScript("mobile: hideKeyboard");

// System.out.println("Selecting password input field.");
// WebElement element2 =
// driver.findElement(By.id("org.mian.gitnex:id/login_passwd"));
// element2.click();
// driver.executeScript("mobile: hideKeyboard");

// System.out.println("Entering password.");
// element2.sendKeys(password);
// driver.executeScript("mobile: hideKeyboard");

// System.out.println("Attempting to click on login button.");
// driver.findElement(By.id("org.mian.gitnex:id/login_button")).click();
// System.out.println("Wait 5s to login");

// WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
// loginSuccessful = wait.until(ExpectedConditions.or(
// ExpectedConditions.visibilityOfElementLocated(By.id("android:id/autofill_save_icon")),
// ExpectedConditions.visibilityOfElementLocated(By.id("org.mian.gitnex:id/alertTitle")),
// ExpectedConditions.visibilityOfElementLocated(By.id("org.mian.gitnex:id/noData"))))
// != null;

// // Check for possible alert messages indicating login failure
// if
// (driver.findElement(By.id("org.mian.gitnex:id/login_button")).getText().equals("Processing"))
// {
// System.out.println("Login failed, retrying...");
// loginSuccessful = false;
// failedLogins++;
// } else {
// System.out.println("Login process completed successfully.");
// loginSuccessful = true;
// successfulLogins++;
// }

// } catch (Exception e) {
// System.out.println("Error during login process: " + e.getMessage());
// e.printStackTrace();
// failedLogins++;
// }

// retryCount++;
// if (!loginSuccessful && retryCount < maxRetries) {
// System.out.println("Retrying login with new credentials...");
// }
// }

// if (!loginSuccessful) {
// System.out.println("Failed to login after " + maxRetries + " attempts.");
// }
// }

// private List<String> readLinesFromFile(String filePath) {
// List<String> lines = new ArrayList<>();
// try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
// String line;
// while ((line = reader.readLine()) != null) {
// lines.add(line.trim());
// }
// } catch (IOException e) {
// e.printStackTrace();
// }
// return lines;
// }

// private String getRandomAccount() {
// Random rand = new Random();
// return accountPool.get(rand.nextInt(accountPool.size()));
// }

// private String getRandomPassword() {
// Random rand = new Random();
// return passwordPool.get(rand.nextInt(passwordPool.size()));
// }

// private String getRandomInstance() {
// Random rand = new Random();
// return instancePool.get(rand.nextInt(instancePool.size()));
// }

// private void startMonkey() {
// System.out.println("Starting Monkey!");
// try {
// monkeyProcess = Runtime.getRuntime().exec("adb shell monkey -p
// org.mian.gitnex -v --throttle 100 " +
// "--pct-touch 100 --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 --pct-nav 0
// " +
// "--pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 50000");
// } catch (Exception e) {
// e.printStackTrace();
// }
// System.out.println("Monkey Is Done!");
// }

// private void stopMonkey() {
// if (monkeyProcess != null) {
// monkeyProcess.destroy();
// try {
// Runtime.getRuntime().exec("adb shell pkill -f monkey");
// } catch (Exception e) {
// e.printStackTrace();
// }
// System.out.println("Monkey stopped!");
// }
// }

// @AfterTest
// public void tearDown() {
// System.out.println("Total Login Attempts: " + totalAttempts + ", Login
// Success: " + successfulLogins +
// ", Login Failed: " + failedLogins);
// if (null != driver) {
// driver.quit();
// }
// stopMonkey();
// }
// }
