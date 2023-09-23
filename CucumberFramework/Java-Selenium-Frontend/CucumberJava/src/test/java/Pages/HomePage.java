package Pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePage {
	
	@FindBy(id = "logout_sidebar_link")
	WebElement logout_btn;
	
	WebDriver driver;
	
	public HomePage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, LoginPage.class);
	}
	
	public void checkLogoutBtnIsDisplayed() {
		logout_btn.isDisplayed();
	}

}
