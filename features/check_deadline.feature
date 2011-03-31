Feature: check for deadline
  In order to check for valid deadline
  I should check if creation date exceeds deadline

Scenario: Check deadline on existing projects
  Given I am authenticated
  And I am on the new project_create page
  And I create a new project called "Time Management" with deadline "2013-5-9"
  Then it is necessary that the deadline be later than the current date