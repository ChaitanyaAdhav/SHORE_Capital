@rassistantconversetion
Feature: Test Conversation History of Assistant Reverse Mortgage

    Scenario: Navigate to Conversation History
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::assistant::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//td[contains(text(),'AutomationTestAsst')]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::assistant::name"
      Then I click on element having xpath "//*[@id='table_all']/tbody/tr/td[10]/span[2]"
      Then I wait 5 seconds for element having xpath "//div[contains(text(),'Conversation Log')]" to display
      Then element having xpath "//div[contains(text(),'Conversation Log')]" should have partial text as "Conversation Log"

    Scenario: Verify options available in model
      Then element having xpath "//div[contains(text(),'Conversation Log')]" should have partial text as "Conversation Log"
      Then element having xpath "//div[contains(text(),'Add New')]" should have partial text as "Add New Conversation"

    Scenario: Add new Conversation (valid)
      Then I enter "createfile::assistant::note2" into input field having id "note_text"
      Then I click on element having id "sub_mit"
      Then I sleep for 2 seconds
      Then element having xpath "//div[@class='card-body']/div[2]/div[1]/div[2]" should have partial text as "createfile::assistant::note2"

    Scenario:  Check content of table of Conversation log
      Then element having xpath "//div[@class='row my-2']/div[1]/div" should have partial text as "Date & Time"
      Then element having xpath "//div[@class='row my-2']/div[2]/div" should have partial text as "Item"
      Then element having xpath "//div[@class='row my-2']/div[3]/div" should have partial text as "Entered By"

     Scenario: Check if newly added conversation should be at top of table
      Then I enter "Latest Communication 1" into input field having id "note_text"
      Then I click on element having id "sub_mit"
      Then I sleep for 2 seconds
      Then element having xpath "//div[@class='card-body']/div[2]/div[1]/div[2]" should have partial text as "Latest Communication 1"
      Then I enter "Latest Communication 2" into input field having id "note_text"
      Then I click on element having id "sub_mit"
      Then I sleep for 2 seconds
      Then element having xpath "//div[@class='card-body']/div[2]/div[1]/div[2]" should have partial text as "Latest Communication 2"

   # Scenario: Add Blank conversation (Invalid)
    #  Then I click on element having id "sub_mit"
    #  Then I sleep for 2 seconds
    #  Then I close alert
    #  Then I sleep for 15 seconds

    Scenario: Close Conversation model
      Then I click on element having xpath "//div[@class='card-body']//button[text()='Close']"
      Then element having xpath "//button[@id='sub_mit']" should be disabled