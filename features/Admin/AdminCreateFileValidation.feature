@createfilevalidation
Feature: Create File Menu Validations

	Scenario: Navigate to create file page
      Then I click on element having xpath "//div[@id='loan-details']/div/span/a"
      Then I wait 15 seconds for element having xpath "//div[@class='text-center']/button[@type='submit']" to display
      Then element having class "section-title" should have partial text as "Create New File"
  ########################
    Scenario Outline: Verify Status available in Dropdown
      Then element having xpath "//select[@name='status']/option[@value='<value>']" should have text as "<text>"
      Examples:
      |value| |text|
      |1|       |Docs|
      |2|       |Approved|
      |3|       |Submission|
      |4|       |Hold|
      |5|       |Funded|
      |6|       |Sent to Audit|
      |7|       |Paid Out|
      |8|       |Archived|

  Scenario: Select Status as Docs
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Docs')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='4']" to display

  Scenario Outline: Verify Substatus available for Docs status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='<value>']" should have text as "<text>"
      Examples:
      |value| |text|
      |4|      |Docs Out|
      |5|      |Docs Pending|

  Scenario: Select Status as Approved
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Approved')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='6']" to display

  Scenario Outline: Verify Substatus available for Docs status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='<value>']" should have text as "<text>"
      Examples:
      |value| |text|
      |6|      |In-Process|
      |7|      |Clear to Close|

  Scenario: Select Status as Submission
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Submission')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='8']" to display

  Scenario Outline: Verify Substatus available for Submission status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='<value>']" should have partial text as "<text>"
      Examples:
      |value| |text|
      |8|      |Need to Disclose (New)|
      |9|      |Disclosure Released|
      |10|      |Ready to Submit|
      |11|      |Submitted|
      |12|      |Problems|

  Scenario: Select Status as Hold
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Hold')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='13']" to display

  Scenario: Verify Substatus available for Hold status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='13']" should have text as "Hold"

  Scenario: Select Status as Funded
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Funded')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='14']" to display

  Scenario: Verify Substatus available for Funded status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='14']" should have text as "Funded"

  Scenario: Select Status as Sent to Audit
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Sent to Audit')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='15']" to display

  Scenario: Verify Substatus available for Sent to Audit status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='15']" should have text as "Sent to Audit"

  Scenario: Select Status as Paid Out
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Paid Out')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='16']" to display

  Scenario: Verify Substatus available for Paid Out status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='16']" should have text as "Paid Out"

  Scenario: Select Status as Archived
    Then I click on element having xpath "//label[text()='Status']/..//select"
    Then I click on element having xpath "//select[@name='status']/option[contains(text(),'Archived')]"
    Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@value='17']" to display

  Scenario: Verify Substatus available for Archived status
    Then element having xpath "//select[@name='sub_status_id']/option[@value='17']" should have text as "Archived"
    ############################################################

    Scenario: Test compulsory fields to create file
      Then I wait 15 seconds for element having xpath "(//label[@class='required_star'])[2]" to display
      Then element having xpath "(//label[@class='required_star'])[1]" should have partial text as "Status"
      Then element having xpath "(//label[@class='required_star'])[3]" should have partial text as "Assigned Processor"
      Then element having xpath "(//label[@class='required_star'])[4]" should have partial text as "Charge Processing Fee"
      Then element having xpath "(//label[@class='required_star'])[5]" should have partial text as "Borrower Name"
      Then element having xpath "(//label[@class='required_star'])[6]" should have partial text as "Borrower Phone"

    Scenario: To check autofilled data
      Then element having xpath "//select[@name='status']/option[@selected='selected']" should have partial text as "Submission"
      Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@selected='selected']" to display
      Then element having xpath "//select[@name='sub_status_id']/option[@selected='selected']" should have partial text as "Need to Disclose"

      Scenario: To fill all required fields with valid data
        Then I click on element having id "id_charge_processing_fee_0"
        Then I scroll to element having xpath "//input[@name='borrower_name']"
        Then I enter "createfile::admin::name" into input field having xpath "//input[@name='borrower_name']"
        Then I enter "createfile::admin::phone" into input field having xpath "//input[@name='borrower_phone']"
        Then I enter "createfile::admin::email" into input field having xpath "//input[@name='borrower_email']"

    Scenario: To check autofilled data
      Then element having xpath "//select[@name='status']/option[@selected='selected']" should have partial text as "Submission"
      Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@selected='selected']" to display
      Then element having xpath "//select[@name='sub_status_id']/option[@selected='selected']" should have partial text as "Need to Disclose"

    Scenario: To select Processor
      Then I click on element having xpath "//label[text()='Assigned Processor']/..//div[text()='---------']"
      Then I click on element having xpath "//span[contains(text(),'Processor')]"
      Then element having xpath "//button[@title='Processor']/div/div/div" should have partial text as "Processor"

    Scenario: To select Yes on Processing fee
      Then I click on element having id "id_charge_processing_fee_0"

    Scenario: To Enter Name Phone and Email
      Then I scroll to element having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::admin::name" into input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::admin::phone" into input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::admin::email" into input field having xpath "//input[@name='borrower_email']"

    Scenario: To check validation1 of Borrower Name
      Then I clear input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::invalid::name1" into input field having xpath "//input[@name='borrower_name']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation2 of Borrower Name
      Then I clear input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::invalid::name2" into input field having xpath "//input[@name='borrower_name']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation3 of Borrower Name
      Then I clear input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::invalid::name3" into input field having xpath "//input[@name='borrower_name']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To Enter valid Borrower Name
      Then I clear input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::admin::name" into input field having xpath "//input[@name='borrower_name']"

    Scenario: To check validation1 of Borrower Phone no
      Then I clear input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::invalid::phone1" into input field having xpath "//input[@name='borrower_phone']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation2 of Borrower Phone no
      Then I clear input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::invalid::phone2" into input field having xpath "//input[@name='borrower_phone']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation3 of Borrower Phone no
      Then I clear input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::invalid::phone3" into input field having xpath "//input[@name='borrower_phone']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation4 of Borrower Phone no
      Then I clear input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::invalid::phone4" into input field having xpath "//input[@name='borrower_phone']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation5 of Borrower Phone no
      Then I clear input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::invalid::phone5" into input field having xpath "//input[@name='borrower_phone']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To enter valid Borrower Phone no
      Then I clear input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::admin::phone" into input field having xpath "//input[@name='borrower_phone']"

    Scenario: To check validation1 of Borrower Email id
      Then I clear input field having xpath "//input[@name='borrower_email']"
      Then I enter "createfile::invalid::email1" into input field having xpath "//input[@name='borrower_email']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation2 of Borrower Email id
      Then I clear input field having xpath "//input[@name='borrower_email']"
      Then I enter "createfile::invalid::email2" into input field having xpath "//input[@name='borrower_email']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation3 of Borrower Email id
      Then I clear input field having xpath "//input[@name='borrower_email']"
      Then I enter "createfile::invalid::email3" into input field having xpath "//input[@name='borrower_email']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To enter valid Borrower Email id
      Then I clear input field having xpath "//input[@name='borrower_email']"
      Then I enter "createfile::invalid::email4" into input field having xpath "//input[@name='borrower_email']"
      Then I scroll to element having xpath "//div[@class='text-center']/button[@type='submit']"
      Then I click on element having xpath "//div[@class='text-center']/button[@type='submit']"

    Scenario: To check validation1 of Borrower Email id
      Then I clear input field having xpath "//input[@name='borrower_email']"
      Then I enter "createfile::admin::email" into input field having xpath "//input[@name='borrower_email']"




