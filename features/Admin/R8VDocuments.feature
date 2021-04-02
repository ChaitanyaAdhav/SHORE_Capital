@radminviewdoc
Feature: Test View Page for Admin Login (Documents)

  ##############
  Scenario: Navigate to View page
    Then I click on element having id "all-tab"
    Then I wait 15 seconds for element having xpath "//div[@id='table_all_filter']//input[@type='search']" to display
    #Then I enter "DocTest" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
    Then I enter "Do_not_modify" into input field having xpath "//div[@id='table_all_filter']//input[@type='search']"
    #Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='DocTest']" to display
    Then I wait 5 seconds for element having xpath "//table[@id='table_all']//td[text()='Do_not_modify']" to display
    Then I click on element having xpath "//*[@id='table_all']/tbody/tr[1]/td[1]/a"

  Scenario: Verify that user have landed on Loan Details page
    Then I switch to frame having index "0"
    Then I wait 15 seconds for element having xpath "//div[@id='loan_detail']/div/span" to display
    Then element having xpath "//div[@id='loan_detail']/div/span" should have partial text as "Loan details"
##########################
  Scenario: Verify that user have landed on Documents page
    Then I wait 15 seconds for element having xpath "//div[@id='loan_detail']/div/span" to display
    Then I click on element having id "documents-list"
    Then element having xpath "//div[@id='documents-tracking']/div/span[1]" should have partial text as "Upload Documents"

  Scenario Outline: Verify all uploaded Documents are displayed
    Then element having xpath "//span[text()='<file_name>']" should be present
    Examples:
    |file_name|
    |AudioFile|
    |DOCX_385k|
    |GIF_l1m|
    |JPG_5m|
    |PDF_3m|
   # |PNG_22m|
    |PPT_893k|
    |XLS_1m|
    |XLSX_14k|

  Scenario: Verify user navigate to Create new folder model
    Then I wait 5 seconds for element having xpath "//a[@class='create-folder']" to display
    Then I scroll to element having xpath "//a[@class='create-folder']"
    Then I click on element having xpath "//a[@class='create-folder']"
    Then I wait 15 seconds for element having xpath "//form[@id='id_create_folder_form']/div/div[1]/div" to display
    Then element having xpath "//form[@id='id_create_folder_form']/div/div[1]/div" should have partial text as "Create New Folder"

  Scenario: Close create folder model
    Then I enter "createfile::doc::folder1" into input field having xpath "//input[@name='folder_name']"
    Then I click on element having xpath "//form[@id='id_create_folder_form']//button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//*[text()='<createfile::doc::folder1>']" should not be present

  Scenario: Create a Folder1
    Then I click on element having xpath "//a[@class='create-folder']"
    Then I wait 15 seconds for element having xpath "//form[@id='id_create_folder_form']/div/div[1]/div" to display
    Then I enter "createfile::doc::folder1" into input field having xpath "//input[@name='folder_name']"
    Then I click on element having xpath "//form[@id='id_create_folder_form']//button[2]"
    Then I sleep for 1 seconds
    Then element having xpath "//*[text()='Test1']" should be present

  Scenario: Create a Folder2
    Then I click on element having xpath "//a[@class='create-folder']"
    Then I wait 15 seconds for element having xpath "//form[@id='id_create_folder_form']/div/div[1]/div" to display
    Then I enter "createfile::doc::folder2" into input field having xpath "//input[@name='folder_name']"
    Then I click on element having xpath "//form[@id='id_create_folder_form']//button[2]"
    Then I sleep for 1 seconds
    Then element having xpath "//*[text()='Test2']" should be present

    ##########################################################################
  Scenario: Verify user navigate to Upload Document model
    Then I scroll to element having xpath "//a[@title='Upload Documents']"
    Then I click on element having xpath "//a[@title='Upload Documents']"
    Then I wait 15 seconds for element having xpath "//h5[@id='exampleModalLabel']" to display
    Then element having xpath "//h5[@id='exampleModalLabel']" should have partial text as "Upload File"

  Scenario: Close Upload Document model
    Then I click on element having xpath "//form[@id='filepond-form']//button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='filepond-form']//button[1]" should be disabled

  Scenario: Upload Document
    Then I click on element having xpath "//a[@title='Upload Documents']"
    Then I wait 15 seconds for element having xpath "//h5[@id='exampleModalLabel']" to display
    Then I enter "createfile::doc::viewdoc" into input field having xpath "//input[@class='filepond--browser']"
    Then I sleep for 5 seconds
    Then I click on element having xpath "//form[@id='filepond-form']//button[@type='submit']"

  Scenario Outline: Verify all uploaded Documents are displayed
    Then element having xpath "//span[text()='<file_name>']" should be present
    Examples:
    |file_name|
    |view|

  Scenario: Verify Uploader name should displayed below file name
    Then element having xpath "//span[text()='view']/..//small[1]" should have partial text as "login::admin::name"
  ###############################################################
 ########## Scenario: Verify User can Download all documents at once
    ##################################################
  Scenario: Verify user navigate to Move multiple model
    Then I scroll to element having xpath "//a[@title='Multiple File Move']"
    Then I click on element having xpath "//a[@title='Multiple File Move']"
    Then I wait 15 seconds for element having xpath "//label[text()='From']" to display
    Then element having xpath "//form[@id='list_of_multiple_files']/div/div/span" should have partial text as "Multiple Files Move"

  Scenario: Open Form dropdown
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_from']/option[1]" to display

  Scenario Outline: Verify Folder options present in From dropdown
    Then element having xpath "//select[@id='folder_drop_down_from']/option[<option>]" should have partial text as "<folder>"
    Examples:
    |option|  |folder|
    |1|  |Root|
    |2|  |Test1|
    |3|  |Test2|

  Scenario: Open To dropdown
    Then I click on element having xpath "//select[@id='folder_drop_down_to']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_to']/option[1]" to display

  Scenario Outline: Verify Folder options present in To dropdown
    Then element having xpath "//select[@id='folder_drop_down_to']/option[<option>]" should have partial text as "<folder>"
    Examples:
    |option|  |folder|
    |1|  |Test1|
    |2|  |Test2|

  Scenario: Verify that Folder selected in Form dropdown should not present in To dropdown
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_from']/option[1]" to display
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/option[1]"
    Then I click on element having xpath "//select[@id='folder_drop_down_to']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_to']/option[1]" to display
    Then element having xpath "//select[@id='folder_drop_down_to']/option[text()='Root']" should not be present

  Scenario:  Move files (view & PDF_3m) from Root to Test1
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_from']/option[1]" to display
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/option[1]"
    Then I click on element having xpath "//span[text()='view']/../../../input"
    Then I click on element having xpath "//span[text()='PDF_3m']/../../../input"
    Then I click on element having xpath "//select[@id='folder_drop_down_to']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_to']/option[1]" to display
    Then I click on element having xpath "//select[@id='folder_drop_down_to']/option[text()='Test1']"
    Then I click on element having xpath "//form[@id='list_of_multiple_files']/div/div/button[2]"
    Then I sleep for 1 seconds

  Scenario: Verify moved files should not present in Root folder
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_from']/option[1]" to display
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/option[text()='Root']"
    Then element having xpath "//span[text()='view']/../../../input" should not be present
    Then element having xpath "//span[text()='PDF_3m']/../../../input" should not be present

  Scenario: Verify moved file are present in Test1 Folder
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/../button"
    Then I wait 5 seconds for element having xpath "//select[@id='folder_drop_down_from']/option[2]" to display
    Then I click on element having xpath "//select[@id='folder_drop_down_from']/option[text()='Test1']"
    Then I wait 5 seconds for element having xpath "//form[@id='list_of_multiple_files']/div/div/button[2]" to display
    Then element having xpath "//span[text()='view']/../../../input" should be present
    Then element having xpath "//span[text()='PDF_3m']/../../../input" should be present

    Scenario: Close Move multiple model
    Then I click on element having xpath "//form[@id='list_of_multiple_files']/div/div/button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='list_of_multiple_files']/div/div/button[1]" should be disabled

  ############################################
  Scenario: Arrange Documents by Name (Ascending)
    Then I scroll to element having xpath "//a[@title='Sort By Name']"
    Then I click on element having xpath "//a[@title='Sort By Name']"
    Then I sleep for 1 seconds

  Scenario Outline: Verify Documents are arranged by Name (Ascending)
    Then element having xpath "//ul[@id='id_files']/li[contains(@class, 'sub_doc')][<number>]//div/span" should have partial text as "<file>"
    Examples:
    |number|  |file|
    |1|  |AudioFile|
    |2|  |DOCX_385k|
    |3|  |GIF_l1m|
    |4|  |JPG_5m|
    |5|  |PPT_893k|
    |6|  |XLSX_14k|
    |7|  |XLS_1m|

  Scenario: Arrange Documents by Name (Decending)
    Then I scroll to element having xpath "//a[@title='Sort By Name']"
    Then I click on element having xpath "//a[@title='Sort By Name']"
    Then I sleep for 1 seconds

  Scenario Outline: Verify Documents are arranged by Name (Decending)
    Then element having xpath "//ul[@id='id_files']/li[contains(@class, 'sub_doc')][<number>]//div/span" should have partial text as "<file>"
    Examples:
    |number|  |file|
    |7|  |AudioFile|
    |6|  |DOCX_385k|
    |5|  |GIF_l1m|
    |4|  |JPG_5m|
    |3|  |PPT_893k|
    |2|  |XLSX_14k|
    |1|  |XLS_1m|

############################################
  #####Scenario Arrange Documents by Date (Ascending)
  ####Scenario Outline Verify Documents are arranged by Date (Ascending)
 #########################

  Scenario: Verify options available in 3 dots of any file
    Then I click on element having xpath "//span[text()='AudioFile']/../../..//button[@id='dropdownMenuButton']"
    Then element having xpath "//span[text()='AudioFile']/../../..//form/button" should have partial text as "Download"
    Then element having xpath "//span[text()='AudioFile']/../../..//div/a[1]" should have partial text as "Rename"
    Then element having xpath "//span[text()='AudioFile']/../../..//div/a[2]" should have partial text as "Move"
    Then element having xpath "//span[text()='AudioFile']/../../..//div/a[3]" should have partial text as "Delete"

    ##########
  #########Scenario: Downlod
  ####
  Scenario: Verify user can navigate to Rename model
    Then I click on element having xpath "//span[text()='AudioFile']/../../..//div/a[1]"
    Then I wait 5 seconds for element having xpath "//form[@id='file_name_edit_form']/div/div[1]/div" to display
    Then element having xpath "//form[@id='file_name_edit_form']/div/div[1]/div" should have partial text as "Edit Name"

  Scenario: Rename the file
    Then I clear input field having xpath "//input[@name='edit_file_name']"
    Then I enter "AudioFile1" into input field having xpath "//input[@name='edit_file_name']"
    Then I click on element having xpath "//form[@id='file_name_edit_form']/div/div/button[2]"
    Then I wait 5 seconds for element having xpath "//span[text()='AudioFile1']" to display
    Then element having xpath "//span[text()='AudioFile1']" should be present
    Then element having xpath "//span[text()='AudioFile']" should not be present

  Scenario: Validate functionality of Close button of Rename model
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//div/a[1]"
    Then I wait 5 seconds for element having xpath "//form[@id='file_name_edit_form']/div/div/button[1]" to display
    Then I click on element having xpath "//form[@id='file_name_edit_form']/div/div/button[1]"
    Then element having xpath "//form[@id='file_name_edit_form']/div/div/button[1]" should be disabled

#  Scenario: Change Edited File name as previous
#    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//button[@id='dropdownMenuButton']"
#    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//div/a[1]"
#    Then I wait 5 seconds for element having xpath "//form[@id='file_name_edit_form']/div/div/button[1]" to display
#    Then I clear input field having xpath "//input[@name='edit_file_name']"
#    Then I enter "AudioFile" into input field having xpath "//input[@name='edit_file_name']"
#    Then I click on element having xpath "//form[@id='file_name_edit_form']/div/div/button[2]"
#    Then I wait 5 seconds for element having xpath "//span[text()='AudioFile']" to display
#    Then element having xpath "//span[text()='AudioFile']" should be present
#    Then element having xpath "//span[text()='AudioFile1']" should not be present

    ###########################################
  Scenario: Verify user can navigate to Move model
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//div/a[2]"
    Then I wait 15 seconds for element having xpath "//label[text()='From']" to display
    Then element having xpath "//form[@id='list_of_multiple_files']/div/div/span" should have partial text as "Multiple Files Move"

  #####Scenario: Verify checkbox is checked for selected file - Unable to verify (Jquery)

  ## Same functionality as of Move Multiple so didi not written code again as it is verified in Move Multiple section

  Scenario: Close Move multiple model
    Then I click on element having xpath "//form[@id='list_of_multiple_files']/div/div/button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='list_of_multiple_files']/div/div/button[1]" should be disabled

    #####################

  Scenario: Verify user can navigate to Delete model
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//div/a[3]"
    Then I wait 15 seconds for element having xpath "//form[@id='id_delete_specific_file_form']//h5" to display
    Then element having xpath "//form[@id='id_delete_specific_file_form']//h5" should have partial text as "Do you want delete this File?"

  Scenario: Close Delete file Model
    Then I click on element having xpath "//form[@id='id_delete_specific_file_form']/div/div/button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='id_delete_specific_file_form']/div/div/button[1]" should be disabled

  Scenario: Delete File (AudioFile)
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='AudioFile1']/../../..//div/a[3]"
    Then I wait 15 seconds for element having xpath "//form[@id='id_delete_specific_file_form']//h5" to display
    Then I click on element having xpath "//form[@id='id_delete_specific_file_form']/div/div/button[2]"
    Then I sleep for 3 seconds
    #Then element having xpath "//span[text()='AudioFile1']" should not be present

#####################
  Scenario: Verify options available in 3 dots of any Folder having at least 1 document
    Then I sleep for 1 seconds
    Then I wait 15 seconds for element having xpath "//span[text()='Test1']/../..//button[@id='dropdownMenuButton']" to display
    Then I click on element having xpath "//span[text()='Test1']/../..//button[@id='dropdownMenuButton']"
    Then element having xpath "//span[text()='Test1']/../../../../div/div/div/div/a[1]" should have partial text as "Upload"
    Then element having xpath "//span[text()='Test1']/../../../../div/div/div/div/a[2]" should have partial text as "Download"
    Then element having xpath "//span[text()='Test1']/../../../../div/div/div/div/a[3]" should have partial text as "Rename"
    Then element having xpath "//span[text()='Test1']/../../../../div/div/div/div/a[4]" should have partial text as "Delete"
    Then I click on element having xpath "//span[text()='Test1']/../..//button[@id='dropdownMenuButton']"

  Scenario: Verify Download option is not available in 3 dots of Folder does not have any doc
    Then I click on element having xpath "//span[text()='Test2']/../..//button[@id='dropdownMenuButton']"
    Then element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[1]" should have partial text as "Upload"
    Then element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[2]" should have attribute style as "display: none;"
    Then element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[3]" should have partial text as "Rename"
    Then element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[4]" should have partial text as "Delete"

  Scenario: Open Upload model for Test2 folder
    Then I click on element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[1]"
    Then I wait 5 seconds for element having xpath "//h5[@id='exampleModalLabel']" to display
    Then element having xpath "//h5[@id='exampleModalLabel']" should have partial text as "Upload File To:"
    Then element having xpath "//h5[@id='exampleModalLabel']/font" should have partial text as "Test2"

  Scenario: Close Upload Document model for specific folder
    Then I click on element having xpath "//form[@id='filepond-form']//button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='filepond-form']//button[1]" should be disabled

  Scenario: Upload document in Test2 Folder
    Then I click on element having xpath "//span[text()='Test2']/../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[1]"
    Then I wait 5 seconds for element having xpath "//h5[@id='exampleModalLabel']" to display
    Then I enter "createfile::doc::audio" into input field having xpath "//input[@class='filepond--browser']"
    Then I sleep for 10 seconds
    Then I click on element having xpath "//form[@id='filepond-form']//button[@type='submit']"

  Scenario: Verify Document is uploaded in selected folder
    #Then I click on element having xpath "//span[text()='Test2']/.."
    Then element having xpath "//span[text()='Test2']/../../..//span[text()='AudioFile']" should be present

  ###############################################################
 ########## Scenario: Verify User can Download all documents at once
    ##################################################

  Scenario: Verify user can navigate to Rename model
    Then I click on element having xpath "//span[text()='Test2']/../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='Test2']/../../../../div/div/div/div/a[3]"
    Then I wait 5 seconds for element having xpath "//form[@id='file_name_edit_form']/div/div[1]/div" to display
    Then element having xpath "//form[@id='file_name_edit_form']/div/div[1]/div" should have partial text as "Edit Name"

  Scenario: Rename the file
    Then I clear input field having xpath "//input[@name='edit_file_name']"
    Then I enter "Test3" into input field having xpath "//input[@name='edit_file_name']"
    Then I click on element having xpath "//form[@id='file_name_edit_form']/div/div/button[2]"
    Then I wait 5 seconds for element having xpath "//span[text()='Test3']" to display
    Then element having xpath "//span[text()='Test3']" should be present
    Then element having xpath "//span[text()='Test2']" should not be present

  Scenario: Validate functionality of Close button of Rename model
    Then I click on element having xpath "//span[text()='Test3']/../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='Test3']/../..//div/a[3]"
    Then I wait 5 seconds for element having xpath "//form[@id='file_name_edit_form']/div/div[1]/div" to display
    Then I click on element having xpath "//form[@id='file_name_edit_form']/div/div/button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='file_name_edit_form']/div/div/button[1]" should be disabled

  ####################################################

  Scenario: Verify user can navigate to Delete folder model
    Then I click on element having xpath "//span[text()='Test3']/../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='Test3']/../..//div/a[4]"
    Then I wait 15 seconds for element having xpath "//form[@id='id_delete_specific_file_form']//h5" to display
    Then element having xpath "//form[@id='id_delete_specific_file_form']//h5" should have partial text as "Do you want delete this Folder?"

  Scenario: Close Delete folder Model
    Then I click on element having xpath "//form[@id='id_delete_specific_file_form']/div/div/button[1]"
    Then I sleep for 1 seconds
    Then element having xpath "//form[@id='id_delete_specific_file_form']/div/div/button[1]" should be disabled

  Scenario: Delete Folder (Test3)
    Then I click on element having xpath "//span[text()='Test3']/../..//button[@id='dropdownMenuButton']"
    Then I click on element having xpath "//span[text()='Test3']/../..//div/a[4]"
    Then I wait 15 seconds for element having xpath "//form[@id='id_delete_specific_file_form']//h5" to display
    Then I click on element having xpath "//form[@id='id_delete_specific_file_form']/div/div/button[2]"
    Then I sleep for 1 seconds
    Then element having xpath "//span[text()='Test3']" should not be present

  Scenario: Verify all files in folder should be deleted along with folder
    Then element having xpath "//span[text()='Test3']/../../..//span[text()='AudioFile']" should not be present
    Then element having xpath "//span[text()='AudioFile']" should not be present







