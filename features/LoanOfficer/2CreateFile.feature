@locreatefile
Feature: Create File Menu

    Scenario: Navigate to create file page
      Then I click on element having xpath "//div[@id='loan-details']/div/span/a"
      Then I wait 15 seconds for element having xpath "//div[@class='text-center']/button[@type='submit']" to display
      Then element having class "section-title" should have partial text as "Create New File"

    Scenario: To select status
      Then I click on element having xpath "//label[text()='Status']/..//option[text()='Submission']"
      Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Submission')]"
      Then element having xpath "//select[@name='status']/option[@selected='selected']" should have partial text as "Submission"

    Scenario: To select sub-status
      Then I click on element having xpath "//label[text()='Sub Status']/../select"
      Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[contains(text(),'Need to Disclose (New)')]" to display
      Then I click on element having xpath "//select[@name='sub_status_id']/option[contains(text(),'Need to Disclose (New)')]"
      Then element having xpath "//select[@name='sub_status_id']/option[@value='8']" should have partial text as "Need to Disclose (New)"

    Scenario: To select Assigned Processor
      #Then I wait 5 seconds for element having xpath "//*[@id='assigned_id']" to display
      Then I click on element having xpath "//*[@id='assigned_id']/.."
      Then I click on element having xpath "//option[text()='Ch1_PO1']"
      Then element having xpath "//option[text()='Ch1_PO1']" should have partial text as "Ch1_PO1"

    Scenario: To select Yes on Processing fee
      Then I click on element having id "id_charge_processing_fee_0"

    Scenario: To select Est Close Date (15 Feb 2021)
      Then I click on element having xpath "//input[@name='est_closure_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Feb']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='15']"

    Scenario: To select Loan Officer
      Then I click on element having xpath "//select[@name='lo_name']/.."
      Then I click on element having xpath "//option[text()='LO1']"
      Then element having xpath "//option[text()='LO1']" should have partial text as "LO1"

    Scenario: To enter Lender
      Then I scroll to element having xpath "//input[@name='lender']"
      Then I enter "createfile::loanofficer::lender" into input field having xpath "//input[@name='lender']"

    Scenario: To select Tax Transcripts Date (16 Jan 2021)
      Then I click on element having xpath "//select[@name='tax_transcript']/.."
      Then I click on element having xpath "//option[text()='(O) ']"
      Then I sleep for 1 seconds
      Then I click on element having xpath "//input[@name='tt_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='16']"

    Scenario: To select Closing Disclosure Date (18 Jan 2021)
      Then I click on element having xpath "//select[@name='closing_disclosure']/.."
      Then I click on element having xpath "//option[text()='S']"
      Then I click on element having xpath "//input[@name='cd_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='18']"

    Scenario: To select Appraisal Ordered Date (19 Jan 2021)
      Then I click on element having xpath "//select[@name='appraisal_ordered']/.."
      Then I click on element having xpath "//option[text()='OR ']"
      Then I sleep for 1 seconds
      Then I click on element having xpath "//input[@id='ad_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='19']"

    Scenario: To enter Notes
      Then I scroll to element having xpath "//textarea[@name='note']"
      Then I enter "createfile::loanofficer::notes" into input field having xpath "//textarea[@name='note']"

    Scenario: To select Float as No
      Then I click on element having xpath "//label[text()=' Float']/..//input[@value='N']"

    Scenario: To select Lock Expiration Date (20 Jan 2021)
      Then I click on element having xpath "//input[@name='lock_expiraton_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='20']"

    Scenario: Enter Borrower details
      Then I enter "createfile::loanofficer::firstname" into input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::loanofficer::middlename" into input field having xpath "//input[@name='borrower_middle_name']"
      Then I enter "createfile::loanofficer::lastname" into input field having xpath "//input[@name='borrower_last_name']"
      Then I enter "createfile::loanofficer::suffix" into input field having xpath "//input[@name='borrower_suffix']"
      Then I enter "createfile::loanofficer::phone" into input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::loanofficer::email" into input field having xpath "//input[@name='borrower_email']"

    Scenario: Enter Escrow Company
      Then I enter "createfile::loanofficer::escrowcomp" into input field having xpath "//input[@name='escrow_company']"

    Scenario: To select Please Open as No
      Then I click on element having xpath "//label[text()='Please Open']/..//input[@value='N']"

    Scenario: To select Lock Expiration Date (21 Jan 2021)
      Then I click on element having xpath "//input[@name='escrow_open_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='21']"

    Scenario: To select Escrow fee as No
      Then I click on element having xpath "//label[text()=' Has Loan Officer Requested Escrow Fees']/..//input[@value='N']"

#    Scenario Outline: Upload Documents
#      Then I enter "createfile::doc::<value>" into input field having xpath "//input[@name='filepond'][1]"
#      Examples:
#        |value|
#        |audio|
#        |docx|
#        |gif|
#      #  |jpg|
#        |pdf|
#        |png|
#        |ppt|
#        |xls|
#        |xlsx|

    Scenario: Upload Doc
      Then I scroll to element having xpath "//input[@name='filepond']"
      Then I enter "createfile::doc::audio" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::docx" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::gif" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::jpg" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::pdf" into input field having xpath "//input[@class='filepond--browser']"
      #Then I enter "createfile::doc::png" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::ppt" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::xls" into input field having xpath "//input[@class='filepond--browser']"
      Then I enter "createfile::doc::xlsx" into input field having xpath "//input[@class='filepond--browser']"

    Scenario: To submit file
      Then I sleep for 30 seconds
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: Verify User have navigated to add Instruction popup
      Then I sleep for 5 seconds
      Then I switch to frame having index "0"
      Then I wait 20 seconds for element having xpath "//form[@id='Add_the_notes']//h5" to display
      Then element having xpath "//form[@id='Add_the_notes']//h5" should have partial text as "Please add processing instructions here"

    Scenario: Verify File created alert is displayed
      Then element having xpath "//form[@id='Add_the_notes']//div[@role='alert']" should have partial text as "createfile::loanofficer::lastname"

    Scenario: Verify File ID is displayed in model
      Then element having xpath "//form[@id='Add_the_notes']//div[@class='col-sm'][1]//b" should have partial text as "File Id:"

    Scenario: Verify assigned processor is displayed in model
      Then element having xpath "//form[@id='Add_the_notes']//div[@class='col-sm'][3]//b" should have partial text as "Assigned Processor:"
      Then element having xpath "//form[@id='Add_the_notes']//span[@id='text_assigned_id']" should have partial text as "Ch1_PO1"

    Scenario: Verify there is Cancel & Submit button in model
      Then element having xpath "//form[@id='Add_the_notes']//button[1]" should have partial text as "Cancel"
      Then element having xpath "//form[@id='Add_the_notes']//button[2]" should have partial text as "Submit"

    Scenario: Add Processing instructions
      Then I enter "createfile::loanofficer::instruction" into input field having xpath "//form[@id='Add_the_notes']//textarea"
      Then I click on element having xpath "//form[@id='Add_the_notes']//button[2]"
      Then I sleep for 3 seconds

    ##############################
    Scenario: Navigate to Documents
      Then I wait 10 seconds for element having xpath "//a[@id='documents-list']" to display
      Then I click on element having xpath "//a[@id='documents-list']"
      Then I wait 10 seconds for element having xpath "//span[text()='Upload Documents']" to display
      Then element having xpath "//span[text()='Upload Documents']" should have partial text as "Upload Documents"
########################

    Scenario: Navigate to Dashboard
      Then I switch to default
      Then I click on element having xpath "//*[text()='Back to Dashboard']"

    Scenario: Verify created file is displayed on dashboard
      Then I wait 20 seconds for element having xpath "//div[@id='loan-details']/div/span/a" to display
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::loanofficer::lastname" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"

    Scenario: Verify File Name on Dashboard
      Then I wait 20 seconds for element having xpath "//*[@id='table_all']/tbody/tr[1]/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[2]" should have partial text as "createfile::loanofficer::lastname"

    Scenario: Verify Lock Expiration date on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[4]" should have partial text as "01.20"

    Scenario: Verify TT on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[5]" should have partial text as "01.16 (O)"

    Scenario: Verify LO on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[6]" should have partial text as "C1_LO1"

    Scenario: Verify Lender on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[7]" should have partial text as "createfile::loanofficer::lender"

    Scenario: Verify Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[8]" should have partial text as "Submission"

    Scenario: Verify Sub-Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[9]" should have partial text as "Need to Disclose (New)"

    Scenario: Verify Notes on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[10]/span[1]" should have partial text as "createfile::loanofficer::instruction"

    Scenario: Verify CD on Dashboard
      Then I scroll to element having xpath "//*[@id='table_all']/tbody/tr/td[16]"
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[11]" should have partial text as "01.18 S"

    Scenario: Verify Appr ord on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[12]" should have partial text as "01.19 OR"

    Scenario: Verify Escrow date on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[13]" should have partial text as "01.21"

    Scenario: Verify Escrow Company on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[14]" should have partial text as "createfile::loanofficer::escrowcomp"
