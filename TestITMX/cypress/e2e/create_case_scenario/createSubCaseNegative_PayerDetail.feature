Feature: Create Sub Case Negative of Payer Description -> Excel Section 2


  Background: Login to ITMX Portal by BBL Bank
    Given login ITMX web portal by BBL account
    And search bank case id "25660505CMBT00008"
    # And search bank case id NFT "25660505CMBT00008"
    Then click add sub case first row

    Scenario: TC-CFR-NGT-SUB-002_001 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with NATID 1 Charactor
      Given upload file sub case negative "payerNATID1Charactor_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"

    Scenario: TC-CFR-NGT-SUB-002_002 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with NATID is empty
      Given upload file sub case negative "payerNATIDEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"

    Scenario: TC-CFR-NGT-SUB-002_003 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with NATID more than 13 digit
      Given upload file sub case negative "payerNATIDmoreThan13digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"

    Scenario: TC-CFR-NGT-SUB-002_004 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with ENG/TH/Special Character
      Given upload file sub case negative "payerNATID_EngChar_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"
      
    # Scenario: TC-CFR-NGT-NEW-002_005 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with TH Character
    #   Given upload file negative "payerNATID_THChar"
    #   Then should be display popup error message is "payer_natid_invalid"
    # Scenario: TC-CFR-NGT-NEW-002_006 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with Special Character
    #   Given upload file negative "payerNATID_SpecialChar"
    #   Then should be display popup error message is "payer_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-002_007 As a MBs, corporate (นิติบุคคล) not able to create sub case with NATID more than 18 digit
      Given upload file sub case negative "corporateNATIDmoreThan18digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"

    Scenario: TC-CFR-NGT-SUB-002_008 As a MBs, corporate (นิติบุคคล) not able to create sub case with NATID ENG/TH/Special Character
      Given upload file sub case negative "corporateNATID_EngChar_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"

    # Scenario: TC-CFR-NGT-NEW-002_009 As a MBs, corporate (นิติบุคคล) not able to create sub case with NATID TH Character
    #   Given upload file negative "corporateNATID_THChar"
    #   Then should be display popup error message is "payer_natid_invalid"
    # Scenario: TC-CFR-NGT-NEW-002_010 As a MBs, corporate (นิติบุคคล) not able to create sub case with NATID Special Character
    #   Given upload file negative "corporateNATID_SpecialChar"
    #   Then should be display popup error message is "payer_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-002_011 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case with NATID is empty
      Given upload file sub case negative "foreignerNATIDEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_invalid_m1"

      Scenario: TC-CFR-NGT-SUB-002_014 As a MBs, not able to create sub case with payer type is invalid
      Given upload file sub case negative "payerTypeInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_natid_type_invalid_m1"

    Scenario: TC-CFR-NGT-SUB-002_015 As a MBs, not able to create sub case with payer name is empty
      Given upload file sub case negative "payerNameEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_016 As a MBs, not able to create sub case with payer name is more than 256 digit
      Given upload file sub case negative "payerNameMoreThan256digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_017 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with payer last name is empty
      Given upload file sub case negative "payerLastNameEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_last_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_018 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case with payer last name is more than 256 digit
      Given upload file sub case negative "payerLastNameMoreThan256digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_last_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_020 As a MBs, corporate (นิติบุคคล) not able to create sub case with payer last name is 256 digit
      Given upload file sub case negative "corporatePayerLastName256digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_last_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_021 As a MBs, corporate (นิติบุคคล) not able to create sub case with payer last name is more than 256 digit
      Given upload file sub case negative "corporatePayerLastNameMoreThan256digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_last_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_027 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case with payer last name is empty
      Given upload file sub case negative "foreignerPayerLastNameEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_last_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_028 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case with payer last name is more than 256 digit
      Given upload file sub case negative "foreignerPayerLastNameMoreThan256digit_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_payer_last_name_invalid"

    Scenario: TC-CFR-NGT-SUB-002_031 As a MBs, not able to create sub case with payer accout number is empty
      Given upload file sub case negative "payerAccountNoEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_account_no_invalid"

    Scenario: TC-CFR-NGT-SUB-002_032 As a MBs, not able to create sub case with payer accout number is more than 34 digit
      Given upload file sub case negative "payerAccountNoMoreThan34_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_account_no_invalid"

    Scenario: TC-CFR-NGT-SUB-002_033 As a MBs, not able to create sub case with payer accout number is ENG/TH/Special Character
      Given upload file sub case negative "payerAccountENG_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_account_no_invalid"

    Scenario: TC-CFR-NGT-SUB-002_036 As a MBs, not able to create sub case with payer bank name is empty
      Given upload file sub case negative "payerBankName_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_bankname_invalid"

    Scenario: TC-CFR-NGT-SUB-002_039 As a MBs, not able to create sub case with payer phone number is more than 35 digit
      Given upload file sub case negative "payerBankPhonNoMorethan35_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_phone_no_invalid"

#### ข้อมูลการอายัด #####

    Scenario: TC-CFR-NGT-SUB-002_040 As a MBs, not able to create sub case with freez date by bank (วันและเวลาที่อายัด 72 hrs) invalid format
      Given  upload file sub case negative "sendAccTxnTransBankFreezDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_freez_72hrs"

    Scenario: TC-CFR-NGT-SUB-002_041 As a MBs, not able to create sub case with unfreez date by bank (วันและเวลาที่ปลดอายัด 72 hrs) invalid format
      Given  upload file sub case negative "sendAccTxnTransBankUnFreezDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_unfreez_72hrs"

    Scenario: TC-CFR-NGT-SUB-002_042 As a MBs, not able to create sub case with police date (วันและเวลาที่แจ้งความ) invalid format
      Given  upload file sub case negative "sendAccTxnTransPoliceDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_police_date"

    Scenario: TC-CFR-NGT-SUB-002_043 As a MBs, not able to create sub case with freez 7 day (วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)) invalid format
      Given  upload file sub case negative "sendAccTxnTransFreez7DayDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_freez7day_date"

    Scenario: TC-CFR-NGT-SUB-002_044 As a MBs, not able to create sub case with unfreez 7 day (วันและเวลาที่ Fraud พิจารณาปลดอายัดตามมาตรา 6 (7 วัน)) invalid format
      Given  upload file sub case negative "sendAccTxnTransUnFreez7DayDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_unfreez7day_date"

    Scenario: TC-CFR-NGT-SUB-002_045 As a MBs, not able to create sub case with freez by police (วันและเวลาที่อายัดจากตำรวจ) invalid format
      Given  upload file sub case negative "sendAccTxnTransPoliceFreezDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_police_freez_date"

    Scenario: TC-CFR-NGT-SUB-002_046 As a MBs, not able to create sub case with unfreez by police (วันและเวลาที่ปลดอายัดจากตำรวจ) invalid format
      Given  upload file sub case negative "sendAccTxnTransPoliceUnFreezDateInvalid_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_police_unfreez_date"

    Scenario: TC-CFR-NGT-SUB-002_047 As a MBs, not able to create sub case and bank freez by account with fill-in amount of freez
      Given  upload file sub case negative "sendAccTxnTransfreezAccWithAmount_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_freez_amount"

    Scenario: TC-CFR-NGT-SUB-002_048 As a MBs, not able to create sub case and bank freez by amount with amount is empty
      Given  upload file sub case negative "sendAccTxnTransfreezAmountWithEmptyValue_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_freez_amount"

    Scenario: TC-CFR-NGT-SUB-002_049 As a MBs, not able to create sub case and police freez by account with fill-in amount of freez
      Given  upload file sub case negative "sendAccTxnTransPolicefreezAccWithAmount_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_police_freez_amount"

    Scenario: TC-CFR-NGT-SUB-002_050 As a MBs, not able to create sub case and police freez by amount with amount is empty
      Given  upload file sub case negative "sendAccTxnTransPolicefreezAmountWithEmptyValue_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "sub_sendAccTxn_police_freez_amount"