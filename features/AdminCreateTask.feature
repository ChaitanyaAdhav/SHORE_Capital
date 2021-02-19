@createtask
Feature: Test Create Task for PA

    Scenario: Navigate to Create Task
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::update::filename" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then I click on element having xpath "//*[@id='table_all']/tbody/tr/td[1]/a"
    #  Then I wait 15 seconds for element having xpath "//*[@id='menu-tab']" to display
     # Then I click on element having xpath "//*[@id='menu-tab']"
     # Then I click on element having xpath "//a[text()='Loan Details']"
     # Then I wait 15 seconds for element having xpath "//div[@id='loan_detail']/div/span[1]" to display
      Then I sleep for 15 seconds
      Then element having xpath "//div[@id='loan_detail']/div/span[1]" should have partial text as "Loan details"





