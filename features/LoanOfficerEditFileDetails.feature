@loeditfile
Feature: Test Edit File Details Model

    Scenario: Navigate to Edit File Details model
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::loanofficer::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::loanofficer::name"
      Then I click on element having xpath "//table[@id='table_all']/tbody/tr/td[7]"
      Then I wait 5 seconds for element having xpath "//div[@class='modal-title']" to display
      Then element having xpath "//div[@class='modal-title']" should have partial text as "Edit File Details"

    Scenario: Check options available in Model
      Then element having xpath "//label[text()='File Name']" should be present
      Then element having xpath "//label[text()='Receive Date']" should be present
      Then element having xpath "//label[text()='Lock Expiration']" should be present
      Then element having xpath "//label[text()='Tax Transcripts']" should be present
      Then element having xpath "//label[text()='Loan Officer']" should be present
      Then element having xpath "//label[text()='Lender']" should be present
      Then element having xpath "//label[text()='Status']" should be present
      Then element having xpath "//label[text()='Sub Status']" should be present
      Then element having xpath "//label[text()='Notes']" should be present
      Then element having xpath "//label[text()='Closing Disclosure']" should be present
      Then element having xpath "//label[text()='Appraisal Ordered']" should be present
      Then element having xpath "//label[text()='Escrow Opened']" should be present
      Then element having xpath "//label[text()='Escrow Company']" should be present
      Then element having xpath "//label[text()='PayOff Exp']" should be present

    Scenario: Verify that File Name is reflected as per entered while file creation
      Then element having xpath "//label[text()='File Name']/../input" should have  value as "createfile::loanofficer::name"

  #  Scenario: Verify that Receive Date is reflected as per entered while file creation
   #   Then element having xpath "//label[text()='Receive Date']/../input" should have attribute value as "01/28/2021"

    Scenario: Verify that Lock Expiration Date is reflected as per entered while file creation
      Then element having xpath "//label[text()='Lock Expiration']/../select" should have partial text as "Locked"
      Then element having xpath "//label[text()='Lock Expiration']/../input" should have attribute value as "01/20/2021"

    Scenario: Verify that Tax Transcripts Date is reflected as per entered while file creation
      Then element having xpath "//label[text()='Tax Transcripts']/../select" should have partial text as "(O)"
      Then element having xpath "//label[text()='Tax Transcripts']/../input" should have attribute value as "01/16/2021"

    Scenario: Verify that Loan Officer is reflected as per entered while file creation
      Then element having xpath "//label[text()='Loan Officer']/../input" should have attribute value as "C1_LO1"

    Scenario: Verify that Lender is reflected as per entered while file creation
      Then element having xpath "//label[text()='Lender']/../input" should have attribute value as "createfile::loanofficer::lender"

    Scenario: Verify that Status is reflected as per entered while file creation
      Then element having xpath "//label[text()='Status']/../select" should have partial text as "Submission"

    Scenario: Verify that Sub Status is reflected as per entered while file creation
      Then element having xpath "//label[text()='Sub Status']/../select" should have partial text as "Need to Disclose (New)"

    Scenario: Verify that Closing Disclosure Date is reflected as per entered while file creation
      Then element having xpath "//label[text()='Closing Disclosure']/../select" should have partial text as "S"
      Then element having xpath "//label[text()='Closing Disclosure']/../input" should have attribute value as "01/18/2021"

    Scenario: Verify that Appraisal Ordered Date is reflected as per entered while file creation
      Then element having xpath "//label[text()='Appraisal Ordered']/../select" should have partial text as "IN"
      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should have attribute value as "01/19/2021"

    Scenario: Verify that Escrow Opened Date is reflected as per entered while file creation
      Then element having xpath "//label[text()='Escrow Opened']/../input" should have attribute value as "01/21/2021"

    Scenario: Verify that Escrow Company is reflected as per entered while file creation
      Then element having xpath "//label[text()='Escrow Company']/../input" should have attribute value as "createfile::loanofficer::escrowcomp"

    Scenario: Verify that user can edit FileName
      Then I clear input field having xpath "//label[text()='File Name']/../input"
      Then I enter "createfile::update::filename" into input field having xpath "//label[text()='File Name']/../input"

    Scenario: Verify that user can not edit Received date
      Then element having xpath "//label[text()='Receive Date']/../input" should be disabled

    Scenario: Verify that user can edit Lock Expiration Status
      Then I click on element having xpath "//label[text()='Lock Expiration']/../select"
      Then I click on element having xpath "//label[text()='Lock Expiration']/../select/option[@value='2']"

    Scenario: Check if date option is not available when user select LE as Not Locked
      Then element having xpath "//label[text()='Lock Expiration']/../input" should be disabled

    Scenario: Check if date option is available when user select LE as Locked
      Then I click on element having xpath "//label[text()='Lock Expiration']/../select"
      Then I click on element having xpath "//label[text()='Lock Expiration']/../select/option[@value='1']"
      Then element having xpath "//label[text()='Lock Expiration']/../input" should be enabled

    Scenario: Verify that user can edit Lock Expiration Date (21 Jan 2021)
      Then I click on element having xpath "//label[text()='Lock Expiration']/../input"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='21']"

    Scenario: Verify that user can edit Tax Transcripts Status
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select"
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select/option[@value='1']"

    Scenario: Check if date option is available when user select TT as N/A
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select"
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select/option[@value='1']"
      Then element having xpath "//label[text()='Tax Transcripts']/../input" should be disabled

    Scenario: Check if date option is available when user select TT as IN
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select"
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select/option[@value='2']"
      Then element having xpath "//label[text()='Tax Transcripts']/../input" should be disabled

    Scenario: Check if date option is available when user select TT as (O)
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select"
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select/option[@value='3']"
      Then element having xpath "//label[text()='Tax Transcripts']/../input" should be disabled

    Scenario: Check if date option is available when user select TT as (S)
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select"
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../select/option[@value='4']"
      Then element having xpath "//label[text()='Tax Transcripts']/../input" should be disabled

    Scenario: Verify that user can edit Tax Transcripts Date (17 Jan 2021)
      Then I click on element having xpath "//label[text()='Tax Transcripts']/../input"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='17']"

    Scenario: Verify that user can not edit Loan Officer Name
      Then element having xpath "//label[text()='Loan Officer']/../input[1]" should be disabled

    Scenario: Verify that user can edit Lender Name
      Then I clear input field having xpath "//label[text()='Lender']/../input"
      Then I enter "createfile::update::lender" into input field having xpath "//label[text()='Lender']/../input"

    Scenario: Verify that user can edit Status
      Then I click on element having xpath "//label[text()='Status']/../select"
      Then I click on element having xpath "//label[text()='Status']/../select/option[@value='1']"

    Scenario: Verify that user can edit Sub Status
      Then I click on element having xpath "//label[text()='Sub Status']/../select"
      Then I wait 15 seconds for element having xpath "//label[text()='Sub Status']/../select/option[@value='4']" to display
      Then I click on element having xpath "//label[text()='Sub Status']/../select/option[@value='4']"

    Scenario: Verify that user can add notes
      Then I clear input field having xpath "//label[text()='Notes']/../textarea"
      Then I enter "createfile::update::notes" into input field having xpath "//label[text()='Notes']/../textarea"

    Scenario: Verify that user can edit Closing Disclosure Status
      Then I click on element having xpath "//label[text()='Closing Disclosure']/../select"
      Then I click on element having xpath "//label[text()='Closing Disclosure']/../select/option[@value='2']"

    Scenario: Verify that user can edit Closing Disclosure Date (20 Jan 2021)
      Then I click on element having xpath "//label[text()='Closing Disclosure']/../input"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='20']"

    Scenario: Verify that user can edit Appraisal Ordered Status
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='4']"

    Scenario: Check if date option is available when user select AO as Streamline
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='4']"
      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should be disabled

    Scenario: Check if date option is available when user select AO as IN
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='5']"
      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should be enabled

    Scenario: Check if date option is available when user select AO as PIW
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='6']"
      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should be disabled

    Scenario: Check if date option is available when user select AO as OR
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='7']"
      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should be enabled

    Scenario: Check if date option is available when user select AO as Transfer
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='8']"
      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should be disabled

    Scenario: Verify that user can edit Appraisal Ordered Date (OR) (20 Jan 2021)
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../select/option[@value='7']"
      Then I click on element having xpath "//label[text()='Appraisal Ordered']/../input"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='20']"

    Scenario: Verify that user can edit Escrow Opened Date (22 Jan 2021)
      Then I click on element having xpath "//label[text()='Escrow Opened']/../input"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='22']"

    Scenario: Verify that user can edit Escrow Company
      Then I clear input field having xpath "//label[text()='Escrow Company']/../input"
      Then I enter "createfile::update::escrowcomp" into input field having xpath "//label[text()='Escrow Company']/../input"

    Scenario: Verify that user can edit PayOff Exp Date (23 Jan 2021)
      Then I click on element having xpath "//label[text()='PayOff Exp']/../input"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='23']"

    Scenario: To submit details
      Then I click on element having xpath "//*[@id='myModal']//button[@type='button'][2]"
      Then I wait 15 seconds for element having xpath "//div[@class='modal-title']" to not display
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I sleep for 5 seconds
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::update::filename" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]/span" should have partial text as "createfile::update::filename"

    Scenario: Verify updated File Name on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::update::filename"

   # Scenario: Verify Received date is not changed on Dashboard
    #  Then element having xpath "//*[@id='table_all']/tbody/tr/td[3]/span" should have partial text as "01.28"

    Scenario: Verify updated Lock Expiration date on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[4]" should have partial text as "01.21"

    Scenario: Verify updated TT on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[5]" should have partial text as "01.17 (S)"

    Scenario: Verify Loan Officer name is not changed on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[6]" should have partial text as "C1_LO1"

    Scenario: Verify updated Lender on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[7]" should have partial text as "createfile::update::lender"

    Scenario: Verify updated Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[9]" should have partial text as "Docs"

    Scenario: Verify updated Sub-Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[10]" should have partial text as "Docs Out"

    Scenario: Verify updated Notes on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[11]/span[1]" should have partial text as "createfile::update::notes"

    Scenario: Verify updated CD on Dashboard
      Then I scroll to element having xpath "//*[@id='table_all']/tbody/tr/td[17]"
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[12]" should have partial text as "01.22 R"

    Scenario: Verify updated Appr ord on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[13]" should have partial text as "01.20 OR"

    Scenario: Verify updated Escrow date on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[14]" should have partial text as "01.22"

    Scenario: Verify updated Escrow Company on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[15]" should have partial text as "createfile::update::escrowcomp"

    Scenario: Verify updated PayOff Exp date on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[16]" should have partial text as "01.23"

    Scenario: Reset Filename to original
      Then I click on element having xpath "//table[@id='table_all']/tbody/tr/td[7]"
      Then I wait 5 seconds for element having xpath "//div[@class='modal-title']" to display
      Then element having xpath "//div[@class='modal-title']" should have partial text as "Edit File Details"
      Then I clear input field having xpath "//label[text()='File Name']/../input"
      Then I enter "createfile::loanofficer::filename" into input field having xpath "//label[text()='File Name']/../input"
      Then I click on element having xpath "//*[@id='myModal']//button[@type='button'][2]"
      Then I sleep for 5 seconds




