@logout
Feature: Logout

  Scenario: To logout from account
    Then I click on element having class "mx-1"
    Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
    Then element having xpath "//*[@type='submit']" should have text as "Login"
