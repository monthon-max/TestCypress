Feature: Create Master Case Negative of Payer Description -> Excel Section 2

  As a valid user
  I want to validate negative case of create master case

  Background: Login to ITMX Portal by BBL Bank
    Given login ITMX web portal by BBL account
    And go to menu create master case by excel file
    # And go to menu create master case by excel file NFT

    Scenario: TC-CFR-NGT-NEW-003_001 As a MBs, not able to create master case (Transaction) payer name is empty
      Given upload file negative "txnPayerNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payer_name_einvalid"
      Then should be display popup error message is "txn_payer_account_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-003_002 As a MBs, not able to create master case (Transaction) payer name more than 256
      Given upload file negative "txnPayerNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "sub_txn_payer_name_invalid_02"
      Then should be display popup error message is "txn_payer_account_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-003_003 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) payer last name is empty
      Given upload file negative "txnPayerLastNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payer_lastname_invalid"
      Then should be display popup error message is "txn_payer_account_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-003_004 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) payer last name more than 256
      Given upload file negative "txnPayerLastNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "txn_payer_lastname_invalid"
      Then should be display popup error message is "txn_payer_account_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-003_006 As a MBs,  foreigner (ชาวต่างชาติ) not able to create master case (Transaction) payer last name is empty
      Given upload file negative "txnForeignerPayerLastNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payer_lastname_invalid"
      Then should be display popup error message is "txn_payer_account_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-003_007 As a MBs,  foreigner (ชาวต่างชาติ) not able to create master case (Transaction) payer last name more than 256
      Given upload file negative "txnForeignerPayerLastNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "txn_payer_lastname_invalid"
      Then should be display popup error message is "txn_payer_account_invalid_m1"

    Scenario: TC-CFR-NGT-NEW-003_008 As a MBs, not able to create master case (Transaction) account number is empty
      Given upload file negative "txnPayerAccNoEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_009 As a MBs, not able to create master case (Transaction) account number is more than 34
      Given upload file negative "txnPayerAccMoreThan34_Tp_V14.2"
      Then should be display popup error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_010 As a MBs, not able to create master case (Transaction) account number ENG charactor
      Given upload file negative "txnPayerAccNoENG_Tp_V14.2"
      Then should be display popup error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_011 As a MBs, not able to create master case (Transaction) account number Thai charactor
      Given upload file negative "txnPayerAccNoTH_Tp_V14.2"
      Then should be display popup error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_012 As a MBs, not able to create master case (Transaction) account number Special charactor
      Given upload file negative "txnPayerAccNoSpecialChar_Tp_V14.2"
      Then should be display popup error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_013 As a MBs, not able to create master case (Transaction) payer bank name is empty
      Given upload file negative "txnPayerBankNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_015 As a MBs, not able to create master case (Transaction) ip address more than 50 charactor
      Given upload file negative "txnIPAddressMoreThan50_Tp_V14.2"
      Then should be display popup error message is "txn_ip_address_invalid"

    Scenario: TC-CFR-NGT-NEW-003_016 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) nat id 1 charator
      Given upload file negative "txnNATID1Char_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_017 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) nat id is empty
      Given upload file negative "txnNATIDEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_018 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) nat id more than 13 digit
      Given upload file negative "txnNATIDMoreThan13_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_019 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) nat id ENG Char
      Given upload file negative "txnNATIDEngChar_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_020 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) nat id TH Char
      Given upload file negative "txnNATIDThaiChar_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_021 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) nat id spacial Charactor
      Given upload file negative "txnNATIDSpacialChar_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_022 As a MBs, corporate (นิติบุคคล) not able to create master case (Transaction) nat id 1 charator
      Given upload file negative "txnCorporateNATID1Char_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_023 As a MBs, corporate (นิติบุคคล) not able to create master case (Transaction) nat id is empty
      Given upload file negative "txnCorporateNATIDEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_024 As a MBs, corporate (นิติบุคคล) not able to create master case (Transaction) nat id more than 18 digit
      Given upload file negative "txnCorporateNATIDMoreThan18_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_025 As a MBs, corporate (นิติบุคคล) not able to create master case (Transaction) nat id with TH/ENT/Spqcial Char
      Given upload file negative "txnCorporateNATIDChar_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_028 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case (Transaction) nat id is empty
      Given upload file negative "txnForeignerNATIDEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_029 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case (Transaction) nat id more than 35 digit
      Given upload file negative "txnForeignerNATIDMoreThan35_Tp_V14.2"
      Then should be display popup error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_031 As a MBs, not able to create master case (Transaction) with payee phone number more than 35 digit
      Given upload file negative "txnPayeePhoneMoreThan35_Tp_V14.2"
      Then should be display popup error message is "txn_payee_phone_no"

    Scenario: TC-CFR-NGT-NEW-003_032 As a MBs, not able to create master case (Transaction) with payee name is empty
      Given upload file negative "txnPayeeNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payee_name"

    Scenario: TC-CFR-NGT-NEW-003_033 As a MBs, not able to create master case (Transaction) with payee name more than 256 digit
      Given upload file negative "txnPayeeNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "txn_payee_name"

    Scenario: TC-CFR-NGT-NEW-003_034 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) payee last name is empty
      Given upload file negative "txnPayeeLastNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_035 As a MBs, natural person (บุคคลธรรมดา) not able to create master case (Transaction) payee last name more than 256
      Given upload file negative "txnPayeeLastNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_037 As a MBs, corporate (นิติบุคคล) not able to create master case with payee last name is 256 digit
      Given upload file negative "txnCorporatePayeeLastName256_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_038 As a MBs, corporate (นิติบุคคล) not able to create master case (Transaction) payee last name more than 256
      Given upload file negative "txnCorporatePayeeLastNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_039 As a MBs, corporate (นิติบุคคล) not able to create master case with payee last name is TH/ENG/Num/Special charactor
      Given upload file negative "txnCorporatePayeeLastNameChar_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_043 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case (Transaction) payee last name is empty
      Given upload file negative "txnForeignerPayeeLastNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_044 As a MBs, foreigner (ชาวต่างชาติ) not able to create master case (Transaction) payee last name more than 256
      Given upload file negative "txnForeignerPayeeLastNameMoreThan256_Tp_V14.2"
      Then should be display popup error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_046 As a MBs, not able to create master case (Transaction) promptpay type invalid
      Given upload file negative "txnPromptPayTypeInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_type_invalid"

    Scenario: TC-CFR-NGT-NEW-003_047 As a MBs, not able to create master case (Transaction) promptpay phone number +66 prefix followed by 8 digits numeric
      Given upload file negative "txnPromptPayPhoneNumber8Digits_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_048 As a MBs, not able to create master case (Transaction) promptpay phone number +66 prefix followed by 10 digits numeric
      Given upload file negative "txnPromptPayPhoneNumber10Digits_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_049 As a MBs, not able to create master case (Transaction) promptpay phone number is empty
      Given upload file negative "txnPromptPayPhoneNumberEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_050 As a MBs, not able to create master case (Transaction) promptpay phone number is EN/TH/Special charactor
      Given upload file negative "txnPromptPayPhoneNumberChar_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_053 As a MBs, not able to create master case (Transaction) promptpay nat id more than 13 digit
      Given upload file negative "txnPromptPayNatidMorethan13_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_054 As a MBs, not able to create master case (Transaction) promptpay nat id less than 13 digit
      Given upload file negative "txnPromptPayNatidLessthan13_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-NEW-003_055 As a MBs, not able to create master case (Transaction) promptpay nat id is empty
      Given upload file negative "txnPromptPayNatidEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_056 As a MBs, not able to create master case (Transaction) promptpay nat id is EN/TH/Special charactor
      Given upload file negative "txnPromptPayNatidChar_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-NEW-003_059 As a MBs, not able to create master case (Transaction) promptpay biller id more than 15 digit
      Given upload file negative "txnPromptPayBillerMorethan15_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_060 As a MBs, not able to create master case (Transaction) promptpay biller id less than 15 digit
      Given upload file negative "txnPromptPayBillerLessthan15_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-NEW-003_061 As a MBs, not able to create master case (Transaction) promptpay biller id is empty
      Given upload file negative "txnPromptPayBillerEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_062 As a MBs, not able to create master case (Transaction) promptpay biller id is EN/TH/Special charactor
      Given upload file negative "txnPromptPayBillerChar_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-NEW-003_064 As a MBs, not able to create master case (Transaction) promptpay e-wallet id more than 15 digit
      Given upload file negative "txnPromptPayEwalletMorethan15_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_065 As a MBs, not able to create master case (Transaction) promptpay e-wallet id less than 15 digit
      Given upload file negative "txnPromptPayEwalletLessthan15_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-NEW-003_066 As a MBs, not able to create master case (Transaction) promptpay e-wallet id is empty
      Given upload file negative "txnPromptPayEwalletEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_067 As a MBs, not able to create master case (Transaction) promptpay e-wallet id is EN/TH/Special charactor
      Given upload file negative "txnPromptPayEwalletChar_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

     Scenario: TC-CFR-NGT-NEW-003_070 As a MBs, not able to create master case (Transaction) promptpay ไม่มี is not empty
      Given upload file negative "txnPromptPayNonTypeNotEmptyValue_Tp_V14.2"
      Then should be display popup error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-NEW-003_074 As a MBs, not able to create master case (Transaction) payee account number is empty
      Given upload file negative "txnPayeeAccNoEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payee_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_075 As a MBs, not able to create master case (Transaction) payee account number is more than 34
      Given upload file negative "txnPayeeAccMoreThan34_Tp_V14.2"
      Then should be display popup error message is "txn_payee_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_076 As a MBs, not able to create master case (Transaction) payee account number EN/TH/Special charactor
      Given upload file negative "txnPayeeAccNoChar_Tp_V14.2"
      Then should be display popup error message is "txn_payee_accountNo_invalid"

    Scenario: TC-CFR-NGT-NEW-003_079 As a MBs, not able to create master case (Transaction) payee bank name is empty
      Given upload file negative "txnPayeeBankNameEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_payee_bankname_invalid"

    Scenario: TC-CFR-NGT-NEW-003_082 As a MBs, not able to create master case with transaction date (วันที่เสียหาย) fomat YYYY-MM-DD (ค.ศ)
      Given upload file negative "txnTransDateInvalidYear_Tp_V14.2"
      Then should be display popup error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-NEW-003_083 As a MBs, not able to create master case with transaction date (วันที่เสียหาย) fomat DD-MM-YYYY
      Given upload file negative "txnTransDateDD-MM-YYYY_Tp_V14.2"
      Then should be display popup error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-NEW-003_084 As a MBs, not able to create master case with transaction date (วันที่เสียหาย) fomat YYYY/MM/DD (พ.ศ)
      Given upload file negative "txnTransDateYYYYMMDD_Tp_V14.2"
      Then should be display popup error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-NEW-003_085 As a MBs, not able to create master case with transaction date (วันที่เสียหาย) fomat DD/MM/YYYY
      Given upload file negative "txnTransDateDDMMYYYY_Tp_V14.2"
      Then should be display popup error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-NEW-003_086 As a MBs, not able to create master case with transaction date (วันที่เสียหาย) is empty
      Given upload file negative "txnTransDateEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_trans_date_invalid"

   Scenario: TC-CFR-NGT-NEW-003_087 As a MBs, not able to create master case with transaction time format hh:mm
      Given upload file negative "txnTransTimehhmm_Tp_V14.2"
      Then should be display popup error message is "txn_trans_time_invalid"

    Scenario: TC-CFR-NGT-NEW-003_088 As a MBs, not able to create master case with transaction time format hh:mm:ss.sss
      Given upload file negative "txnTransTimehhmmsssss_Tp_V14.2"
      Then should be display popup error message is "txn_trans_time_invalid"

    Scenario: TC-CFR-NGT-NEW-003_089 As a MBs, not able to create master case with transaction time is empty
      Given upload file negative "txnTransTimeEmpty_Tp_V14.2"
      Then should be display popup error message is "txn_trans_time_invalid"

    Scenario: TC-CFR-NGT-NEW-003_090 As a MBs, not able to create master case with Instruction ID(TXN ID) is more than 35 digit
      Given upload file negative "txnInstructionMoreThan35digit_Tp_V14.2"
      Then should be display popup error message is "txn_instr_id_invalid"

    Scenario: TC-CFR-NGT-NEW-003_091 As a MBs, not able to create master case with amount is less than zoro
      Given upload file negative "txnAmountLessThanZero_Tp_V14.2"
      Then should be display popup error message is "txn_amount_invalid"

    Scenario: TC-CFR-NGT-NEW-003_092 As a MBs, not able to create master case with amount is more than limit
      Given upload file negative "txnAmountMoreThanlimit_Tp_V14.2"
      Then should be display popup error message is "txn_amount_invalid"

    Scenario: TC-CFR-NGT-NEW-003_093 As a MBs, not able to create master case with amount is not numberic
      Given upload file negative "txnAmountNotNumber_Tp_V14.2"
      Then should be display popup error message is "txn_amount_invalid"

    Scenario: TC-CFR-NGT-NEW-003_094 As a MBs, not able to create master case with freez date by bank (วันและเวลาที่อายัด 72 hrs) invalid format
      Given upload file negative "txnTransBankFreezDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_freez_72hrs"

    # Scenario: TC-CFR-NGT-NEW-003_095 As a MBs, not able to create master case with freez date by bank (วันและเวลาที่อายัด 72 hrs) with other bank
    #   Given upload file negative ""
    #   Then should be display popup error message is ""

    Scenario: TC-CFR-NGT-NEW-003_096 As a MBs, not able to create master case with unfreez date by bank (วันและเวลาที่ปลดอายัด 72 hrs) invalid format
      Given upload file negative "txnTransBankUnFreezDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_unfreez_72hrs"

    Scenario: TC-CFR-NGT-NEW-003_097 As a MBs, not able to create master case with unfreez date by bank (วันและเวลาที่ปลดอายัด 72 hrs) with other bank
      Given upload file negative "txnTransBankUnFreezOfOtherBank_Tp_V14.2"
      Then should be display popup error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-NEW-003_098 As a MBs, not able to create master case with police date (วันและเวลาที่แจ้งความ) invalid format
      Given upload file negative "txnTransPoliceDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_police_date"

    Scenario: TC-CFR-NGT-NEW-003_099 As a MBs, not able to create master case with unfreez date by bank (วันและเวลาที่แจ้งความ) with other bank
      Given upload file negative "txnTransPoliceDateOfOtherBank_Tp_V14.2"
      Then should be display popup error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-NEW-003_100 As a MBs, not able to create master case with freez 7 day (วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)) invalid format
      Given upload file negative "txnTransFreez7DayDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_freez7day_date"

    Scenario: TC-CFR-NGT-NEW-003_101 As a MBs, not able to create master case with freez 7 day (วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)) with other bank
      Given upload file negative "txnTransFreez7DayDateOfOtherBank_Tp_V14.2"
      Then should be display popup error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-NEW-003_102 As a MBs, not able to create master case with unfreez 7 day (วันและเวลาที่ Fraud พิจารณาปลดอายัดตามมาตรา 6 (7 วัน)) invalid format
      Given upload file negative "txnTransUnFreez7DayDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_unfreez7day_date"

    Scenario: TC-CFR-NGT-NEW-003_103 As a MBs, not able to create master case with unfreez 7 day (วันและเวลาที่ Fraud พิจารณาปลดอายัดตามมาตรา 6 (7 วัน)) with other bank
      Given upload file negative "txnTransUnFreez7DayDateOfOtherBank_Tp_V14.2"
      Then should be display popup error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-NEW-003_104 As a MBs, not able to create master case with freez by police (วันและเวลาที่อายัดจากตำรวจ) invalid format
      Given upload file negative "txnTransPoliceFreezDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_police_freez_date"

    Scenario: TC-CFR-NGT-NEW-003_105 As a MBs, not able to create master case with freez by police (วันและเวลาที่อายัดจากตำรวจ) with other bank
      Given upload file negative "txnTransPoliceFreezDateOfOtherBank_Tp_V14.2"
      Then should be display popup error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-NEW-003_106 As a MBs, not able to create master case with unfreez by police (วันและเวลาที่ปลดอายัดจากตำรวจ) invalid format
      Given upload file negative "txnTransPoliceUnFreezDateInvalid_Tp_V14.2"
      Then should be display popup error message is "txn_police_unfreez_date"

    Scenario: TC-CFR-NGT-NEW-003_107 As a MBs, not able to create master case with unfreez by police (วันและเวลาที่ปลดอายัดจากตำรวจ) with other bank
      Given upload file negative "txnTransPoliceUnFreezDateOfOtherBank_Tp_V14.2"
      Then should be display popup error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-NEW-003_108 As a MBs, not able to create master case and bank freez by account with fill-in amount of freez
      Given upload file negative "txnTransfreezAccWithAmount_Tp_V14.2"
      Then should be display popup error message is "txn_freez_amount"

    Scenario: TC-CFR-NGT-NEW-003_109 As a MBs, not able to create master case and bank freez by amount with amount is empty
      Given upload file negative "txnTransfreezAmountWithEmptyValue_Tp_V14.2"
      Then should be display popup error message is "txn_freez_amount"

    Scenario: TC-CFR-NGT-NEW-003_110 As a MBs, not able to create master case and police freez by account with fill-in amount of freez
      Given upload file negative "txnTransPolicefreezAccWithAmount_Tp_V14.2"
      Then should be display popup error message is "txn_police_freez_amount"

    Scenario: TC-CFR-NGT-NEW-003_111 As a MBs, not able to create master case and police freez by amount with amount is empty
      Given upload file negative "txnTransPolicefreezAmountWithEmptyValue_Tp_V14.2"
      Then should be display popup error message is "txn_police_freez_amount"

    Scenario: TC-CFR-NGT-NEW-003_112 As a MBs, not able to create master case Account 1 transferred to Account 2 and transferred to other accounts of the same bank.
      Given upload file negative "Account1TransferredToAccount2AndTransferredToSameBank_Tp_V14.2"
      Then should be display popup error message is "sen_rc_se"

    Scenario: TC-CFR-NGT-NEW-003_113 As a MBs, not able to create master case Account 1 transferred to Account 2 and transferred to other accounts, different banks.
      Given upload file negative "Account1TransferredToAccount2AndTransferredToDifferentBank_Tp_V14.2"
      Then should be display popup error message is "sen_rc_se"