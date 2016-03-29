Feature: Merge Blog
  In order to manage blogs
  As an admin
  I want to consolidate similar articles

  Background:
    I am logged into the admin panel

  Scenario: Merge articles
    Given I am on the edit page for an article
    When I fill in "merge_with" with 2
    And I press "Merge"
    Then I should be on the manage articles page
    When I click on the article "Hello World"
    Then I should see "Sweet Title"
    And I should see "Best Author"
