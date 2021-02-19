@assistantdashboard
Feature: Validate Assistant Dashboard

	Scenario: Verify user should land on forward mortgage page
      Then element having xpath "//span[@class='section-title']" should have partial text as "Forward Mortgage Dashboard"

    Scenario: Verify substatus are available on dashboard
      Then element having id "4-tab_substatus" should have partial text as "Docs Out"
      Then element having id "5-tab_substatus" should have partial text as "Docs Pending"

    Scenario: Verify table present on Dashboard
      Then I wait 5 seconds for element having xpath "//table[@id='DataTables_Table_0']" to display
      Then element having xpath "//table[@id='DataTables_Table_0']" should be present

    Scenario: Verify Search option is present on Dashboard
      Then element having xpath "//*[@id='DataTables_Table_0_filter']/label/input" should be present

    Scenario: Verify there is dropdown to select entries shown per page
      Then element having xpath "//select[@name='DataTables_Table_0_length']" should be present

    Scenario: Verify by default 100 entries should be visible per page
      Then element having xpath "//*[@id='DataTables_Table_0_length']/label/select" should have partial text as "100"

    Scenario: Verify content of table for Docs
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify status tabs available on Dashboard
      Then element having xpath "//*[@id='tabs_nav']/li[1]/a" should have partial text as "Docs"
      Then element having xpath "//*[@id='tabs_nav']/li[2]/a" should have partial text as "Approved"
      Then element having xpath "//*[@id='tabs_nav']/li[3]/a" should have partial text as "Submission"
      Then element having xpath "//*[@id='tabs_nav']/li[4]/a" should have partial text as "Hold"
      Then element having xpath "//*[@id='tabs_nav']/li[5]/a" should have partial text as "Funded"
      Then element having xpath "//*[@id='tabs_nav']/li[6]/a" should have partial text as "Sent to Audit"
      Then element having xpath "//*[@id='tabs_nav']/li[7]/a" should have partial text as "Paid Out"
      Then element having xpath "//*[@id='tabs_nav']/li[8]/a" should have partial text as "Archived"
      Then element having xpath "//*[@id='tabs_nav']/li[9]/a" should have partial text as "All"

    Scenario: Verify Create file button is available for processor login
      Then element having xpath "//*[@id="loan-details"]//*[contains(text(),'Create File')]" should be present

    Scenario: Verify substatus available in Docs tab
      Then element having id "4-tab_substatus" should have partial text as "Docs Out"
      Then element having id "5-tab_substatus" should have partial text as "Docs Pending"

    Scenario: Verify substatus available in Approved tab
      Then I click on element having id "2-status_tab"
      Then I wait 15 seconds for element having id "7-tab_substatus" to display
      Then element having id "7-tab_substatus" should have partial text as "Clear to Close"
      Then element having id "6-tab_substatus" should have partial text as "In-Process"

    Scenario: Verify content of table for Approved
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify substatus available in Submission tab
      Then I click on element having id "3-status_tab"
      Then I wait 15 seconds for element having id "11-tab_substatus" to display
      Then element having id "11-tab_substatus" should have partial text as "Submitted"
      Then element having id "10-tab_substatus" should have partial text as "Ready to Submit"
      Then element having id "9-tab_substatus" should have partial text as "Disclosure Released"
      Then element having id "8-tab_substatus" should have partial text as "Need to Disclose (New)"
      Then element having id "12-tab_substatus" should have partial text as "Problems"

    Scenario: Verify content of table for Submission
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify substatus available in Hold tab
      Then I click on element having id "4-status_tab"
      Then element having id "13-tab_substatus" should have partial text as "Hold"

    Scenario: Verify content of table for Hold
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify substatus available in Funded tab
      Then I click on element having id "5-status_tab"
      Then element having id "14-tab_substatus" should have partial text as "Funded"

    Scenario: Verify content of table for Funded
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify substatus available in Sent to Audit tab
      Then I click on element having id "6-status_tab"
      Then element having id "15-tab_substatus" should have partial text as "Sent to Audit"

    Scenario: Verify content of table for Hold
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify substatus available in Paid Out tab
      Then I click on element having id "7-status_tab"
      Then element having id "16-tab_substatus" should have partial text as "Paid Out"

    Scenario: Verify content of table for Paid Out
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

    Scenario: Verify substatus available in Archived tab
      Then I click on element having id "8-status_tab"
      Then element having id "17-tab_substatus" should have partial text as "Archived"

    Scenario: Verify content of table for Archived
      Then I wait 15 seconds for element having xpath "//*[@id='DataTables_Table_0']//th[1]" to display
      Then element having xpath "//*[@id='DataTables_Table_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[2]" should have partial text as "File"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[3]" should have partial text as "Rec.Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[4]" should have partial text as "LE"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[5]" should have partial text as "TT"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[6]" should have partial text as "LO"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[7]" should have partial text as "Lender"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[9]" should have partial text as "Notes"
      Then I scroll to element having xpath "//*[@id='DataTables_Table_0']//th[15]"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[10]" should have partial text as "CD"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[11]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[12]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[13]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[14]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='DataTables_Table_0']//th[15]" should have partial text as "File Id"

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
      Then element having xpath "//*[@id='table_all']//th[8]" should have partial text as "PA"
      Then element having xpath "//*[@id='table_all']//th[9]" should have partial text as "Status"
      Then element having xpath "//*[@id='table_all']//th[10]" should have partial text as "Sub Status"
      Then element having xpath "//*[@id='table_all']//th[11]" should have partial text as "Notes"
      Then element having xpath "//*[@id='table_all']//th[12]" should have partial text as "CD"
      Then element having xpath "//*[@id='table_all']//th[13]" should have partial text as "Appr Ord"
      Then element having xpath "//*[@id='table_all']//th[14]" should have partial text as "Escrow Dt"
      Then element having xpath "//*[@id='table_all']//th[15]" should have partial text as "Escrow Co"
      Then element having xpath "//*[@id='table_all']//th[16]" should have partial text as "PayOff Exp"
      Then element having xpath "//*[@id='table_all']//th[17]" should have partial text as "File Id"

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