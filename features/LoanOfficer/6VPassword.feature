@loviewpassword
Feature: Test View Page for Loan Officer Login (Manage Password)


  Scenario: Navigate to Manage Password page
    Then I wait 15 seconds for element having xpath "//div[@id='loan_detail']/div/span" to display
    Then I click on element having id "password-details-list"
    Then element having xpath "//div[@id='password-details']/div/span" should have partial text as "Manage Password"

  Scenario: Verify Content available in Manage Password page
    Then element having xpath "//form[@id='id_password_form']/div/div[1]/div/label" should have partial text as "Vendor"
    Then element having xpath "//form[@id='id_password_form']/div/div[2]/div/label" should have partial text as "Type"
    Then element having xpath "//form[@id='id_password_form']/div/div[3]/div/label" should have partial text as "User Name"
    Then element having xpath "//form[@id='id_password_form']/div/div[4]/div/label" should have partial text as "User Password"
    Then element having xpath "//form[@id='id_password_form']/div/div[5]/div/label" should have partial text as "Url"
    Then element having xpath "//*[@id="id_password_form"]/div/div[6]/div/button" should be present
    Then element having xpath "//*[@id="id_password_form"]/div/div[8]/div/button" should be present

  Scenario: Verify Content of table of Password
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[1]" should have partial text as "#"
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[2]" should have partial text as "Vendor"
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[3]" should have partial text as "Type"
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[4]" should have partial text as "User Name"
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[5]" should have partial text as "Password"
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[6]" should have partial text as "Url"
    Then element having xpath "//*[@id='id_password_form']/div/div[7]//th[7]" should have partial text as "Action"

  Scenario: Open Type dropdown
    Then I wait 10 seconds for element having xpath "//label[text()='Type']/..//option[text()='---------']" to display
    Then I click on element having xpath "//select[@name='password_type']/.."
    Then I wait 5 seconds for element having xpath "//div[@id='bs-select-27']/ul/li[2]/a/span" to display

  Scenario Outline: Verify types of password (Dropdown List)
    Then element having xpath "//div[@id='bs-select-27']/ul/li[<value>]/a/span" should have partial text as "<type>"
    Examples:
    |value|  |type|
    |2|  |Lender|
    |3|  |Credit|
    |4|  |AUS - DO Fannie Mae|
    |5|  |AUS - Fannie Mae|
    |6|  |AUS - Freddie Mac|
    |7|  |Compliance|
    |8|  |Document Provider|
    |9|  |E-Sign|
    |10|  |Flood Report|
    |11|  |Fraud|
    |12|  |Mers|
    |13|  |Mortgage Insurance Co.|
    |14|  |Pricing Engine|
    |15|  |SSA89|
    |16|  |Tax Transcript|
    |17|  |Title|
    |18|  |UCD|
    |19|  |VOE|
    |20|  |Broker Company Login|
    |21|  |Other|

  Scenario: Select Password type
    Then I click on element having xpath "//div[@id='bs-select-27']/ul/li[2]/a/span"

  Scenario: Add password1
    Then I enter "password::user1::vendor" into input field having id "id_password_name"
    Then I enter "password::user1::username" into input field having id "id_user_name"
    Then I enter "password::user1::password" into input field having id "id_user_password"
    Then I enter "password::user1::url" into input field having id "id_user_password_url"
    Then I click on element having xpath "//*[@id='id_password_form']/div/div[6]/div/button"

  Scenario: Check index in table
    Then I wait 5 seconds for element having xpath "//*[@id='password_table']/tr/td[1]/input[1]" to display
    Then element having xpath "//*[@id='password_table']/tr/th" should have partial text as "1"
  Scenario: Check vendor in table
    Then element having xpath "//*[@id='password_table']/tr/td[1]/input[1]" should have attribute value as "password::user1::vendor"
  Scenario: Check type in table
    Then element having xpath "//*[@id='password_table']/tr/td[2]" should have partial text as "Lender"
  Scenario: Check username in table
    Then element having xpath "//*[@id='password_table']/tr/td[3]/input" should have attribute value as "password::user1::username"
  Scenario: Check password in table
    Then element having xpath "//*[@id='password_table']/tr/td[4]/input" should have attribute value as "password::user1::password"
  Scenario: Check url in table
    Then I sleep for 2 seconds
    Then element having xpath "//*[@id='password_table']/tr/td[5]/input" should have attribute value as "password::user1::url"

  Scenario: Check whether password has remove button
    Then element having xpath "//*[@id='password_table']/tr/td[6]/button/small" should be present
    Then element having xpath "//*[@id='password_table']/tr/td[6]/button/small" should have partial text as "Remove"

  Scenario: Verify user can remove password from table
    Then I click on element having xpath "//*[@id='password_table']/tr/td[6]/button"
    Then I sleep for 3 seconds
    Then element having xpath "//*[@id='password_table']/tr/td[6]/button" should not be present

  Scenario: Add and Save Password
    Then I click on element having xpath "//select[@name='password_type']/.."
    Then I wait 5 seconds for element having xpath "//div[@id='bs-select-27']/ul/li[2]/a/span" to display
    Then I click on element having xpath "//div[@id='bs-select-27']/ul/li[2]/a/span"
    Then I enter "password::user2::vendor" into input field having id "id_password_name"
    Then I enter "password::user2::username" into input field having id "id_user_name"
    Then I enter "password::user2::password" into input field having id "id_user_password"
    Then I enter "password::user2::url" into input field having id "id_user_password_url"
    Then I click on element having xpath "//*[@id='id_password_form']/div/div[6]/div/button"
    Then I wait 5 seconds for element having xpath "//*[@id='password_table']/tr/td[1]/input[1]" to display
    Then element having xpath "//*[@id='password_table']/tr/td[1]/input[1]" should have attribute value as "password::user2::vendor"
    Then I click on element having xpath "//*[@id='id_password_form']/div/div[8]/div/button"

  Scenario: Verify added password is displayed in table
    Then I wait 5 seconds for element having xpath "//*[@id='password_table']/tr/td[1]/input[1]" to display
    Then element having xpath "//*[@id='password_table']/tr/th" should have partial text as "1"
    Then element having xpath "//*[@id='password_table']/tr/td[1]/input[1]" should have attribute value as "password::user2::vendor"
    Then element having xpath "//*[@id='password_table']/tr/td[2]" should have partial text as "Lender"
    Then element having xpath "//*[@id='password_table']/tr/td[3]/input" should have attribute value as "password::user2::username"
    Then element having xpath "//*[@id='password_table']/tr/td[4]/input" should have attribute value as "password::user2::password"
    Then element having xpath "//*[@id='password_table']/tr/td[5]/input" should have attribute value as "password::user2::url"
    Then I sleep for 2 seconds





