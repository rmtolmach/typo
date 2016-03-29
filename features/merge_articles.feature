Feature: Merge Blog
  In order to manage blogs
  As an admin
  I want to consolidate similar articles

  Background:
    Given I am on the edit page for an article
    And am logged into the admin panel

  Scenario: Merge articles
    Given I am on the edit page for an article
    When I fill in "merge_with" with 2
    And I press "Merge"
    Then I should be on the manage articles page
    When I click on the merged article name
    Then I should see one title
    And I should see one author
