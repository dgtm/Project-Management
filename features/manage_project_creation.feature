@javascript
Feature: Add a new Project
  In order to get a new project
  I want to be able to create project

  Scenario: Register a new Project
    Given I am authenticated
    Given I am on the new project_create page
    And when I fill in "Title" with "Library"
    And when I fill in "Deadline" with "2011-2-2"
    And I pressed "Create Project"
    Then I should see "New Project added"
    Then 1 project should exist

