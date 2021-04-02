@managepa
Feature: Validate Manage Processor Assistants page

    Scenario: Navigate to Manage Processor Assistant page
      Then I click on element having xpath "//i[@title='Manage Processor Assist']"
      Then I wait 15 seconds for element having xpath "//span[text()='Manage Processor Admin']" to display
      Then element having xpath "//span[@class='section-title']" should have partial text as "Manage Processor Admin"

    Scenario: Verify table present on Dashboard
      Then I wait 15 seconds for element having xpath "//table[@id='table_data_admin']" to display
      Then element having xpath "//table[@id='table_data_admin']" should be present

    Scenario: Verify Search option is present on Dashboard
      Then element having xpath "//*[@id='table_data_admin_filter']/label/input" should be present

    Scenario: Verify there is dropdown to select entries shown per page
      Then element having xpath "//select[@name='table_data_admin_length']" should be present

    Scenario: Verify Company name selection dropdown is present
      Then element having xpath "//select[@name='company_name']" should be present

    Scenario: Verify PA user dropdown should not present before selection of company
      Then element having xpath "//select[@name='company_pa_user']" should be disabled

    Scenario: Verify table should not display any file before selection of company
      Then element having xpath "//td[@class='dataTables_empty']" should have partial text as "No data available in table"

    Scenario: Select Company from dropdown
      Then I click on element having xpath "//select[@name='company_name']"
      Then I click on element having xpath "//select[@name='company_name']/option[contains(text(),'Chaitanya001')]"
      Then I wait 15 seconds for element having xpath "//table[@id='table_data_admin']/tbody/tr[2]" to display

    Scenario: Verify it shows files when user select Company
      Then I wait 15 seconds for element having xpath "//table[@id='table_data_admin']/tbody/tr[2]" to display
      Then element having xpath "//table[@id='table_data_admin']/tbody/tr[2]" should be present

    Scenario: Verify it shows PA dropdown after selection of company
      Then element having xpath "//select[@name='company_pa_user']" should be present

    Scenario: Select PA1
      Then I click on element having xpath "//select[@name='company_pa_user']"
      Then I click on element having xpath "//select[@name='company_pa_user']/option[text()='PA1']"

    Scenario: Verify Content of Table
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[2]" should have partial text as "Company Name"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[3]" should have partial text as "Task Type"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[4]" should have partial text as "Task Status"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[5]" should have partial text as "Task Id"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[6]" should have partial text as "File Id"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[7]" should have partial text as "File Name"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[8]" should have partial text as "Communication"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[9]" should have partial text as "Assigned To"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[10]" should have partial text as "Created By"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[11]" should have partial text as "Created Date"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[12]" should have partial text as "Updated By"
      Then element having xpath "//table[@id='table_data_admin']/thead/tr/th[13]" should have partial text as "Updated Date"

    Scenario: Validate Search functionality Positive
      Then I enter "Do_not_modify" into input field having xpath "//*[@id='table_data_admin_filter']/label/input[@type='search']"
      Then I wait 5 seconds for element having xpath "//*[@id='table_data_admin']//span[contains(text(),'Do_not_modify')]" to display
      Then element having xpath "//*[@id='table_data_admin']//tr/td[8]/span" should have partial text as "Do_not_modify"

    Scenario: Validate Search functionality Negative
      Then I clear input field having xpath "//*[@id='table_data_admin_filter']/label/input[@type='search']"
      Then I enter "xxxx" into input field having xpath "//*[@id='table_data_admin_filter']/label/input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_data_admin']//tr/td" to display
      Then element having xpath "//*[@id='table_data_admin']//tr[1]/td[2]" should not be present
      Then element having xpath "//*[@id='table_data_admin']//tr/td" should have partial text as "No matching records found"
      Then I clear input field having xpath "//*[@id='table_data_admin_filter']/label/input[@type='search']"

    Scenario: Assign task to PA1
      Then I enter "AutomationTestLoan" into input field having xpath "//*[@id='table_data_admin_filter']/label/input[@type='search']"
      Then I sleep for 2 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='table_data_admin']//span[contains(text(),'AutomationTestLoan')]" to display
      Then element having xpath "//*[@id='table_data_admin']//tr/td[7]/span" should have partial text as "AutomationTestLoan"
      Then I click on element having xpath "//*[@id='table_data_admin']//tr/td[1]/div/input"
      Then I click on element having xpath "//button[@name='assign_to_me']"
