@googlepredifined
Feature: Smoke steps

@PredefinedstepsforGoogle
  Scenario: Predefined steps for Google page
    Given I open url for "google search engine"
    Then I should see page title as "Google"
    Then I type "Cucumber" into "search textfield"
    Then I click "search button"
  # Then I wait for 2 sec
    Then I wait for "results" to be present
    Then I should see page title contains "- Google Search"
    Then "results" should contain text "Cucumber"
    And I check final result
