@paupdatetask
Feature: Validate Update Task Model

  Scenario: Navigate to update task model
    Then I click on element having id "0-status_tab"
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    #Then I enter "ASD1" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I enter "AutomationTestAdmin" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button" to display
    Then I click on element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button/.."
    Then I wait 5 seconds for element having id "TaskViewModalLabel" to display
    Then element having id "TaskViewModalLabel" should have partial text as "Update The Task"

  Scenario: Verify options available in model
    Then element having xpath "//label[text()='Task Type:']" should be present
    Then element having xpath "//label[text()='Task Id:']" should be present
    Then element having xpath "//label[text()='Created By:']" should be present
    Then element having xpath "//label[text()='Company ']" should be present
    Then element having xpath "//label[text()='File Name:']" should be present
    Then element having xpath "//label[text()='File Id:']" should be present
    Then element having xpath "//label[text()='Task Status:']" should be present
    Then element having xpath "//label[text()='FollowUp Date']" should be present
    Then element having xpath "//label[text()='Communication:']" should be present
    Then element having xpath "//button[text()='Assign To Me']" should be present

  Scenario: Verify Timer present on model
    Then element having xpath "//b[text()='Time:']" should be present

  Scenario: Verify non editable fields in model
    Then element having id "up_task_type" should be disabled
    Then element having id "up_task_id" should be disabled
    Then element having id "up_created_by" should be disabled
    Then element having id "up_company_name" should be disabled
    Then element having id "up_file_name" should be disabled
    Then element having id "up_file_id" should be disabled

  Scenario: Check if Assigned to me button is displayed when the task is unassigned
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/button[1]" should be enabled
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/button[1]" should have partial text as "Assign To Me"

  Scenario: Check if Save button is absent for unassigned file
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/button[1]" should be disabled

  Scenario: Verify View File button is not displayed for unassigned task
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/a" should be disabled

  Scenario: Assign task to self
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button[1]"

  Scenario: Verify Assigned to me button is changed to Save
    Then I wait 15 seconds for element having xpath "//button[text()='Save']" to display
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/button[1]" should be disabled
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/button[2]" should be enabled
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/button[2]" should have partial text as "Save"

  Scenario: Verify View File button is displayed only after assigned file
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/a" should be present
    Then element having xpath "//div[@id='TaskViewModal']//div[3]/a" should have partial text as "View File"

   Scenario Outline: Verify options available in Task Status Dropdown
      Then element having xpath "//select[@name='task_status']/option[@value='<value>']" should have text as "<text>"
      Examples:
      |value| |text|
      |1|      |Created|
      |2|       |In Progress|
      |3|       |In Exception|
      |4|       |Completed|

  Scenario: Check default Task Status is Created
    Then element having xpath "//select[@name='task_status']" should have partial text as "Created"

  Scenario: Verify user can add communication without changing Task Status
    #Then I enter "Update communication2" into input field having xpath "//textarea[@name='communication']"
    Then I enter "InProgressTask" into input field having xpath "//textarea[@name='communication']"
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button[2]"

  Scenario: Verify updated communication should be displayed at top of table
    #Then element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]/p" should have partial text as "Update communication2"
    Then element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]/p" should have partial text as "InProgressTask"

  Scenario: Close Update Task Model
    Then I click on element having xpath "//button[@class='close']"

  Scenario: Verify Update communication is displayed on dashboard
    Then I click on element having id "0-status_tab"
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    #Then I enter "Update communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I enter "InProgressTask" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" to display
    #Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "Update communication2"
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "InProgressTask"

  Scenario: Check user can change Task Status
    Then I click on element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button"
    Then I wait 5 seconds for element having xpath "//select[@name='task_status']" to display
    Then I click on element having xpath "//select[@name='task_status']"
    Then I click on element having xpath "//select[@name='task_status']/option[@value='2']"
    #Then I enter "Update communication2" into input field having xpath "//textarea[@name='communication']"
    Then I enter "InProgressTask" into input field having xpath "//textarea[@name='communication']"
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button[2]"
    Then I click on element having xpath "//button[@class='close']"

  Scenario: Check updated Task Status and communication are reflected on Dashboard
    Then I click on element having id "0-status_tab"
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    #Then I enter "Update communication2" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I enter "InProgressTask" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" to display
    #Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "Update communication2"
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[9]/span" should have partial text as "InProgressTask"
    Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[5]" should have partial text as "In Progress"

  Scenario: View File




