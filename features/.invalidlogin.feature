@invalidlogin
Feature: Valid and invalid logins

    Scenario: I cannot login with both invalid credentials
		Then I enter "login::invalid::user" into input field having xpath "//*[@name='user_name']"
		Then I enter "login::invalid::password" into input field having xpath "//*[@name='password']"
	    Then I click on element having xpath "//*[@type='submit']"
	    Then I wait 20 seconds for element having xpath "//form[@method='POST']/div[@class='alert alert-danger']" to display
	    Then element having xpath "//form[@method='POST']/div[@class='alert alert-danger']" should have partial text as "User or Password is Invalid"
		Then I clear input field having xpath "//*[@name='user_name']"

	Scenario: I cannot login with Valid Username and Invalid Password credentials
		Then I enter "login::valid::user" into input field having xpath "//*[@name='user_name']"
		Then I enter "login::invalid::password" into input field having xpath "//*[@name='password']"
	    Then I click on element having xpath "//*[@type='submit']"
	    Then I wait 20 seconds for element having xpath "//form[@method='POST']/div[@class='alert alert-danger']" to display
	    Then element having xpath "//form[@method='POST']/div[@class='alert alert-danger']" should have partial text as "User or Password is Invalid"
		Then I clear input field having xpath "//*[@name='user_name']"

	Scenario: I cannot login with Invalid Username and Valid Password credentials
		Then I enter "login::invalid::user" into input field having xpath "//*[@name='user_name']"
		Then I enter "login::valid::password" into input field having xpath "//*[@name='password']"
	    Then I click on element having xpath "//*[@type='submit']"
	    Then I wait 20 seconds for element having xpath "//form[@method='POST']/div[@class='alert alert-danger']" to display
	    Then element having xpath "//form[@method='POST']/div[@class='alert alert-danger']" should have partial text as "User or Password is Invalid"
		Then I clear input field having xpath "//*[@name='user_name']"