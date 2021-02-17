@createfilevalidation
Feature: Create File Menu Validations

	Scenario: Navigate to create file page
      Then I click on element having xpath "//div[@id='loan-details']/div/span/a"
      Then I wait 15 seconds for element having xpath "//div[@class='text-center']/button[@type='submit']" to display
      Then element having class "section-title" should have partial text as "Create New File"

    Scenario: Test compulsory fields to create file
      Then element having xpath "//*[@class='required_star']/following-sibling::select[@name='status']" should be present
      Then element having xpath "//*[@class='required_star']/following-sibling::div/select[@name='assigned_name']" should be present
      Then element having xpath "//*[@class='required_star']/following-sibling::div/label/input[@name='charge_processing_fee']" should be present
      Then element having xpath "//*[@class='required_star']/following-sibling::input[@name='borrower_name']" should be present
      Then element having xpath "//*[@class='required_star']/following-sibling::input[@name='borrower_phone']" should be present
      Then element having xpath "//*[@class='required_star']/following-sibling::input[@name='borrower_email']" should be present
      Then element having xpath "//*[@class='required_star']/following-sibling::div[@class='input-group']" should not be present

    Scenario: Test compulsory fields to create file
      Then I wait 15 seconds for element having xpath "(//label[@class='required_star'])[2]" to display
      Then element having xpath "(//label[@class='required_star'])[1]" should have partial text as "Status"
      Then element having xpath "(//label[@class='required_star'])[2]" should have partial text as "Assigned Processor"
      Then element having xpath "(//label[@class='required_star'])[3]" should have partial text as "Charge Processing Fee"
      Then element having xpath "(//label[@class='required_star'])[4]" should have partial text as "Borrower Name"
      Then element having xpath "(//label[@class='required_star'])[5]" should have partial text as "Borrower Phone"
      Then element having xpath "(//label[@class='required_star'])[6]" should have partial text as "Borrower Email"

    Scenario: To check autofilled data
      Then element having xpath "//select[@name='status']/option[@selected='selected']" should have partial text as "Submission"
      Then I wait 15 seconds for element having xpath "//select[@name='sub_status_id']/option[@selected='selected']" to display
      Then element having xpath "//select[@name='sub_status_id']/option[@selected='selected']" should have partial text as "Need to Disclose"

      Scenario: To fill all required fields with valid data
        Then I click on element having id "id_charge_processing_fee_0"
        Then I scroll to element having xpath "//input[@name='borrower_name']"
        Then I enter "createfile::valid::name" into input field having xpath "//input[@name='borrower_name']"
        Then I enter "createfile::valid::phone" into input field having xpath "//input[@name='borrower_phone']"
        Then I enter "createfile::valid::email" into input field having xpath "//input[@name='borrower_email']"

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
      Then I enter "createfile::valid::name" into input field having xpath "//input[@name='borrower_name']"
      Then I enter "createfile::valid::phone" into input field having xpath "//input[@name='borrower_phone']"
      Then I enter "createfile::valid::email" into input field having xpath "//input[@name='borrower_email']"

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
      Then I enter "createfile::valid::name" into input field having xpath "//input[@name='borrower_name']"

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
      Then I enter "createfile::valid::phone" into input field having xpath "//input[@name='borrower_phone']"

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
      Then I enter "createfile::valid::email" into input field having xpath "//input[@name='borrower_email']"




