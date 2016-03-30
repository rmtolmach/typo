Feature: Merge Blog
  In order to manage blogs
  As an admin
  I want to consolidate similar articles

  Background:
    I am logged into the admin panel

  Scenario: Merge articles
    Given I am on the manage articles page
    Then I should see "My Shiny Weblog!"
    And "Goodbye World" has an id of 2
    And "My Shiny Weblog!" has an id of 1
    When I click on the article "My Shiny Weblog!"
    And I fill in "merge_with" with 2
    And I press "Merge"
    Then I should be on the manage articles page
    And I should see "Goodbye World"
    And not see "Hello World!"
    When I click on "Goodbye World"
    Then I should see "Welcome to Typo"
    And I should see "Goodbye World"
