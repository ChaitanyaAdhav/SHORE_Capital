@loanofficerlogin
Feature: Valid logins

	Scenario: I login with valid credentials
		Then I enter "login::LoanOfficer1::user" into input field having xpath "//*[@name='user_name']"
		Then I enter "login::LoanOfficer1::password" into input field having xpath "//*[@name='password']"
		Then I click on element having xpath "//*[@type='submit']"
		Then I wait 15 seconds for element having class "mx-1" to display
		Then element having class "mx-1" should have partial text as "login::LoanOfficer1::name"