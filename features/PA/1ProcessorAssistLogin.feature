@palogin
Feature: Open site & Valid login

  Scenario: I go to the login page

    Given I navigate to "url::user::pa"
    Then element having xpath "//*[@type='submit']" should have text as "Login"
    Then I maximize browser window

	Scenario: I login with valid credentials
		Then I enter "login::pa::user" into input field having xpath "//*[@name='user_name']"
		Then I enter "login::pa::password" into input field having xpath "//*[@name='password']"
		Then I click on element having xpath "//*[@type='submit']"
		Then I wait 15 seconds for element having class "mx-1" to display
		Then element having class "mx-1" should have partial text as "login::pa::name"
