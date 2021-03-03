@test
Feature: test

  Scenario: I go to the login page
    Given I navigate to "https://shorecapital-dev.azurewebsites.net/pa/"
    Then element having xpath "//*[@type='submit']" should have text as "Login"
    Then I maximize browser window

  Scenario: I login with valid credentials
    Then I enter "login::pa::user" into input field having xpath "//*[@name='user_name']"
	Then I enter "login::pa::password" into input field having xpath "//*[@name='password']"
	Then I click on element having xpath "//*[@type='submit']"
	Then I wait 15 seconds for element having class "mx-1" to display
	Then element having class "mx-1" should have partial text as "login::pa::name"

  Scenario: Navigate to update task model
    Then I click on element having id "0-status_tab"
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    Then I enter "CheckT" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    #Then I enter "createtask::admin::communication1" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button" to display
    Then I click on element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button"
    Then I wait 5 seconds for element having id "TaskViewModalLabel" to display
    Then element having id "TaskViewModalLabel" should have partial text as "Update The Task"
########################################################

  Scenario: Verify user can add communication without changing Task Status
    #Then I enter "Update communication2" into input field having xpath "//textarea[@name='communication']"
    Then I enter "createtask::admin::communication2" into input field having xpath "//textarea[@name='communication']"
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button[2]"

  Scenario: Verify updated communication should be displayed at top of table
    #Then element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]/p" should have partial text as "Update communication2"
    Then element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]/p" should have partial text as "createtask::admin::communication2"

  Scenario: Close Update Task Model
    Then I click on element having xpath "//button[@class='close']"

  Scenario: Verify Update communication is displayed on dashboard
    Then I click on element having id "0-status_tab"
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    #Then I enter "Update communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I enter "createtask::update::communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" to display
    #Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "Update communication2"
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "createtask::admin::communication2"

  Scenario: Check user can change Task Status
    Then I click on element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button"
    Then I wait 5 seconds for element having xpath "//select[@name='task_status']" to display
    Then I click on element having xpath "//select[@name='task_status']"
    Then I click on element having xpath "//select[@name='task_status']/option[@value='2']"
    #Then I enter "Update communication2" into input field having xpath "//textarea[@name='communication']"
    Then I enter "createtask::admin::communication2" into input field having xpath "//textarea[@name='communication']"
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button[2]"
    Then I click on element having xpath "//button[@class='close']"

  Scenario: Check updated Task Status and communication are reflected on Dashboard
    Then I click on element having id "0-status_tab"
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    #Then I enter "Update communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I enter "createtask::update::communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" to display
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "Update communication2"
    #Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "createtask::admin::communication2"
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[5]" should have partial text as "In Progress"



