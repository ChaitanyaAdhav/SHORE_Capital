@admincreatetask
Feature: Test Create Task for PA

    Scenario: I login with valid credentials
      Then I enter "login::admin::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::admin::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::admin::name"

    Scenario: Navigate to Create Task
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "DocTest" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      #Then I enter "createfile::admin::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='DocTest']" to display
      #Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='AutomationTestAdmin']" to display
      Then I click on element having xpath "//*[@id='table_all']/tbody/tr[1]/td[1]/a"
      Then I switch to frame having index "0"
      Then I wait 15 seconds for element having xpath "//*[@id='processor-assists-list']" to display
      Then I click on element having xpath "//*[@id='processor-assists-list']"
      Then I wait 15 seconds for element having xpath "//div[@id='processor-assists']/div/span[1]" to display
      Then element having xpath "//div[@id='processor-assists']/div/span[1]" should have partial text as "Processor Assist Task"

    Scenario: Navigate to Add Task model
      Then I wait 15 seconds for element having xpath "//button[text()='Add Task']" to display
      Then I click on element having xpath "//button[text()='Add Task']"
      Then I wait 5 seconds for element having id "AddTaskModalLabel" to display
      #Then element having xpath "//*[@id='AddTaskModalLabel']" should have partial text as "Add A New Processor Assist Task for File"

    Scenario: To select Task Type
      Then I click on element having xpath "//select[@name='task_type']"
      Then I wait 5 seconds for element having xpath "//select[@name='task_type']/option[@value='1']" to display
      Then I click on element having xpath "//select[@name='task_type']/option[@value='1']"

    Scenario: To add communication and task
      Then I enter "createtask::admin::communication1" into input field having xpath "//form[@id='add_task_form']//textarea[@name='communication']"
      Then I click on element having xpath "//form[@id='add_task_form']//button[@type='submit']"

    Scenario: Verify task is created
      Then I wait 10 seconds for element having xpath "//tbody[@class='task_table_data']/tr[1]" to display
      Then I enter "createtask::admin::communication1" into input field having xpath "//div[@id='table_data_filter']//input[@type='search']"
      Then I wait 5 seconds for element having xpath "//tbody[@class='task_table_data']/tr[1]" to display
      Then element having xpath "//tbody[@class='task_table_data']//tr[1]/td[5]/span" should have partial text as "createtask::admin::communication1"

########################
    Scenario: Navigate to update task model
    Then I sleep for 3 seconds
    Then I click on element having xpath "//*[@id='table_data']//tr[1]/td[1]/button"
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
    Then element having xpath "//label[text()='Communication:']" should be present

  Scenario: Verify non editable fields in model
    Then element having id "up_task_type" should be disabled
    Then element having id "up_task_id" should be disabled
    Then element having id "up_created_by" should be disabled
    Then element having id "up_company_name" should be disabled
    Then element having id "up_file_name" should be disabled
    Then element having id "up_file_id" should be disabled

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
    Then I sleep for 3 seconds
    #Then I enter "Update communication2" into input field having xpath "//form[@id='update_task_form']//textarea[@name='communication']"
    Then I enter "createtask::admin::communication2" into input field having xpath "//form[@id='update_task_form']//textarea[@name='communication']"
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button"

  Scenario: Verify updated communication should be displayed at top of table
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]" to display
    #Then element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]" should have partial text as "Update communication2"
    Then element having xpath "//tbody[@class='history_table_show']/tr[1]/td[3]/p" should have partial text as "createtask::admin::communication2"

  Scenario: Close Update Task Model
    Then I click on element having xpath "//h5[@id='TaskViewModalLabel']//..//button[@class='close']"

  Scenario: Verify Update communication is displayed on dashboard
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_data_filter']//input[@type='search']" to display
    #Then I enter "Update communication2" into input field having xpath "//div[@id='table_data_filter']//input[@type='search']"
    Then I enter "createtask::update::communication2" into input field having xpath "//div[@id='table_data_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_data']//tr[1]/td[5]/span" to display
    #Then element having xpath "//*[@id='table_data']//tr[1]/td[5]/span" should have partial text as "Update communication2"
    Then element having xpath "//*[@id='table_data']//tr[1]/td[5]/span" should have partial text as "createtask::admin::communication2"

  Scenario: Check user can change Task Status
    Then I click on element having xpath "//*[@id='table_data']//tr[1]/td[1]/button"
    Then I wait 5 seconds for element having xpath "//select[@name='task_status']" to display
    Then I click on element having xpath "//select[@name='task_status']"
    Then I click on element having xpath "//select[@name='task_status']/option[@value='2']"
    #Then I enter "Update communication3" into input field having xpath "//form[@id='update_task_form']//textarea[@name='communication']"
    Then I enter "createtask::admin::communication2" into input field having xpath "//textarea[@name='communication']"
    Then I click on element having xpath "//div[@id='TaskViewModal']//div[3]/button"
    Then I click on element having xpath "//h5[@id='TaskViewModalLabel']//..//button[@class='close']"

  Scenario: Check updated Task Status and communication are reflected on Dashboard
    Then I sleep for 3 seconds
    Then I wait 15 seconds for element having xpath "//div[@id='table_data_filter']//input[@type='search']" to display
    #Then I enter "Update communication3" into input field having xpath "//div[@id='table_data_filter']//input[@type='search']"
    Then I enter "createtask::update::communication2" into input field having xpath "//div[@id='table_data_filter']//input[@type='search']"
    Then I wait 15 seconds for element having xpath "//*[@id='table_data']//tr[1]/td[5]/span" to display
    #Then element having xpath "//*[@id='table_data']//tr[1]/td[5]/span" should have partial text as "Update communication3"
    Then element having xpath "//*[@id='table_data']//tr[1]/td[5]/span" should have partial text as "createtask::admin::communication2"
    Then element having xpath "//*[@id='table_data']//tr[1]/td[4]" should have partial text as "In Progress"






