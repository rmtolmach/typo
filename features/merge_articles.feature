Feature: Merge Blog
  In order to manage blogs
  As an admin
  I want to consolidate similar articles

  Scenario: Merge form is present
    Given I am on the edit page for an article
    Then I should see the "Merge Articles" form

  Scenario: Merge articles
    Given two unique articles exist
    When I merge an article
    Then I should see one article with two stories
    And I should see only one title
    And I should see only one author
