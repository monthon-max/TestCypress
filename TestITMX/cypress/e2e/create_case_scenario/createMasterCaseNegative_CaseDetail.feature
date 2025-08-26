Feature: Create Master Case Negative of Case Description -> Excel Section 1

  As a valid user
  I want to validate negative case of create master case

  Background: Login to ITMX Portal by BBL Bank
    Given login ITMX web portal by BBL account
    And go to menu create master case by excel file
    # And go to menu create master case by excel file NFT

    # Scenario: TC-CFR-NGT-NEW-000_00 As a MBs, Not able to create master case with bank code id empty

    #   Given มีไฟล์ XLSX "your-xlsx-file.xlsx"
    #   When ผู้ใช้แก้ไขข้อมูลในช่อง "A1" เป็น "Cypress Edited Text"
    #   Then ข้อมูลในช่อง "A1" ควรเป็น "Cypress Edited Text"
    #   And เนื้อหา XLSX ควรแปลงเป็น Base64
 
    Scenario: TC-CFR-NGT-NEW-001_01 As a MBs, Not able to create master case with bank code id empty
      Given upload file negative "bankCaseIdEmpty_Tp_V14.2"
      Then should be display popup error message is "bankcase_invalid"

    Scenario: TC-CFR-NGT-NEW-001_02 As a MBs, Not able to create master case with bank case id is more than 35 digit
      Given upload file negative "bankCaseIdMorethan35digit_Tp_V14.2"
      Then should be display popup error message is "bankcase_invalid"

    #  time and date did't invalid new version
    # Scenario: TC-CFR-NGT-NEW-001_04 As a MBs, Not able to create master case with date of police inform fomat YYYY-MM-DD (พ.ศ)     
    #   Given upload file negative "policeDateInvalidYear_Tp_V14.2"
    #   Then should be display popup error message is "police_date_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_05 As a MBs, Not able to create master case with date of police inform fomat DD-MM-YYYY
    #   Given upload file negative "policeDateDD-MM-YYYY_Tp_V14.2"
    #   Then should be display popup error message is "police_date_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_06 As a MBs, Not able to create master case with date of police inform fomat YYYY/MM/DD
    #   Given upload file negative "policeDateYYY_MM_DD"
    #   Then should be display popup error message is "police_date_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_07 As a MBs, Not able to create master case with date of police inform fomat DD/MM/YYYY
    #   Given upload file negative "policeDateDD_MM_YYYY"
    #   Then should be display popup error message is "police_date_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_08 As a MBs, Not able to create master case with time of police inform fomat hh:mm:ss
    #   Given upload file negative "policeTimeInvalidSec"
    #   Then should be display popup error message is "police_time_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_09 As a MBs, Not able to create master case with time of police inform fomat hh:mm:ss.sss
    #   Given upload file negative "policeTimeInvalidmillisec"
    #   Then should be display popup error message is "police_time_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_10 As a MBs, Not able to create master case with time of police inform fomat hh/mm/ss
    #   Given upload file negative "policeTimeInvalidFormat"
    #   Then should be display popup error message is "police_time_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_11 As a MBs, Not able to create master case with police case id more than 35 digit
    #   Given upload file negative "policeCaseIdMoreThan128digit"
    #   Then should be display popup error message is "police_case_id_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_12 As a MBs, Not able to create master case with การตรวจพบรายการ is empty
    #   Given upload file negative "detectByIsEmpty"
    #   Then should be display popup error message is "detect_by_invalid"

    # Scenario: TC-CFR-NGT-NEW-001_13 As a MBs, Not able to create master case with การตรวจพบรายการ is invalid 
    #   Given upload file negative "detectByIsInvalid"
    #   Then should be display popup error message is "detect_by_invalid"