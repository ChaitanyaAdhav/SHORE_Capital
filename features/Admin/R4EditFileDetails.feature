@radmineditfile
Feature: Test Edit File Details Model for Reverse Mortgage

    Scenario: Navigate to Edit File Details model
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::admin::lastname" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::admin::lastname"
      Then I click on element having xpath "//table[@id='table_all']/tbody/tr/td[6]"
      Then I wait 15 seconds for element having xpath "//div[@name='file_id']" to display
      Then element having xpath "//div[@class='modal-title']" should have partial text as "Edit File Details"

    Scenario: Check options available in Model
      Then element having xpath "//label[text()='File Name']" should be present
      Then element having xpath "//label[text()='Receive Date']" should be present
      Then element having xpath "//label[text()='Case Number']" should be present
      Then element having xpath "//label[text()='Insurance']" should be present
      Then element having xpath "//label[text()='2nd Appraisal']" should be present
      Then element having xpath "//label[text()='HOA']" should be present
      Then element having xpath "//label[text()='Loan Officer']" should be present
      Then element having xpath "//label[text()='Lender']" should be present
      Then element having xpath "//label[text()='Status']" should be present
      Then element having xpath "//label[text()='Sub Status']" should be present
      Then element having xpath "//label[text()='Notes']" should be present
      Then element having xpath "//label[text()='Appraisal Ordered']" should be present
      Then element having xpath "//label[text()='Escrow Company']" should be present
      Then element having xpath "//label[text()='PayOff Exp']" should be present

    Scenario: Verify that File Name is reflected as per entered while file creation
      Then element having xpath "//label[text()='File Name']/../input" should have attribute value as "createfile::admin::lastname"

  #  Scenario: Verify that Receive Date is reflected as per entered while file creation
   #   Then element having xpath "//label[text()='Receive Date']/../input" should have attribute value as "01/28/2021"

#    Scenario: Verify that Case Number is reflected as per entered while file creation
#      Then element having xpath "//label[text()='Case Number']/../input" should have partial text as "createfile::admin::caseno"
#
#    Scenario: Verify that Insurance is reflected as per entered while file creation
#      Then element having xpath "//label[text()='Insurance']/../input" should have partial text as "createfile::admin::insurance"

    Scenario: Verify that 2nd apprisal is reflected as per entered while file creation
      Then element having xpath "//label[text()='2nd Appraisal']/../select" should have partial text as "TBD"

#    Scenario: Verify that HOA is reflected as per entered while file creation
#      Then element having xpath "//label[text()='HOA']/../input" should have partial text as "createfile::admin::hoa"
#
#    Scenario: Verify that Loan Officer is reflected as per entered while file creation
#      Then element having xpath "//label[text()='Loan Officer']/../input" should have partial text as "C1_LO1"
#
#    Scenario: Verify that Lender is reflected as per entered while file creation
#      Then element having xpath "//label[text()='Lender']/../input" should have partial text as "createfile::admin::lender"

    Scenario: Verify that Status is reflected as per entered while file creation
      Then element having xpath "//label[text()='Status']/../select" should have partial text as "Docs"

    Scenario: Verify that Sub Status is reflected as per entered while file creation
      Then element having xpath "//label[text()='Sub Status']/../select" should have partial text as "Docs Out"

    Scenario: Verify that Appraisal Ordered Date is reflected as per entered while file creation
      Then element having xpath "//label[text()='Appraisal Ordered']/../select" should have partial text as "OR"
#      Then element having xpath "//label[text()='Appraisal Ordered']/../input" should have partial text as "01/19/2021"

#    Scenario: Verify that Escrow Company is reflected as per entered while file creation
#      Then element having xpath "//label[text()='Escrow Company']/../input" should have partial text as "createfile::admin::escrowcomp"

    Scenario: Verify that user can edit FileName
      Then I clear input field having xpath "//label[text()='File Name']/../input"
      Then I enter "createfile::update::filename" into input field having xpath "//label[text()='File Name']/../input"

    Scenario: Verify that user can not edit Received date
      Then element having xpath "//label[text()='Receive Date']/../input" should be disabled

    Scenario: Verify that user can edit Case Number
      Then I clear input field having xpath "//label[text()='Case Number']/../input"
      Then I enter "createfile::update::caseno" into input field having xpath "//label[text()='Case Number']/../input"

     Scenario: Verify that user can edit Insurance
      Then I clear input field having xpath "//label[text()='Insurance']/../input"
      Then I enter "createfile::update::insurance" into input field having xpath "//label[text()='Insurance']/../input"

    Scenario: Verify that user can edit 2nd Appraisal
      Then I click on element having xpath "//label[text()='2nd Appraisal']/../select"
      Then I click on element having xpath "//label[text()='2nd Appraisal']/../select/option[@value='1']"

     Scenario: Verify that user can edit HOA
      Then I clear input field having xpath "//label[text()='HOA']/../input"
      Then I enter "createfile::update::hoa" into input field having xpath "//label[text()='HOA']/../input"

    Scenario: Verify that user can not edit Loan Officer Name
      Then element having xpath "//label[text()='Loan Officer']/../input[1]" should be disabled

    Scenario: Verify that user can edit Lender Name
      Then I clear input field having xpath "//label[text()='Lender']/../input"
      Then I enter "createfile::update::lender" into input field having xpath "//label[text()='Lender']/../input"

    Scenario: Verify that user can edit Status
      Then I click on element having xpath "//label[text()='Status']/../select"
      Then I click on element having xpath "//label[text()='Status']/../select/option[@value='11']"

    Scenario: Verify that user can edit Sub Status
      Then I click on element having xpath "//label[text()='Sub Status']/../select"
      Then I wait 15 seconds for element having xpath "//label[text()='Sub Status']/../select/option[@value='22']" to display
      Then I click on element having xpath "//label[text()='Sub Status']/../select/option[@value='22']"

    Scenario: Verify that user can add notes
      Then I clear input field having xpath "//label[text()='Notes']/../textarea"
      Then I enter "createfile::update::notes" into input field having xpath "//label[text()='Notes']/../textarea"

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
      Then I sleep for 20 seconds
      Then I click on element having xpath "//*[@id='myModal']//button[@type='button'][2]"
      Then I sleep for 3 seconds
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::update::filename" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::update::filename"

    Scenario: Verify updated File Name on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::update::filename"

   # Scenario: Verify Received date is not changed on Dashboard
    #  Then element having xpath "//*[@id='table_all']/tbody/tr/td[3]/span" should have partial text as "01.28"

    Scenario: Verify updated Case Number on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[4]" should have partial text as "createfile::update::caseno"

    Scenario: Verify Loan Officer name is not changed on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[5]" should have partial text as "C1_LO1"

    Scenario: Verify updated Lender on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[6]" should have partial text as "createfile::update::lender"

    Scenario: Verify updated Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[8]" should have partial text as "Submitted"

    Scenario: Verify updated Sub-Status on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[9]" should have partial text as "Submitted"

    Scenario: Verify updated Notes on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[10]/span[1]" should have partial text as "createfile::update::notes"

    Scenario: Verify updated Appr ord on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[11]" should have partial text as "01.20 OR"

    Scenario: Verify updated Escrow Company on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[12]" should have partial text as "createfile::update::escrowcomp"

    Scenario: Verify updated Insurance on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[13]" should have partial text as "createfile::update::insurance"

    Scenario: Verify updated PayOff Exp date on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[14]" should have partial text as "01.23"

    Scenario: Verify updated HOA on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[15]" should have partial text as "createfile::update::hoa"

    Scenario: Verify updated 2nd Appraisal on Dashboard
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[16]" should have partial text as "N/A"


    Scenario: Reset Filename to original
      Then I click on element having xpath "//table[@id='table_all']/tbody/tr/td[6]"
      Then I wait 5 seconds for element having xpath "//div[@class='modal-title']" to display
      Then element having xpath "//div[@class='modal-title']" should have partial text as "Edit File Details"
      Then I sleep for 3 seconds
      Then I clear input field having xpath "//label[text()='File Name']/../input"
      Then I enter "createfile::admin::lastname" into input field having xpath "//label[text()='File Name']/../input"
      Then I click on element having xpath "//*[@id='myModal']//button[@type='button'][2]"
      Then I sleep for 3 seconds
