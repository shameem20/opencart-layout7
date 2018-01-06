package Utils;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Invoke
{
        public static WebDriver driver;
        @BeforeClass
        public static void openbrowser()
        {
            if (AutomationConstants.BROWSER.equalsIgnoreCase("chrome"))
            {
                System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
                driver = new ChromeDriver();
            }
            else if (AutomationConstants.BROWSER.equalsIgnoreCase("Firefox"))
            {
                System.setProperty("webdriver.gecko.driver", "geckodriver.exe");
                driver = new FirefoxDriver();
            }
            else {
                System.out.println("sorry");
            }
        }
        @Test
        public void call()
        {
            driver.get(AutomationConstants.URL);

        }
        @AfterClass
        public static void closebrowser()
        {
            driver.quit();
        }
}
