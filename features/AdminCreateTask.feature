@createtask
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
      Then I enter "createfile::admin::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='AutomationTestAdmin']" to display
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
      Then element having xpath "//*[@id='AddTaskModalLabel']" should have partial text as "Add A New Processor Assist Task for File"

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








