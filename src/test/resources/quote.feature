@quote_feature
  Feature: Quote project tests

    Background: Open web application
      Given I open url "http://quote-stage.portnov.com"
      Then I should see page title contains "Quote"

    @quote1
    Scenario: Form validation (negative)
      Given I open url "http://quote-stage.portnov.com"
      Then I should see page title contains "Quote"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath " //label[@id='name-error']" should contain text "This field is required"
      Then element with xpath " //label[@id='username-error']" should contain text "This field is required"
      Then element with xpath " //label[@id='email-error']" should contain text "This field is required"
      Then element with xpath " //label[@id='password-error']" should contain text "This field is required"
      #Then  I wait for 2 sec

    @quote2
    Scenario: Successful submission
      And I click on element with xpath "//input[@id='name']"
      Then element with xpath "//div[@id='nameDialog']" should be displayed
      Then I type "Artem" into element with xpath "//input[@id='firstName']"
      Then I type "Oganesyan" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//button[span[text()='Save']]"
      Then I type "artem_test" into element with xpath "//input[@name='username']"
      Then I type "test@gmail.com" into element with xpath "//input[@name='email']"
      Then I type "12345Abc" into element with xpath "//input[@name='password']"
      Then element with xpath "//input[@name='confirmPassword']" should be enabled
      Then I type "12345Abc" into element with xpath "//input[@name='confirmPassword']"
      And I switch to iframe with xpath "//iframe[@name='additionalInfo']"
      And I type "Contact Person Name" into element with xpath "//input[@id='contactPersonName']"
      And I type "0123456789" into element with xpath "//input[@id='contactPersonPhone']"
      And I switch to default content
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//*[contains(text(), 'Submitted Application')]" should be displayed
      And element with xpath "//b[@name='firstName']" should contain text "Artem"
      And element with xpath "//b[@name='username']" should contain text "artem_test"
      And I wait for 3 sec
      And I take screenshot

      #homework1
    @gibiru8
    Scenario: Gibiru scenario8
      Given I open url "https://gibiru.com/"
      And element with xpath "//a[contains(text(),'Mobile App')]" should be displayed
      Then I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"
      Then I wait for 3 sec
 #homework2
    @e2e_mac
    Scenario: mac e2e scenario
      Given I open url "https://nop-qa.portnov.com/"
      Then element with xpath "//*[contains(text(), 'Featured products')]|//div[contains(text(),'Apple MacBook Pro 13-inch')]" should be displayed
      Then I click on element using JavaScript with xpath "//a[contains(text(),'Apple MacBook Pro 13-inch')]"
      Then element with xpath "//a[contains(text(),'4 review(s)')]" should be present
      Then I clear element with xpath "//input[@aria-label='Enter a quantity']"
      Then I type "2" into element with xpath "//input[@aria-label='Enter a quantity']"
      Then I click on element with xpath "//div[contains(@class, 'overview')]//button[contains(text(),'Add to cart')]"
      And I wait for element with xpath "//p[@class='content']" to be present
      And element with xpath "//p[@class='content']" should contain text "The product has been added to your shopping cart"
      And I wait for 3 sec
      And I click on element with xpath "//a[@class='ico-cart']"
      And element with xpath "//tbody/tr[1]/td[6]" should contain text "$3,600.00"
      Then I wait for 2 sec

      #h/w3
    @predefined9
    Scenario: Quote Page Required (negative))9


      Given I open url "http://quote-stage.portnov.com/"

      Then I should see page title contains "Get a Quote"
      
      Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then I wait for 2 sec
      Then element with xpath "//label[@id='name-error']" should contain text "This field is required"
      Then element with xpath "//label[@id='username-error']" should contain text "This field is required"
      Then element with xpath "//label[@id='name-error']" should contain text "This field is required"
      Then element with xpath "//label[@id='email-error']" should contain text "This field is required"
      Then element with xpath "//label[@id='password-error']" should contain text "This field is required"
      When I wait for 2 sec

      
      Then element with xpath "//label[contains(text(),'Username')]" should be present

      When I type "Tester T Testington" into element with xpath "Name"

      When I type "test4life" into element with xpath "Username"

      When I type "pa$$wo4d" into element with xpath "Enter Password"

      When I type "Pa$$wo4d" into element with xpath "Confirm Password"

      Then I click on element using JavaScript with xpath "Send"

      Then element with xpath "Submitted Application" should contain text "Submitted Application"









