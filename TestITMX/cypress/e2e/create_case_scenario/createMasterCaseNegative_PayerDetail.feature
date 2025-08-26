Feature: Create Master Case Negative of Payer Description -> Excel Section 2

  As a valid user
  I want to validate negative case of create master case

  Background: Login to ITMX Portal by BBL Bank
    Given login ITMX web portal by BBL account
    And go to menu create master case by excel file
    # And go to menu create master case by excel file NFT

    Scenario: TC-CFR-NGT-NEW-002_001 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with NATID 1 Charactor
      Given upload file negative "payerNATID1Charactor_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_002 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with NATID is empty
      Given upload file negative "payerNATIDEmpty_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_003 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with NATID more than 13 digit
      Given upload file negative "payerNATIDmoreThan13digit_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_004 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with ENG Character
      Given upload file negative "payerNATID_EngChar_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_005 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with TH Character
      Given upload file negative "payerNATID_THChar_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_006 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with Special Character
      Given upload file negative "payerNATID_SpecialChar_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_007 As a MBs, corporate (นิติบุคคล) not able to create master case with NATID more than 18 digit
      Given upload file negative "corporateNATIDmoreThan18digit_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_008 As a MBs, corporate (นิติบุคคล) not able to create master case with NATID ENG Character
      Given upload file negative "corporateNATID_EngChar_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_009 As a MBs, corporate (นิติบุคคล) not able to create master case with NATID TH Character
      Given upload file negative "corporateNATID_THChar๘Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_010 As a MBs, corporate (นิติบุคคล) not able to create master case with NATID Special Character
      Given upload file negative "corporateNATID_SpecialChar_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
    Scenario: TC-CFR-NGT-NEW-002_011 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case with NATID is empty
      Given upload file negative "foreignerNATIDEmpty_Tp_V14.2"
      Then should be display popup error message is "payer_natid_invalid_m1"
      Scenario: TC-CFR-NGT-NEW-002_014 As a MBs, not able to create master case with payer type is invalid
      Given upload file negative "payerTypeInvalid_Tp_V14.2"
      Then should be display popup error message is "payer_type_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_015 As a MBs, not able to create master case with payer name is empty
      Given upload file negative "payerNameEmpty_Tp_V14.2"
      Then should be display popup error message is "payer_name_length_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_016 As a MBs, not able to create master case with payer name is more than 256 digit
      Given upload file negative "payerNameMoreThan256digit_Tp_V14.2"
      Then should be display popup error message is "payer_name_length_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_017 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with payer last name is empty
      Given upload file negative "payerLastNameEmpty_Tp_V14.2"
      Then should be display popup error message is "payer_last_name_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_018 As a MBs, natural person (บุคคลธรรมดา) not able to create master case with payer last name is more than 256 digit
      Given upload file negative "payerLastNameMoreThan256digit_Tp_V14.2"
      Then should be display popup error message is "payer_last_name_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_020 As a MBs, corporate (นิติบุคคล) not able to create master case with payer last name is 256 digit
      Given upload file negative "corporatePayerLastName256digit_Tp_V14.2"
      Then should be display popup error message is "payer_last_name_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_021 As a MBs, corporate (นิติบุคคล) not able to create master case with payer last name is more than 256 digit
      Given upload file negative "corporatePayerLastNameMoreThan256digit_Tp_V14.2"
      Then should be display popup error message is "payer_last_name_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_027 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case with payer last name is empty
      Given upload file negative "foreignerPayerLastNameEmpty_Tp_V14.2"
      Then should be display popup error message is "payer_last_name_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_028 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case with payer last name is more than 256 digit
      Given upload file negative "foreignerPayerLastNameMoreThan256digit_Tp_V14.2"
      Then should be display popup error message is "payer_last_name_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_030 As a MBs, not able to create master case with case description more then 1024 digit
      Given upload file negative "caseDetailMoreThen1024_Tp_V14.2"
      Then should be display popup error message is "case_description_invalid"

    Scenario: TC-CFR-NGT-NEW-002_031 As a MBs, not able to create master case with payer accout number is empty
      Given upload file negative "payerAccountNoEmpty_Tp_V14.2"
      Then should be display popup error message is "account_no_invalid"

    Scenario: TC-CFR-NGT-NEW-002_032 As a MBs, not able to create master case with payer accout number is more than 34 digit
      Given upload file negative "payerAccountNoMoreThan34_Tp_V14.2"
      Then should be display popup error message is "account_no_invalid"

    Scenario: TC-CFR-NGT-NEW-002_033 As a MBs, not able to create master case with payer accout number is ENG charactor
      Given upload file negative "payerAccountENG_Tp_V14.2"
      Then should be display popup error message is "account_no_invalid"

    Scenario: TC-CFR-NGT-NEW-002_034 As a MBs, not able to create master case with payer accout number is Thai charactor
      Given upload file negative "payerAccountTH_Tp_V14.2"
      Then should be display popup error message is "account_no_invalid"

    Scenario: TC-CFR-NGT-NEW-002_035 As a MBs, not able to create master case with payer accout number is special charactor
      Given upload file negative "payerAccountSpecialChar_Tp_V14.2"
      Then should be display popup error message is "account_no_invalid"

    Scenario: TC-CFR-NGT-NEW-002_036 As a MBs, not able to create master case with payer bank name is empty
      Given upload file negative "payerBankName_Tp_V14.2"
      Then should be display popup error message is "bankname_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-002_039 As a MBs, not able to create master case with payer phone number is more than 35 digit
      Given upload file negative "payerBankPhonNoMorethan35_Tp_V14.2"
      Then should be display popup error message is "phone_no_invalid"

    Scenario: TC-CFR-NGT-NEW-002_040 As a MBs, not able to create master case with payer name contact is more than 256 digit
      Given upload file negative "payerNameContactMorethan256_Tp_V14.2"
      Then should be display popup error message is "contact_name_invalid"

    Scenario: TC-CFR-NGT-NEW-002_041 As a MBs, not able to create master case with payer phone contact is more than 35 digit
      Given upload file negative "payerPhoneContactMorethan35_Tp_V14.2"
      Then should be display popup error message is "contact_phone_invalid"

    # Scenario: TC-CFR-NGT-NEW-002_042 As a MBs, not able to create master case with payer email contact is more than 256 digit
    #   Given upload file negative "emailContactMorethan256"
    #   Then should be display popup error message is "contact_email_invalid"

    Scenario: TC-CFR-NGT-NEW-002_043 As a MBs, not able to create master case with payer email contact invalid format
      Given upload file negative "emailContactInvalid_Tp_V14.2"
      Then should be display popup error message is "contact_email_invalid"

    Scenario: TC-CFR-NGT-NEW-002_044 As a MBs, not able to create master case with payer contact relation not matching with drop down
      Given upload file negative "contactRelationInvalid_Tp_V14.2"
      Then should be display popup error message is "contact_relation_invalid"