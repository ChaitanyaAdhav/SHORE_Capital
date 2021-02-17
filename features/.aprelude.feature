@prelude
Feature: Open site
  Scenario: I go to the login page
    Given I navigate to "https://shorecapital-dev.azurewebsites.net/001"
    Then element having xpath "//*[@type='submit']" should have text as "Login"
    Then I maximize browser window

