@lodashboard
Feature: Validate Loan Officers Dashboard

	Scenario: Verify user should land on forward mortgage page
      Then element having xpath "//span[@class='section-title']" should have partial text as "Forward Mortgage Dashboard"

    Scenario: Verify table present on Dashboard
      Then I wait 5 seconds for element having xpath "//table[@id='table_all']" to display
      Then element having xpath "//table[@id='table_all']" should be present

    Scenario: Verify Search option is present on Dashboard
      Then element having xpath "//div[@id='table_all_filter']//input[@type='search']" should be present

    Scenario: Verify there is dropdown to select entries shown per page
      Then element having xpath "//select[@name='table_all_length']" should be present

    Scenario: Verify by default 100 entries should be visible per page
      Then element having xpath "//*[@id='table_all_length']/label/select" should have partial text as "100"

       Scenario: Verify status tabs available on Dashboard
      Then element having xpath "//*[@id='tabs_nav']/li[1]/a" should have partial text as "All"
      Then element having xpath "//*[@id='tabs_nav']/li[2]/a" should have partial text as "Archived"

    Scenario: Verify Create file button is available for loan officer login
      Then element having xpath "//*[@id="loan-details"]//*[contains(text(),'Create File')]" should be present

    Scenario: Verify content of table for Archived
      Then I click on element having id "8-status_tab"
      Then I sleep for 2 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[14]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "File Id"

    Scenario: Verify content of table for All
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']//td[contains(text(),'Submission')]" to display
      Then element having xpath "//*[@id='table_all']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_all']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='table_all']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='table_all']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='table_all']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='table_all']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='table_all']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='table_all']//th[8]" should have partial text as "Status"
      Then element having xpath "//*[@id='table_all']//th[9]" should have partial text as "Sub Status"
      Then element having xpath "//*[@id='table_all']//th[10]" should have partial text as "Notes"
      Then element having xpath "//*[@id='table_all']//th[11]" should have partial text as "CD"
      Then element having xpath "//*[@id='table_all']//th[12]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='table_all']//th[13]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='table_all']//th[14]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='table_all']//th[15]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='table_all']//th[16]" should have partial text as "File Id"

    Scenario: Validate Search functionality Positive
      Then I click on element having id "all-tab"
      Then I wait 5 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "Do_not_modify" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']//td[contains(text(),'Do_not_modify')]" to display
      Then element having xpath "//*[@id='table_all']//tr/td[2]" should have partial text as "Do_not_modify"

    Scenario: Validate Search functionality Negative
      Then I clear input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I enter "xxxx" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//tr[@class='odd']" to display
      Then element having xpath "//*[@id='table_all']//tr/td[2]/span" should not be present
      Then element having xpath "//tr[@class='odd']" should have partial text as "No matching records found"