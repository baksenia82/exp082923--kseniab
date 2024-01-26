@Scenariooutline
Feature: Scenario outline example

  @Quotetests
  Scenario Outline: Quote tests with datasets
    Given I open url "http://quote-stage.portnov.com"
    Then I enter "<fullname>" into the field with xpath "//input[@id='name']"
    And I enter "<username>" into the field with xpath "//input[@name='username']"
    And I enter "<email>" into the field with xpath "//input[@name='email']"
    And I enter "<password>" into the field with xpath "//input[@name='password']"
    And I enter "<confirmpassword>" into the field with xpath "//input[@name='confirmPassword']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element using JavaScript with xpath "//input[@value='female']"
    And I click on element with xpath "//button[@name='formSubmit']"
    Then element with xpath "//b[contains(text(),'true')]" should contain text "true"
    And I wait for 3 sec

    Examples:
      |fullname|username|email             | password|confirmpassword  |
      | ksenia |baksenia|test1@example.com |12345!   |12345!           |
      | alex   |alex1   |test2@example.com |222222   |222222           |
      | olga   |olga1   |test3@example.com |333333   |333333           |
      | denis  |denis1  |test4@example.com |444444   |444444           |
