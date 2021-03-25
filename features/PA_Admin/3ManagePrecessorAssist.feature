@managepa
Feature: Validate Manage Processor Assistant page

    Scenario: Navigate to Manage Processor Assistant page
      Then I click on element having xpath "//i[@title='Manage Processor Assist']"
      Then I wait 15 seconds for element having xpath "//span[text()='Manage Processor Admin']" to display
      Then element having xpath "//span[@class='section-title']" should have partial text as "Manage Processor Admin"