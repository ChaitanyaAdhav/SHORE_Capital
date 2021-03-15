@test
Feature: test

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

###################################################################

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
      #Then I wait 5 seconds for element having xpath "//*[@id='assigned_id']/.." to display
      Then I click on element having xpath "//*[@id='assigned_id']/.."
      Then I click on element having xpath "//option[text()='Ch1_PO1']"
      Then element having xpath "//option[text()='Ch1_PO1']" should have partial text as "Ch1_PO1"

    Scenario: To select Yes on Processing fee
      Then I click on element having id "id_charge_processing_fee_0"

    Scenario: To select Loan Officer
      Then I click on element having xpath "//select[@name='lo_name']/.."
      Then I click on element having xpath "//option[text()='LO1']"
      Then element having xpath "//option[text()='LO1']" should have partial text as "LO1"

    Scenario: Enter Borrower details
      Then I enter "createfile::admin::name" into input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::admin::phone" into input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::admin::email" into input field having xpath "//input[@name='borrower_email']"
      Then I scroll to element having xpath "//input[@name='filepond']"

#    Scenario Outline: Upload Documents
#      Then I enter "createfile::doc::<value>" into input field having xpath "//input[@name='filepond'][1]"
#      Examples:
#        |value|  |no|
#        |audio|  |1|
#        |docx|  |1|
#        |gif|  |2|
#        |ppt|  |4|
#        |xls|  |5|
#        |xlsx|  |6|

    Scenario: Upload Doc
      Then I scroll to element having xpath "//input[@name='filepond']"
      Then I enter "createfile::doc::all" into input field having xpath "//input[@class='filepond--browser']"
#      Then I enter "createfile::doc::audio" into input field having xpath "//input[@class='filepond--browser']"
#      Then I enter "createfile::doc::docx" into input field having xpath "//input[@class='filepond--browser']"
#      Then I enter "createfile::doc::gif" into input field having xpath "//input[@name='filepond'][1]"
#      Then I enter "createfile::doc::jpg" into input field having xpath "//input[@name='filepond'][1]"
#      Then I enter "createfile::doc::pdf" into input field having xpath "//input[@name='filepond'][1]"
#      Then I enter "createfile::doc::png" into input field having xpath "//input[@name='filepond'][1]"
#      Then I enter "createfile::doc::ppt" into input field having xpath "//input[@name='filepond'][1]"
#      Then I enter "createfile::doc::xls" into input field having xpath "//input[@name='filepond'][1]"
#      Then I enter "createfile::doc::xlsx" into input field having xpath "//input[@name='filepond'][1]"
#      Then I sleep for 10 seconds

#    Scenario Outline: Wait for file to upload
#      Then I wait 100 seconds for element having xpath "//fieldset[@class='filepond--data']/input[<no>]" should have attribute value
#      Examples:
#      |no|
#      |1|
#      |2|
#      |3|
#      |4|
#      |5|
#      |6|
#      |7|
#      |8|
#      |9|

    Scenario: To submit file
      Then I sleep for 20 seconds
#      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
#      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"
