@javascript
Feature: Add a new Project
  In order to get a new projects
  As a new Project
  I want to be able to create project


  Scenario: Login to Index Page
    Given I am on the login page
    And when I fill in "Email" with "nirvanagrg@gmail.com"
    And when I fill in "Password" with "testpass"
    And I press "Sign in"
    Then I should see "Signed in successfully."


  Scenario: Register a new Project
    Given I am on the new project_create page
    And when I fill in "Title" with "Library"
    And I fill in "Status" with "Done"
    And I click "Create Project"
    Then I should see "New Project added"
    Then 1 project should exist
