package Utils;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;

import static Utils.Invoke.*;

public class Browser {
    public  static EventFiringWebDriver webDriver;

    @Before
    public void openBrowser()  {

        webDriver = Invoke.getDriver();

    }

    @After
    public void closeBrowser(){
        webDriver.quit();
    }
}



