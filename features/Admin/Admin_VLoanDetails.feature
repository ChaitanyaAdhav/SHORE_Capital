@adminviewloan
Feature: Test View Page for Admin Login

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

  Scenario: Navigate to View page
    Then I click on element having id "all-tab"
    Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
    #Then I enter "DocTest" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
    Then I enter "createfile::admin::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
    #Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='DocTest']" to display
    Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='AutomationTestAdmin']" to display
    Then I click on element having xpath "//*[@id='table_all']/tbody/tr[1]/td[1]/a"

  Scenario: Verify that user have landed on Loan Details page
    Then I switch to frame having index "0"
    Then I wait 15 seconds for element having xpath "//div[@id='loan_detail']/div/span" to display
    Then element having xpath "//div[@id='loan_detail']/div/span" should have partial text as "Loan details"

  Scenario: Verify available loan information
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[1]/td[1]" should have partial text as "Loan Number"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[1]/td[2]" should have partial text as ""
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[2]/td[1]" should have partial text as "Loan Status"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[2]/td[2]" should have partial text as ""
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[3]/td[1]" should have partial text as "Date"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[3]/td[2]" should have partial text as ""
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[4]/td[1]" should have partial text as "Loan Officer Name"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[4]/td[2]" should have partial text as "
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[5]/td[1]" should have partial text as "NMLS Id"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[5]/td[2]" should have partial text as ""
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[6]/td[1]" should have partial text as "Work Flow"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[6]/td[2]" should have partial text as ""
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[7]/td[1]" should have partial text as "Loan Purpose"
    #Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[7]/td[2]" should have partial text as ""
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[8]/td[1]" should have partial text as "File Name"
    Then element having xpath "(//table[@class='status-table'])[1]/tbody/tr[8]/td[2]" should have partial text as "createfile::admin::name"

  Scenario: Verify that view page has Menu and Verify tabs
    Then element having id "menu-tab" should have partial text as "Menus"
    Then element having id "summary-tab" should have partial text as "Summary"

  Scenario: Verify options available in Menu tab
    Then element having id "loan_list" should have partial text as "Loan Details"
    Then element having xpath "//div[@id='menu']//button" should have partial text as "URLA"
    Then element having id "password-details-list" should have partial text as "Manage Password"
    Then element having id "processor-assists-list" should have partial text as "Processor Assists"
    Then element having id "date-tracking-list" should have partial text as "Date Tracking"
    Then element having id "documents-list" should have partial text as "Documents"

#  Scenario: Verify options available in URLA list
#
#
#    Then element having id "type_of_mortgage_list" should have partial text as "Type of Mortgage"
#    Then element having id "property_information_list" should have partial text as "Property Information"
#    Then element having id "borrower_information_list" should have partial text as "Borrower Information"
#    Then element having id "employment_information_list" should have partial text as "Employment Information"
#    Then element having id "expense_information_list" should have partial text as "Expense Information"
#    Then element having id "assets_liabilities_list" should have partial text as "Assets And Liabilities"

  Scenario Outline: Verify Dropdown values are reflected as per values selected while file creation
    Then element having xpath "//label[text()='<field>']/../div/button/div/div/div" should have partial text as "<value>"
    Examples:
    |field|  |value|
    |Status|  |Submission|
    |Sub Status|  |Need to Disclose (New)|
    |Assigned Processor|  |Ch1_PO1|
    |Loan officer|  |LO1|
    |Tax Transcripts|  |(O)|
    |Closing Disclosure|  |S|
    |Appraisal Ordered|  |OR|

  Scenario Outline: Verify Dates
    Then element having xpath "//*[@value='<date>']" should have attribute id as "<field>"
    Examples:
    |date|  |field|
    |01/18/2021|  |cd_date|
    |01/16/2021|  |tt_date_value|
    |01/19/2021|  |ad_date|
    |01/21/2021|  |escrow_open_date|

  Scenario: Verify that user is not able to edit Received Date
    Then element having id "id_recieved_date" should be disabled

#  Scenario: Verify Lender Name
#    Then element having xpath "//form[@id='id_update_transaction_file']//*[@id='id_lender']" should have partial text "Test Lender admin"

  Scenario:








