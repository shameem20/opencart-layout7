package Utils;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

import java.util.concurrent.TimeUnit;


public class Invoke
{

    public static EventFiringWebDriver webDriver;

    private static final String OS = System.getProperty(("os.name").toLowerCase());
    private static final Logger LOG = LoggerFactory.getLogger("Invoke.class");
    private static String userpath=System.getProperty("user.dir");
    public static final String CHROME="chrome";
    public static final String FIREFOX="firefox";
    public static final String IE="InternetExplorer";
    public EventFiringWebDriver webdriver;
@Before

    public static void setDriver() {

    if (webDriver == null) {
        if (AutomationConstants.BROWSER.equals("chrome")) {
            LOG.info("Starting the Browser");

            setDriverPathForBrowser("CHROME");

            if (isLinux()) {
                ChromeOptions options = new ChromeOptions();
                options.setBinary(userpath + "/src/test/resources/drivers/Ubuntu/google-chrome-stable_current_amd64.deb");
                webDriver = new EventFiringWebDriver(new ChromeDriver(options));
                webDriver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);

            }
            //
            //webDriver.manage().window().maximize();
            //}


//        } else if (FIREFOX.equals("yes")) {
//
//            setDriverPathForBrowser("Firefox");
//            // set binary path??
//            webDriver = new EventFiringWebDriver(new FirefoxDriver());
//            webDriver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);
//            webDriver.manage().deleteAllCookies();
//            webDriver.manage().window().fullscreen();
//
//        } else if (IE.equals("yes")) {
//
//            System.setProperty("webdriver.ie.driver", "IEDriverServer.exe");
//            webDriver = new EventFiringWebDriver(new InternetExplorerDriver());
//
//            webDriver.manage().window().fullscreen();
//            webDriver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);
//            webDriver.manage().deleteAllCookies();
//
//        } else {
//            LOG.info("No Driver Initialised");
//        }
//    }
        }

            webDriver = new EventFiringWebDriver(new ChromeDriver());
            webDriver.get(AutomationConstants.URL);

    }
}

    private static void setDriverPathForBrowser(String browserName) {
        {
           browserName = browserName.toLowerCase();
            if (browserName.equalsIgnoreCase("CHROME")) {
                if (isMac()) {
                    System.setProperty("webdriver.chrome.driver",userpath+"/src/test/resources/drivers/mac/chromedriver");
                } else if (isLinux()) {
                    System.setProperty("webdriver.chrome.driver",userpath+"/src/test/resources/drivers/ubuntu/chromedriver");
                } else  {

                    System.setProperty("webdriver.chrome.driver",userpath+"/src/test/resources/drivers/windows/chromedriver.exe");
                }
            } else if (browserName.equalsIgnoreCase("Firefox")) {
                if (isMac()) {
                    System.setProperty("webdriver.gecko.driver",userpath+"/src/test/resources/drivers/mac/chromedriver");
                } else if (isLinux()) {
                    System.setProperty("webdriver.gecko.driver",userpath+"/src/test/resources/drivers/ubuntu/chromedriver");
                } else if (isWindows()) {
                    System.setProperty("webdriver.gecko.driver",userpath+"/src/test/resources/drivers/windows/chromedriver.exe");
                }
            }

        }
    }



    private static boolean isWindows() {
        return (OS.indexOf("windows") >= 0);
    }

    private static boolean isMac() {
        return (OS.indexOf("mac") >= 0);
    }

    private static boolean isLinux() {
        return (OS.indexOf("linux") >= 0);
    }


    }





