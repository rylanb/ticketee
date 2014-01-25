Feature: Creating projects
  In order to have projects to assign tickets to
  As a user
  I want to create them easily

  Background:
    Given I am on the homepage
    When I follow "New Project"

  Scenario: Creating a project
    And I fill in "Name" with "Sublime Text 2"
    And I press "Create Project"
    Then I should see "Project has been created"
    And I should be on the project page for "Sublime Text 2"
    And I should see page title as "Sublime Text 2 - Projects - Ticketee"

  Scenario: Creating a project without a name
    And I press "Create Project"
    Then I should see "There was an issue saving your project."
    Then I should see "Name can't be blank"
