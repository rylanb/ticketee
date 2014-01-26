Feature: Deleting projects
  In order to to remove needless projects
  As a project manager
  I want to make them disappear

  Background:
    Given there is a project called "Sublime Text 2"
    And I am on the homepage
    When I follow "Sublime Text 2"
    And I follow "Delete Project"

  Scenario: Updating a project
    Then I should see "Sublime Text 2 has been deleted!"
    Then I should be on the projects page
