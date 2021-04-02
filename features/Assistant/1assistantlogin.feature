@assistantlogin
Feature: Valid logins

#	Scenario: I login with valid credentials
#		Then I enter "login::assistant1::user" into input field having xpath "//*[@name='user_name']"
#		Then I enter "login::assistant1::password" into input field having xpath "//*[@name='password']"
#		Then I click on element having xpath "//*[@type='submit']"
#		Then I wait 15 seconds for element having class "mx-1" to display
#		#Then element having class "mx-1" should have partial text as "login::assistant1:name"

	Scenario: I login with valid credentials
		Then I enter "login::kjasst::user" into input field having xpath "//*[@name='user_name']"
		Then I enter "login::kjasst::password" into input field having xpath "//*[@name='password']"
		Then I click on element having xpath "//*[@type='submit']"
		Then I wait 15 seconds for element having class "mx-1" to display
		#Then element having class "mx-1" should have partial text as "login::kjasst:name"