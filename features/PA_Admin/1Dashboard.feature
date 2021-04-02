@paadashboard
Feature: Validate PA Dashboard

    Scenario: Verify user should land on Processor Assist Admin Dashboard page
      Then element having xpath "//span[@class='section-title']" should have partial text as "Processor Assist Admin Dashboard"

    Scenario: Verify user should land on Follow Up page
      Then element having id "-1-status_tab" should have partial text as "Follow Up"

    Scenario: Verify table present on Dashboard
      Then I wait 5 seconds for element having xpath "//table[@id='table_task_admin_-1_-1']" to display
      Then element having xpath "//table[@id='table_task_admin_-1_-1']" should be present

    Scenario: Verify Search option is present on Dashboard
      Then element having xpath "//*[@id='table_task_admin_-1_-1_filter']/label/input" should be present

    Scenario: Verify there is dropdown to select entries shown per page
      Then element having xpath "//select[@name='table_task_admin_-1_-1_length']" should be present

    Scenario: Verify Task Type tabs available on Dashboard
      Then element having id "-1-status_tab" should have partial text as "Follow Up"
      Then element having id "1-status_tab" should have partial text as "File Setup"
      Then element having id "2-status_tab" should have partial text as "Open Escrow & Title"
      Then element having id "3-status_tab" should have partial text as "Order Appraisal"
      Then element having id "4-status_tab" should have partial text as "Order Evidence of Insurance"
      Then element having id "5-status_tab" should have partial text as "Order VOE"
      Then element having id "6-status_tab" should have partial text as "Order TaxTranscript"
      Then element having id "7-status_tab" should have partial text as "Prepare Invoice"
      Then element having id "8-status_tab" should have partial text as "Order Payoffs"
      Then element having id "9-status_tab" should have partial text as "Docu Sign"
      Then element having id "0-status_tab" should have partial text as "All"

    Scenario: Verify Content of table of Follow-up tab
      Then I click on element having id "-1-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_admin_-1_-1']//th[11]" to display
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[4]" should have partial text as "Task Type"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[5]" should have partial text as "Task Status"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[6]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[7]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[8]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[9]" should have partial text as "Communication"
      Then I scroll to element having xpath "//*[@id='table_task_admin_-1_-1']//th[13]"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[10]" should have partial text as "Created By"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[11]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_admin_-1_-1']//th[13]" should have partial text as "Updated Date"

    Scenario: Verify there is Copy button in Followup tab
      Then element having xpath "//div[@id='table_task_admin_-1_-1_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Followup tab
      Then element having xpath "//div[@id='table_task_admin_-1_-1_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Task Status present in File Setup tab
      Then I click on element having id "1-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='1_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='1_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='1_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='1_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='1_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in File Steup tab
      Then element having xpath "//div[@id='table_task_1_1_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in File Setup tab
      Then element having xpath "//div[@id='table_task_1_1_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of File Setup tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_1']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_1']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_1']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_1']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_1']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_1']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_1']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_1']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_1']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_1']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_1']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_1']//th[13]"
      Then element having xpath "//*[@id='table_task_1_1']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_1']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_1']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Open Escrow & Title tab
      Then I click on element having id "2-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='2_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='2_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='2_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='2_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='2_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Open Escrow & Title tab
      Then element having xpath "//div[@id='table_task_1_2_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Open Escrow & Title tab
      Then element having xpath "//div[@id='table_task_1_2_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Open Escrow & Title tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_2']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_2']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_2']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_2']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_2']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_2']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_2']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_2']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_2']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_2']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_2']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_2']//th[13]"
      Then element having xpath "//*[@id='table_task_1_2']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_2']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_2']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Order Appraisal tab
      Then I click on element having id "3-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='3_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='3_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='3_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='3_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='3_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Order Appraisal tab
      Then element having xpath "//div[@id='table_task_1_3_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Order Appraisal tab
      Then element having xpath "//div[@id='table_task_1_3_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Order Appraisal tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_3']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_3']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_3']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_3']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_3']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_3']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_3']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_3']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_3']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_3']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_3']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_3']//th[13]"
      Then element having xpath "//*[@id='table_task_1_3']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_3']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_3']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Order Evidence of Insurance tab
      Then I click on element having id "4-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='4_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='4_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='4_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='4_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='4_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Order Evidence of Insurance tab
      Then element having xpath "//div[@id='table_task_1_4_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Order Evidence of Insurance tab
      Then element having xpath "//div[@id='table_task_1_4_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Order Evidence of Insurance tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_4']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_4']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_4']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_4']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_4']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_4']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_4']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_4']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_4']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_4']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_4']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_4']//th[13]"
      Then element having xpath "//*[@id='table_task_1_4']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_4']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_4']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Order VOE  tab
      Then I click on element having id "5-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='5_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='5_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='5_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='5_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='5_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Order VOE tab
      Then element having xpath "//div[@id='table_task_1_5_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Order VOE tab
      Then element having xpath "//div[@id='table_task_1_5_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Order VOE tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_5']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_5']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_5']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_5']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_5']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_5']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_5']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_5']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_5']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_5']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_5']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_5']//th[13]"
      Then element having xpath "//*[@id='table_task_1_5']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_5']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_5']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Order TaxTranscript tab
      Then I click on element having id "6-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='6_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='6_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='6_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='6_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='6_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Order TaxTranscript tab
      Then element having xpath "//div[@id='table_task_1_6_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Order TaxTranscript tab
      Then element having xpath "//div[@id='table_task_1_6_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Order TaxTranscript tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_6']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_6']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_6']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_6']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_6']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_6']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_6']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_6']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_6']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_6']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_6']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_6']//th[13]"
      Then element having xpath "//*[@id='table_task_1_6']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_6']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_6']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Prepare Invoice tab
      Then I click on element having id "7-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='7_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='7_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='7_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='7_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='7_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Prepare Invoice tab
      Then element having xpath "//div[@id='table_task_1_7_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Prepare Invoice tab
      Then element having xpath "//div[@id='table_task_1_7_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Prepare Invoice tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_7']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_7']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_7']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_7']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_7']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_7']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_7']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_7']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_7']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_7']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_7']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_7']//th[13]"
      Then element having xpath "//*[@id='table_task_1_7']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_7']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_7']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Order Payoffs tab
      Then I click on element having id "8-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='8_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='8_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='8_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='8_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='8_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Order Payoffs tab
      Then element having xpath "//div[@id='table_task_1_8_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Order Payoffs tab
      Then element having xpath "//div[@id='table_task_1_8_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Order Payoffs tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_8']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_8']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_8']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_8']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_8']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_8']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_8']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_8']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_8']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_8']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_8']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_8']//th[13]"
      Then element having xpath "//*[@id='table_task_1_8']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_8']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_8']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Task Status present in Docu Sign tab
      Then I click on element having id "9-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='9_status_div']//*[@id='0-tab_substatus']" to display
      Then element having xpath "//*[@id='9_status_div']//*[@id='1-tab_substatus']" should have partial text as "Created"
      Then element having xpath "//*[@id='9_status_div']//*[@id='2-tab_substatus']" should have partial text as "In Progress"
      Then element having xpath "//*[@id='9_status_div']//*[@id='3-tab_substatus']" should have partial text as "In Exception"
      Then element having xpath "//*[@id='9_status_div']//*[@id='0-tab_substatus']" should have partial text as "All"

    Scenario: Verify there is Copy button in Docu Sign tab
      Then element having xpath "//div[@id='table_task_1_9_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in Docu Sign tab
      Then element having xpath "//div[@id='table_task_1_9_wrapper']/div/button[2]/span" should have partial text as "Excel"

    Scenario: Verify Content of table of Docu Sign tab
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_1_9']//th[2]" to display
      Then element having xpath "//*[@id='table_task_1_9']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_1_9']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_1_9']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_1_9']//th[4]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_1_9']//th[5]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_1_9']//th[6]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_1_9']//th[7]" should have partial text as "Communication"
      Then element having xpath "//*[@id='table_task_1_9']//th[8]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_1_9']//th[9]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_1_9']//th[10]" should have partial text as "Created By"
      Then I scroll to element having xpath "//*[@id='table_task_1_9']//th[13]"
      Then element having xpath "//*[@id='table_task_1_9']//th[11]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_1_9']//th[12]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_1_9']//th[13]" should have partial text as "Updated Date"
  #######################
  ##############
    Scenario: Verify Content of table of All tab
      Then I click on element having id "0-status_tab"
      Then I sleep for 3 seconds
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//th[2]" to display
      Then element having xpath "//*[@id='table_task_0_0']//th[1]" should have partial text as "#"
      Then element having xpath "//*[@id='table_task_0_0']//th[2]" should have partial text as "Company Name"
      Then element having xpath "//*[@id='table_task_0_0']//th[3]" should have partial text as "WorkFlow"
      Then element having xpath "//*[@id='table_task_0_0']//th[4]" should have partial text as "Task Type"
      Then element having xpath "//*[@id='table_task_0_0']//th[5]" should have partial text as "Task Status"
      Then element having xpath "//*[@id='table_task_0_0']//th[6]" should have partial text as "Task Id"
      Then element having xpath "//*[@id='table_task_0_0']//th[7]" should have partial text as "File Id"
      Then element having xpath "//*[@id='table_task_0_0']//th[8]" should have partial text as "File Name"
      Then element having xpath "//*[@id='table_task_0_0']//th[9]" should have partial text as "Communication"
      Then I scroll to element having xpath "//*[@id='table_task_0_0']//th[14]"
      Then element having xpath "//*[@id='table_task_0_0']//th[10]" should have partial text as "FollowUp Date"
      Then element having xpath "//*[@id='table_task_0_0']//th[11]" should have partial text as "Assigned TO"
      Then element having xpath "//*[@id='table_task_0_0']//th[12]" should have partial text as "Created By"
      Then element having xpath "//*[@id='table_task_0_0']//th[13]" should have partial text as "Created Date"
      Then element having xpath "//*[@id='table_task_0_0']//th[14]" should have partial text as "Updated By"
      Then element having xpath "//*[@id='table_task_0_0']//th[15]" should have partial text as "Updated Date"

    Scenario: Verify there is Copy button in All tab
      Then element having xpath "//div[@id='table_task_0_0_wrapper']/div/button[1]/span" should have partial text as "Copy"

    Scenario: Verify there is Excel button in All tab
      Then element having xpath "//div[@id='table_task_0_0_wrapper']/div/button[2]/span" should have partial text as "Excel"

  #######################

    Scenario: Validate Search functionality Positive
      Then I click on element having id "0-status_tab"
      Then I wait 5 seconds for element having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']" to display
      Then I enter "Do_not_modify" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
      Then I wait 5 seconds for element having xpath "//*[@id='table_task_0_0']//span[contains(text(),'Do_not_modify')]" to display
      Then element having xpath "//*[@id='table_task_0_0']//tr/td[9]/span" should have partial text as "Do_not_modify"

    Scenario: Validate Search functionality Negative
      Then I clear input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
      Then I enter "xxxx" into input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"
      Then I wait 15 seconds for element having xpath "//*[@id='table_task_0_0']//tr/td" to display
      Then element having xpath "//*[@id='table_task_0_0']//tr[1]/td[2]" should not be present
      Then element having xpath "//*[@id='table_task_0_0']//tr/td" should have partial text as "No matching records found"
      Then I clear input field having xpath "//div[@id='table_task_0_0_filter']//input[@type='search']"


