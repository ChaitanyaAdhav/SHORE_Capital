@test
Feature: test

  Scenario: I go to the login page
    Given I navigate to "https://shorecapital-dev.azurewebsites.net/001"
    Then element having xpath "//*[@type='submit']" should have text as "Login"
    Then I maximize browser window

  Scenario: I login with valid credentials
    Then I enter "login::admin::user" into input field having xpath "//*[@name='user_name']"
	Then I enter "login::admin::password" into input field having xpath "//*[@name='password']"
	Then I click on element having xpath "//*[@type='submit']"
	Then I wait 15 seconds for element having class "mx-1" to display
	Then element having class "mx-1" should have partial text as "login::admin::name"


  Scenario: Navigate to Create Task
    Then I click on element having id "all-tab"
    Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
    Then I sleep for 3 seconds
    Then I click on element having xpath "//*[@id='table_all']/tbody/tr[1]/td[1]/a"
    Then I sleep for 5 seconds
    Then I switch to frame having index "0"
    #Then I wait 15 seconds for element having xpath "//*[@id='loan_list']" to display
    Then I click on element having xpath "//*[@id='loan_list']"
     # Then I click on element having xpath "//a[text()='Loan Details']"
    Then I wait 15 seconds for element having xpath "//div[@id='loan_detail']/div/span[1]" to display
    #  Then I sleep for 15 seconds
    Then element having xpath "//div[@id='loan_detail']/div/span[1]" should have partial text as "Loan details"
