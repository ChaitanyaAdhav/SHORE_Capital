@test
Feature: Test data flow between different logins

    Scenario: Navigate to LoanOfficer1 url
      Given I navigate to "url::user::company"
      Then element having xpath "//*[@type='submit']" should have text as "Login"
      Then I maximize browser window

    Scenario: Login as LoanOfficer1
      Then I enter "login::LoanOfficer1::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::LoanOfficer1::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::LoanOfficer1::name"

    Scenario: Check file in Loan Officer 1 (File should be present)
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::valid::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::valid::name"

    Scenario: Logout from LO1 account
      Then I click on element having class "mx-1"
      Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
      Then element having xpath "//*[@type='submit']" should have text as "Login"

    Scenario: Login as LoanOfficer2
      Given I navigate to "url::user::company"
      Then element having xpath "//*[@type='submit']" should have text as "Login"
      Then I enter "login::LoanOfficer2::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::LoanOfficer2::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::LoanOfficer2::name"

    Scenario: Check in Loan Officer 2 (File should not present)
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::valid::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//table[@id='table_all']//tr[@class='odd']/td" to display
      Then element having xpath "//*[@id='table_all']//tr/td[2]" should not be present

    Scenario: Logout from LO2 account
      Then I click on element having class "mx-1"
      Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
      Then element having xpath "//*[@type='submit']" should have text as "Login"





    Scenario: Login as Processor1
      Given I navigate to "url::user::company"
      Then element having xpath "//*[@type='submit']" should have text as "Login"
      Then I enter "login::processor1::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::processor1::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::processor1::name"

    Scenario: Check in Processor 1 (File should be present)
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::valid::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::valid::name"

    Scenario: Logout from PO1
      Then I click on element having class "mx-1"
      Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
      Then element having xpath "//*[@type='submit']" should have text as "Login"

    Scenario: Login as Processor2
      Given I navigate to "url::user::company"
      Then element having xpath "//*[@type='submit']" should have text as "Login"
      Then I enter "login::processor2::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::processor2::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::processor2::name"

    Scenario: Check in Processor 2 (File should not present)
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::valid::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//table[@id='table_all']//tr[@class='odd']/td" to display
      Then element having xpath "//*[@id='table_all']//tr/td[2]" should not be present

    Scenario: Logout from PO2
      Then I click on element having class "mx-1"
      Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
      Then element having xpath "//*[@type='submit']" should have text as "Login"




    Scenario: Login as Assistant1
      Given I navigate to "url::user::company"
      Then element having xpath "//*[@type='submit']" should have text as "Login"
      Then I enter "login::assistant1::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::assistant1::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::assistant1::name"

    Scenario: Check in Assistant 1 (File should be present)
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::valid::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_all']/tbody/tr/td[2]" to display
      Then element having xpath "//*[@id='table_all']/tbody/tr/td[2]" should have partial text as "createfile::valid::name"

    Scenario: Logout from Assistant1
      Then I click on element having class "mx-1"
      Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
      Then element having xpath "//*[@type='submit']" should have text as "Login"

    Scenario: Login as Assistant2
      Given I navigate to "url::user::company"
      Then element having xpath "//*[@type='submit']" should have text as "Login"
      Then I enter "login::assistant2::user" into input field having xpath "//*[@name='user_name']"
      Then I enter "login::assistant2::password" into input field having xpath "//*[@name='password']"
      Then I click on element having xpath "//*[@type='submit']"
      Then I wait 15 seconds for element having class "mx-1" to display
      Then element having class "mx-1" should have partial text as "login::assistant2::name"

    Scenario: Check in Assistant 2 (File should not present)
      Then I click on element having id "all-tab"
      Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
      Then I enter "createfile::valid::name" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//table[@id='table_all']//tr[@class='odd']/td" to display
      Then element having xpath "//*[@id='table_all']//tr/td[2]" should not be present

    Scenario: Logout from Assistant2
      Then I click on element having class "mx-1"
      Then I click on element having xpath "//a[@id='profile']/../div/a[3]"
      Then element having xpath "//*[@type='submit']" should have text as "Login"

