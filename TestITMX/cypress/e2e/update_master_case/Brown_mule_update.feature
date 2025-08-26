Feature: Brown Mule Upload

  As a valid user
  I want to validate case of create master case
    Scenario: Test
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      # Given should copy xlsx file from source to destination
      Given should modify data in an Excel file
      # When upload file positive brown "/TemplateInsertBrownMule"
      # Then should be display master upload file brown mule preview page of "TemplateInsertBrownMule" with valid description
      # Then should be display data success in file "TemplateInsertBrownMule" and confirm data
      Given Query All Input data BankcaseID