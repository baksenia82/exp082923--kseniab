package defenitions;




import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import support.HelperQuote;


import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuoteStageSteps {
    private String url;

    @Given("I visit Quote Page in the {string} Environment")
    public void iVisitQuotePageInTheEnvironment(String quotePage) {
        url = HelperQuote.getUrlFor(quotePage);
        getDriver().get(HelperQuote.getUrlFor(quotePage));

        }


    @Then("I enter {string} for the Username field")
    public void iEnterForTheUsernameField(String arg) {
        WebElement username = getDriver().findElement(By.xpath("//input[@name='username']"));
        username.sendKeys("username");
    }


    @And("I enter {string} for first name and {string} for the last name in the Name field")
    public void iEnterForFirstNameAndForTheLastNameInTheNameField(String arg0, String arg1) {
        WebElement name =getDriver().findElement(By.xpath("//input[@id='name']"));
        name.sendKeys("first last");

    }

    @And("I enter {string} for the Email field")
    public void iEnterForTheEmailField(String arg0) {
        WebElement email = getDriver().findElement(By.xpath("//input[@name='email']"));
        email.sendKeys("baksenia@yhaoo.com");


    }

    @When("I enter {string} for the Password field")
    public void iEnterForThePasswordField(String arg0) {
        WebElement password = getDriver().findElement(By.xpath("//input[@id='password']"));
        password.sendKeys("12345!");
        
        
    }

    @And("I enter {string} for the Confirm Password field")
    public void iEnterForTheConfirmPasswordField(String arg0) {
        WebElement conpassword =getDriver().findElement(By.xpath("//input[@id='confirmPassword']"));
        conpassword.sendKeys("12345!");

    }

    @Then("I {string} the Privacy Policy Policy checkbox")
    public void iThePrivacyPolicyPolicyCheckbox(String arg0) {
        WebElement check = getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']"));
    }


    @When("I click on the {string} button at the bottom of the page")
    public void iClickOnTheButtonAtTheBottomOfThePage(String arg0) {
        WebElement submit = getDriver().findElement(By.xpath("//button[@id='formSubmit']"));
        submit.click();
    }

    @Then("I verify we see the Submitted Application Page")
    public void iVerifyWeSeeTheSubmittedApplicationPage() {
        assertThat(getDriver().findElement(By.xpath("//legend[contains(text(),'Submitted Application')]")));

    }
}







