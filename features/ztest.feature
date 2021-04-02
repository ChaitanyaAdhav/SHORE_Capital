@test
Feature: test

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

###################################################################

  Scenario: Navigate to View File
    Then I click on element having id "0-status_tab"
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    #Then I enter "Update communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I enter "aaaaaaaaaa" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" to display
    #Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "Update communication2"
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "aaaaaaaaaa"
    Then I click on element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button"
    Then I wait 5 seconds for element having xpath "//select[@name='task_status']" to display
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/a"

  Scenario: next tab
    Then I sleep for 3 seconds
    Then I switch to window having index "0"
  #  Then I switch to frame having index "0"
    Then I sleep for 2 seconds
    Then I wait 15 seconds for element having xpath "//*[text()='Loan details']" to display
    Then element having xpath "//*[text()='Loan details']" should be present
    Then I sleep for 5 seconds
    Then I close current tab
    Then I switch to window having index "111111111111"
    Then I sleep for 5 seconds
    Then element having xpath "//h5[@id='TaskViewModalLabel']" should have partial text as "Update The Task"
   ######### Then I enter "Keys.CONTROL + 'w'" into input field having xpath "/html/body"
    Then I sleep for 10 seconds
