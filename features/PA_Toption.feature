@paupdatetask
Feature: Validate Update Task Model

  Scenario: Navigate to update task model
    Then I click on element having id "0-status_tab"
    Then I wait 15 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
    Then I click on element having xpath "//*[@id='table_task_0_0']//tr[1]/td[1]/button"
    Then I wait 5 seconds for element having id "TaskViewModalLabel" to display
    Then element having id "TaskViewModalLabel" should have partial text as "Update The Task"


