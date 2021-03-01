@reverse
Feature: Navigate to Reverse mortgage

  Scenario: Navigate to Reverse Mortgage
    Then I click on element having id "dropdownMenuLink"
    Then I click on element having xpath "//*[text()='Reverse Mortgage']"
    Then element having class "section-title" should have partial text as "Reverse Mortgage Dashboard"