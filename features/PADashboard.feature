@padashboard
Feature: Validate PA Dashboard

    Scenario: Verify user should land on Processor Assist Dashboard page
      Then element having xpath "//span[@class='section-title']" should have partial text as "Processor Assist Dashboard"

    Scenario: Verify user should land on Follow Up page
      Then element having id "-1-status_tab" should have partial text as "Follow Up"

    Scenario: Verify table present on Dashboard
      Then I wait 5 seconds for element having xpath "//table[@id='table_task_-1_-1']" to display
      Then element having xpath "//table[@id='table_task_-1_-1']" should be present

    Scenario: Verify Search option is present on Dashboard
      Then element having xpath "//*[@id='table_task_-1_-1_filter']/label/input" should be present

    Scenario: Verify there is dropdown to select entries shown per page
      Then element having xpath "//select[@name='table_task_-1_-1_length']" should be present

    Scenario: Validate Search functionality Positive
      Then I click on element having id "0-status_tab"
      Then I wait 5 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
      Then I enter "Do_not_modify" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
      Then I wait 5 seconds for element having xpath "//*[@id='table_task_0_0']//span[contains(text(),'Do_not_modify')]" to display
      Then element having xpath "//*[@id='table_task_0_0']//tr/td[8]/span" should have partial text as "Do_not_modify"

    Scenario: Validate Search functionality Negative
      Then I clear input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
      Then I enter "xxxx" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr/td" to display
      Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[2]" should not be present
      Then element having xpath "//*[@id='table_task_0_0']//tr/td" should have partial text as "No matching records found"
      Then I clear input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"

    Scenario: Verify Task Type tabs available on Dashboard
      Then element having id "table_task_-1_-1" should have partial text as "Follow Up"
      Then element having id "1-status_tab" should have partial text as "File Setup"
      Then element having id "2-status_tab" should have partial text as "Open Escrow & Title"
      Then element having id "3-status_tab" should have partial text as "Order Appraisal"
      Then element having id "4-status_tab" should have partial text as "Order Evidence of Insurance"
      Then element having id "5-status_tab" should have partial text as "Order VOE"
      Then element having id "6-status_tab" should have partial text as "Order TaxTranscript"
      Then element having id "7-status_tab" should have partial text as "Prepare Invoice"
      Then element having id "8-status_tab" should have partial text as "Order Payoffs"
      Then element having id "9-status_tab" should have partial text as "Docu Sign"
      Then element having id "0-status_tab" should have partial text as "All"

    Scenario: Verify Content of table
      Then element having xpath "//*[@id='table_task_-1_-1']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[3]" should have partial text as "Task Type"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[4]" should have partial text as "Task Status"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[5]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[6]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[7]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[8]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[9]" should have partial text as "Created By"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[10]" should have partial text as "Followup Date"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[11]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_-1_-1']//th[12]" should have partial text as "Updated Date"



