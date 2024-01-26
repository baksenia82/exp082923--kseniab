@predefined4
Scenario : Merriam-Webster Dictionary
Given I open url "https://www.merriam-webster.com"
Then I should see page title as "Merriam-Webster: America's Most Trusted Dictionary"
Then element with xpath "//input[@id='home-search-term']" should be present
When I type "cantankerous" into element with xpath "//input[@id='home-search-term']"
Then I click on element using JavaScript with xpath "//button[@id=mw-search-toggle"
Then I wait for 2 sec
Then  element with xpath "//h1[contains(text(),'cantankerous')]" should be present
Then element with xpath "//h1[contains(text(),'cantankerous')]" should contain text "cantankerous"



@predefined5
Scenario: Cambridge Dictionary
Given I open url "https://dictionary.cambridge.org"
Then I should see page title as "Cambridge Dictionary | English Dictionary, Translations &amp; Thesaurus"
Then element with xpath ""//*[@type="submit"]"" should be displayed

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