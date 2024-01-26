@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  #Scenario: Predefined steps for Google page
    Given I open url for "google search engine"
    Then I should see page title as "Google"
    Then I type "Cucumber" into "search textfield"
    Then I click "search button"
  # Then I wait for 2 sec
    Then I wait for "results" to be present
    Then I should see page title contains "- Google Search"
    #Then "results" should contain text "Cucumber"
   # And I check final result




  @bing
  Scenario: Bing test for cucumber
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then I type "Cucumber" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "//label[@id='search_icon']"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//main[@aria-label='Search Results']" to be present
    Then I should see page title as "Cucumber - Search"
    Then element with xpath "//main[@aria-label='Search Results']" should contain text "Cucumber"


  @yahoo
  Scenario: Given I open url "https://www.yahoo.com/"
    Then I should see page title as "yahoo"
    Then I type "Cucumber" into element with xpath "//input[@name='p']"
    Then I click on element using JavaScript with xpath "(//button[@name='btnK'])"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title as "Cucumber -Yahoo Search"
    Then element with xpath "//textarea[@name='q']" should contain text "Cucumber"


  @gibiru
  Scenario: Gibiru scenario
    Given I open url "https://gibiru.com/"
    And element with xpath "//div/*[contains(text(), 'Mobile App')]" should be displayed
    Then I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"
    Then I wait for 3 sec


  @e2e_htc
  Scenario: HTC e2e scenario
    Given I open url "https://nop-qa.portnov.com/"
    Then element with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'HTC')]" should be displayed
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'HTC')]"
    Then element with xpath "//div[contains(@class, 'product-review-links')]" should not contain text "0"
    Then I clear element with xpath "//input[@aria-label='Enter a quantity']"
    Then I type "3" into element with xpath "//input[@aria-label='Enter a quantity']"
    Then I click on element with xpath "//div[contains(@class, 'overview')]//button[contains(text(), 'Add to cart')]"
    And I wait for element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" to be present
    And element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" should contain text "added"
    And I wait for 3 sec
    And I click on element with xpath "//a/span[contains(text(), 'Shopping cart')]"
    And element with xpath "//td[contains(@class, 'subtotal')]/span" should contain text "$735.00"
    Then I wait for 2 sec

#homework
  @predefined4
  Scenario: Merriam-Webster Dictionary
    Given I open url "https://www.merriam-webster.com"
    Then I should see page title as "Merriam-Webster: America's Most Trusted Dictionary"
    Then element with xpath "//input[@id='home-search-term']" should be present
    When I type "cantankerous" into element with xpath "//input[@id='home-search-term']"
    Then I click on element using JavaScript with xpath "//button[@class='btn position-absolute home-search-button search-dictionary']"
    Then I wait for 2 sec
    Then  element with xpath "//h1[contains(text(),'cantankerous')]" should be present
    Then element with xpath "//h1[contains(text(),'cantankerous')]" should contain text "cantankerous"


  @predefined5
  Scenario: Cambridge Dictionary
    Given I open url "https://dictionary.cambridge.org"
    Then I should see page title as "Cambridge Dictionary | English Dictionary, Translations &amp; Thesaurus"
    Then element with xpath "//input[@placeholder='Search English']" should be present
    When I type "cantankerous" into element with xpath "//input[@placeholder='Search English']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then element with xpath "//div[@class='hfr-m ltab lp-m_l-15']" should be present
    Then element with xpath "//div[contains(text(), 'cantankerous')]" should contain text "cantankerous"




  @predefined5
  Scenario: Cambridge Dictionary
    Given I open url "https://dictionary.cambridge.org/"
    Then I should see page title as "Cambridge Dictionary | English Dictionary, Translations & Thesaurus"
    Then element with xpath "//input[@name='datasetsearch']" should be present
    When I type "cantankerous" into element with xpath "//input[@placeholder='Search English']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then element with xpath "//div[@class='hfr-m ltab lp-m_l-15']" should be present
    Then element with xpath "/div[contains(text(), 'cantankerous')]" should contain text "cantankerous"



  @e2e_test4
  Scenario: flea market e2e
    Given I open url "https://nop-qa.portnov.com"
    And element with xpath "//h2[contains(text(),'Welcome to our store')]" should be displayed
    Then element with xpath "//a[contains(text(),'Build your own computer')]" should be displayed
    Then I click on element using JavaScript with xpath "//a[contains(text(),'Build your own computer')]"
    And element with xpath "//a[@class='ico-cart']" should be present
    Then I click on element using JavaScript with xpath "//a[@class='ico-cart']"
    And I wait for 3 sec


