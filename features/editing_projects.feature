Feature: viewing projects
  In order to to update project information
  As a user
  I want to be able to do that through an interface

  Background:
    Given there is a project called "Sublime Text 2"
    And I am on the homepage
    When I follow "Sublime Text 2"
    And I follow "Edit Project"

  Scenario: Updating a project
    And I fill in "Name" with "Sublime Text 2 beta"
    And I press "Update Project"
    Then I should see "Project has been updated."
    Then I should be on the project page for "Sublime Text 2 beta"

  Scenario: Updating a project with invalid attributes is bad
    And I fill in "Name" with ""
    And I press "Update Project"
    Then I should see "There was an issue updating your project."
    Then I should be on the project page for "Sublime Text 2"