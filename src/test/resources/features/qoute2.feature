@quote_outline
  Feature:  Quote project outline tests

 Quote_data

Scenario Outline: Application tests
And I click on element with xpath "//input[@id='name']"
Then element with xpath "//div[@id='nameDialog']" should be displayed
Then I type <firstname> into element with xpath "//input[@id='firstName']"
Then I type "Oganesyan" into element with xpath "//input[@id='lastName']"
And I click on element with xpath "//button[span[text()='Save']]"
Then I type "artem_test" into element with xpath "//input[@name='username']"
Then I type "test@gmail.com" into element with xpath "//input[@name='email']"
Then I type "12345Abc" into element with xpath "//input[@name='password']"
Then element with xpath "//input[@name='confirmPassword']" should be enabled
Then I type "12345Abc" into element with xpath "//input[@name='confirmPassword']"
And I type "Contact Person Name" into element with xpath "//input[@id='contactPersonName']"
And I type "0123456789" into element with xpath "//input[@id='contactPersonPhone']"
And I click on element with xpath "//button[@id='formSubmit']"
Then element with xpath "//*[contains(text(), 'Submitted Application')]" should be displayed
And element with xpath "//b[@name='firstName']" should contain text "Artem"
And element with xpath "//b[@name='username']" should contain text "artem_test"
And I wait for 3 sec
Examples:

  | firstname |




