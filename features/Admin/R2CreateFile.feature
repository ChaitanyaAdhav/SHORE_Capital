@radmincreatefile
Feature: Create File Menu Reverse Mortgage

    Scenario: Navigate to create file page
      Then I click on element having xpath "//div[@id='loan-details']/div/span/a"
      Then I wait 15 seconds for element having xpath "//div[@class='text-center']/button[@type='submit']" to display
      Then element having class "section-title" should have partial text as "Create New File"

    Scenario: To select status
      Then I click on element having id "id_status_2"
      Then I click on element having xpath "//select[@id='id_status_2']/option[text()='Docs']"
      #Then element having xpath "//select[@name='status_2']/option[@selected='selected']" should have partial text as "Docs"

    Scenario: To select sub-status
      Then I click on element having id "id_sub_status_id_2"
      Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id_2']/option[text()='Docs Out']" to display
      Then I click on element having xpath "//select[@name='sub_status_id_2']/option[text()='Docs Out']"
      #Then element having xpath "//select[@name='sub_status_id']/option[@value='8']" should have partial text as "Docs Out"

    Scenario: To select Assigned Processor
      Then I wait 5 seconds for element having xpath "//*[@id='assigned_id']/../button" to display
      Then I click on element having xpath "//*[@id='assigned_id']/../button"
      Then I click on element having xpath "//span[text()='Ch1_PO1']"

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
      Then I click on element having xpath "//select[@name='lo_name']/../button"
      Then I click on element having xpath "//span[text()='LO1']"

    Scenario: To enter Lender
      Then I scroll to element having xpath "//input[@name='lender']"
      Then I enter "createfile::admin::lender" into input field having xpath "//input[@name='lender']"

    Scenario: To select Tax Transcripts Date (16 Jan 2021)
      Then I click on element having xpath "//select[@name='tax_transcript']/../button"
      Then I click on element having xpath "//span[text()='(O) ']"
      Then I sleep for 1 seconds
      Then I click on element having xpath "//input[@name='tt_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='16']"

    Scenario: To select Appraisal Ordered Date (19 Jan 2021)
      Then I click on element having xpath "//select[@name='appraisal_ordered']/../button"
      Then I click on element having xpath "//span[text()='OR ']"
      Then I sleep for 1 seconds
      Then I click on element having xpath "//input[@id='ad_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='19']"

    Scenario: To enter Notes
      Then I scroll to element having xpath "//textarea[@name='note']"
      Then I enter "createfile::admin::notes" into input field having xpath "//textarea[@name='note']"

    Scenario: Enter Case Number
      Then I enter "createfile::admin::caseno" into input field having id "id_case_number"

    Scenario: Enter Insurance Number
      Then I enter "createfile::admin::insurance" into input field having id "id_insurance"

    Scenario: To select 2nd apprisal
      Then I click on element having id "id_appraisal_2nd"
      Then I click on element having xpath "//select[@id='id_appraisal_2nd']/option[text()='TBD']"

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
      Then I enter "createfile::admin::firstname" into input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::admin::middlename" into input field having xpath "//input[@name='borrower_middle_name']"
      Then I enter "createfile::admin::lastname" into input field having xpath "//input[@name='borrower_last_name']"
      Then I enter "createfile::admin::suffix" into input field having xpath "//input[@name='borrower_suffix']"
      Then I enter "createfile::admin::phone" into input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::admin::email" into input field having xpath "//input[@name='borrower_email']"

    Scenario: Enter Escrow Company
      Then I enter "createfile::admin::escrowcomp" into input field having xpath "//input[@name='escrow_company']"

    Scenario: To select Please Open as No
      Then I click on element having xpath "//label[text()='Please Open']/..//input[@value='N']"

    Scenario: To select Escrow Opened (21 Jan 2021)
      Then I click on element having xpath "//input[@name='escrow_open_date']"
      Then I click on element having xpath "//div[@class='datepicker-days']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-months']//th[@class='datepicker-switch']"
      Then I click on element having xpath "//div[@class='datepicker-years']//span[text()='2021']"
      Then I click on element having xpath "//div[@class='datepicker-months']//span[text()='Jan']"
      Then I click on element having xpath "//div[@class='datepicker-days']//td[text()='21']"

    Scenario: Enter HOA
      Then I enter "createfile::admin::hoa" into input field having id "id_hoa"

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
      Then element having xpath "//form[@id='Add_the_notes']//div[@role='alert']" should have partial text as "createfile::admin::lastname"

    Scenario: Verify File ID is displayed in model
      Then element having xpath "//form[@id='Add_the_notes']//div[@class='col-sm'][1]//b" should have partial text as "File Id:"

    Scenario: Verify assigned processor is displayed in model
      Then element having xpath "//form[@id='Add_the_notes']//div[@class='col-sm'][3]//b" should have partial text as "Assigned Processor:"
      Then element having xpath "//form[@id='Add_the_notes']//span[@id='text_assigned_id']" should have partial text as "Ch1_PO1"

    Scenario: Verify there is Cancel & Submit button in model
      Then element having xpath "//form[@id='Add_the_notes']//button[1]" should have partial text as "Cancel"
      Then element having xpath "//form[@id='Add_the_notes']//button[2]" should have partial text as "Submit"

    Scenario: Add Processing instructions
      Then I enter "createfile::admin::instruction" into input field having xpath "//form[@id='Add_the_notes']//textarea"
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
      Then I enter "createfile::admin::lastname" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"

    Scenario: Verify File Name on Dashboard
      Then I wait 20 seconds for element having xpath "//*[@id='table_all']/tbody/tr[1]/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[2]" should have partial text as "createfile::admin::lastname"

    Scenario: Verify Case No on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[4]" should have partial text as "createfile::admin::caseno"

    Scenario: Verify LO on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[5]" should have partial text as "C1_LO1"

    Scenario: Verify Lender on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[6]" should have partial text as "createfile::admin::lender"

    Scenario: Verify Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[8]" should have partial text as "Docs"

    Scenario: Verify Sub-Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[9]" should have partial text as "Docs Out"

    Scenario: Verify Notes on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[10]/span[1]" should have partial text as "createfile::admin::instruction"

    Scenario: Verify Appr ord on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr[1]/td[11]" should have partial text as "01.19 OR"

    Scenario: Verify Escrow Company on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[12]" should have partial text as "createfile::admin::escrowcomp"

    Scenario: Verify Insurance on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[13]" should have partial text as "createfile::admin::insurance"

    Scenario: Verify HOA on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[15]" should have partial text as "createfile::admin::hoa"

    Scenario: Verify 2nd Apprisal on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[16]" should have partial text as "TBD"
