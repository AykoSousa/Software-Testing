package StepDefinitions;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import Pages.HomePage;
import Pages.LoginPage;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginSteps {
	
	WebDriver driver = null;
	LoginPage login;
	HomePage home;
	
	@Before
	public void browserSetup() {
		
		System.setProperty("webdriver.chrome.driver", "src/test/resources/drivers/chromedriver.exe");
		
		driver = new ChromeDriver();
		
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(40));
	    driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(40));
	    
	    driver.manage().window().maximize();
	}
	
	@After
	public void teardown() {
		driver.quit();
	}
	
	@Given("user is on login page")
	public void user_is_on_login_page() {
		
		driver.navigate().to("https://www.saucedemo.com/");
	}

	@When("user enters valid username and password")
	public void user_enters_valid_username_and_password() {
		
	    login = new LoginPage(driver);

		login.enterUsername("standard_user");
		login.enterPassword("secret_sauce");
	}

	@And("clicks on login button")
	public void clicks_on_login_button() throws InterruptedException {
		
		login.clickOnLogin();
		
		Thread.sleep(2000);
	}

	@Then("user is navigated to the home page")
	public void user_is_navigated_to_the_home_page() {
		
		//home = new HomePage(driver);
		//home.checkLogoutBtnIsDisplayed();
		driver.findElement(By.id("logout_sidebar_link")).isDisplayed();
	}
}
