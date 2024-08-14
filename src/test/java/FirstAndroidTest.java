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

public class FirstAndroidTest {
    AppiumDriver driver;
    @BeforeTest
    public void setDriver() throws MalformedURLException {
        DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("platformName","Android");
        caps.setCapability("appium:automationName","UiAutomator2");
        caps.setCapability("appium:platformVersion","14.0");
        caps.setCapability("appium:deviceName","Android Emulator");
        caps.setCapability("appium:app",System.getProperty("user.dir")+
                "/apps/org.mian.gitnex_550.apk");
        driver = new AppiumDriver(new URL("http://127.0.0.1:4723/"),caps);
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
        driver.findElement(By.id("org.mian.gitnex:id/loginUsernamePassword")).click();
        // Choose HTTPs
        driver.findElement(By.id("Show dropdown menu")).click();
        driver.findElement(By.id("org.mian.gitnex:id/instance_url")).click();
        // Set instance url
        WebElement element = driver.findElement(By.id("org.mian.gitnex:id/instance_url"));
        element.click();
        driver.executeScript("mobile: hideKeyboard");
        element.sendKeys("codeberg.org");
        driver.executeScript("mobile: hideKeyboard");
        // Set username
        WebElement element1 = driver.findElement(By.id("org.mian.gitnex:id/login_uid"));
        element1.click();
        driver.executeScript("mobile: hideKeyboard");
        element1.sendKeys("zixujasonzhou");
        driver.executeScript("mobile: hideKeyboard");
        WebElement element2 = driver.findElement(By.id("org.mian.gitnex:id/login_passwd"));
        element2.click();
        driver.executeScript("mobile: hideKeyboard");
        element2.sendKeys("zixujasonzhou");
        driver.executeScript("mobile: hideKeyboard");
        driver.findElement(By.id("org.mian.gitnex:id/login_button")).click();
    }

//    @Test
//    public void clickAppButton(){
//        driver.findElement(By.xpath("//android.widget.ScrollView/android.view.View[2]/android.widget.Button")).click();
//
//// Now interact with the element
//        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
//        WebElement element = driver.findElement(By.xpath("//android.widget.EditText[@resource-id=\"user_session_email\"]"));
//        driver.executeScript("mobile: hideKeyboard");
//        element.click();
//        element.sendKeys("zixu.zhou@mail.mcgill.ca");
//        driver.executeScript("mobile: hideKeyboard");
//        WebElement pelement = driver.findElement(By.xpath("//android.widget.EditText[@resource-id=\"user_session_password\"]"));
//        driver.executeScript("mobile: hideKeyboard");
//        pelement.click();
//        driver.executeScript("mobile: hideKeyboard");
//        pelement.sendKeys("zixu.zhou");
//        driver.executeScript("mobile: hideKeyboard");
//
//        driver.findElement(By.xpath("//android.widget.Button[@text=\"Log in\"]")).click();
//
//    }

    @AfterTest
    public void tearDown(){
        if (null !=driver){
            driver.quit();
        }
    }
}
