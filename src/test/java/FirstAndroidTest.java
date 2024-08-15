import io.appium.java_client.AppiumBy;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.PerformsTouchActions;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidTouchAction;
import io.appium.java_client.android.options.UiAutomator2Options;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.checkerframework.checker.units.qual.A;
import org.checkerframework.checker.units.qual.Time;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;
import java.util.Timer;
import java.util.concurrent.TimeUnit;

public class FirstAndroidTest {
    AppiumDriver driver;
    Process monkeyProcess;

    @BeforeTest
    public void setUp() throws MalformedURLException {
        stopMonkey();
        DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("platformName","Android");
        caps.setCapability("appium:automationName","UiAutomator2");
        caps.setCapability("appium:platformVersion","14.0");
        caps.setCapability("appium:deviceName","Android Emulator");
        caps.setCapability("appium:app",System.getProperty("user.dir")+
                "/apps/org.mian.gitnex_550.apk");
        caps.setCapability("appium:appPackage", "org.mian.gitnex");
        caps.setCapability("appium:appActivity", "org.mian.gitnex.activities.MainActivity");

        driver = new AppiumDriver(new URL("http://127.0.0.1:4723/"),caps);
    }
    @Test

    public void runTest() throws InterruptedException {
        // close alert
        if (driver.findElement(By.id("org.mian.gitnex:id/alertTitle")).isDisplayed()){
            System.out.println("Attempting to close alert window.");
            driver.findElement(By.id("android:id/button3")).click();
        }
        if (isLoginScreenPresent()) {
            performLogin();
        }

        long startTime = System.currentTimeMillis();
        long duration = 120000;

        startMonkey();
        while (true) {
            if (System.currentTimeMillis() - startTime > duration) {
                System.out.println("Time Run Out, Stop");
                break;
            }
            TimeUnit.SECONDS.sleep(3);
            if (isLoginScreenPresent()) {
                stopMonkey();
                performLogin();
                startMonkey();
            }
        }
    }

    private boolean isLoginScreenPresent() {
        try {
            driver.findElement(By.id("org.mian.gitnex:id/loginMethod"));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private void performLogin() {
        try {
            System.out.println("Attempting to click on login method selection.");
            driver.findElement(By.id("org.mian.gitnex:id/loginUsernamePassword")).click();

            System.out.println("Attempting to open dropdown menu.");
            driver.findElement(By.id("org.mian.gitnex:id/httpsSpinner")).click();
            driver.findElement(By.id("org.mian.gitnex:id/instance_url")).click();

            System.out.println("Selecting instance URL input field.");
            WebElement element = driver.findElement(By.id("org.mian.gitnex:id/instance_url"));
            element.click(); // This click might be redundant if the element is already focused.
            driver.executeScript("mobile: hideKeyboard");

            System.out.println("Setting instance URL.");
            element.sendKeys("codeberg.org");
            driver.executeScript("mobile: hideKeyboard");

            System.out.println("Selecting username input field.");
            WebElement element1 = driver.findElement(By.id("org.mian.gitnex:id/login_uid"));
            element1.click();
            driver.executeScript("mobile: hideKeyboard");

            System.out.println("Entering username.");
            element1.sendKeys("jasonzixuzhou");
            driver.executeScript("mobile: hideKeyboard");

            System.out.println("Selecting password input field.");
            WebElement element2 = driver.findElement(By.id("org.mian.gitnex:id/login_passwd"));
            element2.click();
            driver.executeScript("mobile: hideKeyboard");

            System.out.println("Entering password.");
            element2.sendKeys("zixuzhou1999");
            driver.executeScript("mobile: hideKeyboard");

            System.out.println("Attempting to click on login button.");
            driver.findElement(By.id("org.mian.gitnex:id/login_button")).click();
            System.out.println("Wait 5s to login");

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            wait.until(ExpectedConditions.or(
                    ExpectedConditions.visibilityOfElementLocated(By.id("android:id/autofill_save_icon")),
                    ExpectedConditions.visibilityOfElementLocated(By.id("org.mian.gitnex:id/alertTitle")),
                    ExpectedConditions.visibilityOfElementLocated(By.id("org.mian.gitnex:id/noData"))
            ));

            try {
                WebElement autofillIcon = driver.findElement(By.id("android:id/autofill_save_icon"));
                if (autofillIcon.isDisplayed()) {
                    driver.findElement(By.id("android:id/autofill_save_no")).click();
                }
            } catch (NoSuchElementException e) {
                System.out.println("Autofill save icon is not displayed, moving on.");
            }

            if (driver.findElement(By.id("org.mian.gitnex:id/alertTitle")).isDisplayed()){
                System.out.println("Attempting to close alert window.");
                driver.findElement(By.id("android:id/button3")).click();
            }

            if (driver.findElement(By.id("org.mian.gitnex:id/alertTitle")).isDisplayed()){
                System.out.println("Attempting to close alert window.");
                driver.findElement(By.id("android:id/button3")).click();
            }

            System.out.println("Login process completed.");
        } catch (Exception e) {
            System.out.println("Error during login process: " + e.getMessage());
            e.printStackTrace();
        }
    }



    private void startMonkey() {
        System.out.println("Starting Monkey!");
        try {
            monkeyProcess = Runtime.getRuntime().exec("adb shell monkey -p org.mian.gitnex -v --throttle 100 " +
                    "--pct-touch 100 --pct-motion 0 --pct-trackball 0 --pct-syskeys 0 --pct-nav 0 " +
                    "--pct-majornav 0 --pct-appswitch 0 --pct-anyevent 0 500");
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



    @AfterTest
    public void tearDown(){
        if (null !=driver){
            driver.quit();
        }
        stopMonkey();
    }
}
