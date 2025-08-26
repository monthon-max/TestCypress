Feature: Create Sub Case Negative of Payer Description -> Excel Section 2


  Background: Login to ITMX Portal by BBL Bank
    Given login ITMX web portal by BBL account
    And search bank case id "25660505CMBT00008"
    # And search bank case id NFT "25660505CMBT00008"
    Then click add sub case first row

    Scenario: TC-CFR-NGT-SUB-003_001 As a MBs, not able to create sub case (Transaction) payer name is empty
      Given upload file sub case negative "txnPayerNameEmpty"
      Then should be display popup subcase error message is "sub_txn_payer_name_invalid"

    Scenario: TC-CFR-NGT-SUB-003_002 As a MBs, not able to create sub case (Transaction) payer description not match transaction section
      Given upload file sub case negative "txnPayerAccNotMatch"
      Then should be display popup subcase error message is "sub_txn_acc_not_match"

    Scenario: TC-CFR-NGT-SUB-003_008 As a MBs, not able to create sub case (Transaction) account number is empty
      Given upload file sub case negative "txnPayerAccNoEmpty"
      Then should be display popup subcase error message is "txn_payer_sub_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_009 As a MBs, not able to create sub case (Transaction) account number is more than 34
      Given upload file sub case negative "txnPayerAccMoreThan34"
      Then should be display popup subcase error message is "txn_payer_sub_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_010 As a MBs, not able to create sub case (Transaction) account number ENG/TH/Special charactor
      Given upload file sub case negative "txnPayerAccNoENG"
      Then should be display popup subcase error message is "txn_payer_sub_accountNo_invalid"

    # Scenario: TC-CFR-NGT-NEW-003_011 As a MBs, not able to create sub case  (Transaction) account number Thai charactor
    #   Given upload file sub case negative "txnPayerAccNoTH"
    #   Then should be display popup subcase error message is "txn_payer_accountNo_invalid"

    # Scenario: TC-CFR-NGT-NEW-003_012 As a MBs, not able to create sub case  (Transaction) account number Special charactor
    #   Given upload file sub case negative "txnPayerAccNoSpecialChar"
    #   Then should be display popup subcase error message is "txn_payer_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_013 As a MBs, not able to create sub case  (Transaction) payer bank name is empty
      Given upload file sub case negative "txnPayerBankNameEmpty"
      Then should be display popup subcase error message is "txn_payer_sub_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_015 As a MBs, not able to create sub case  (Transaction) ip address more than 50 charactor
      Given upload file sub case negative "txnIPAddressMoreThan50"
      Then should be display popup subcase error message is "txn_ip_address_invalid"

    Scenario: TC-CFR-NGT-SUB-003_016 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case  (Transaction) nat id 1 charator
      Given upload file sub case negative "txnNATID1Char"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_017 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case  (Transaction) nat id is empty
      Given upload file sub case negative "txnNATIDEmpty"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_018 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case  (Transaction) nat id more than 13 digit
      Given upload file sub case negative "txnNATIDMoreThan13"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-NEW-003_019 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case  (Transaction) nat id ENG/TH/Special Char
      Given upload file sub case negative "txnNATIDEngChar"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_022 As a MBs, corporate (นิติบุคคล) not able to create sub case  (Transaction) nat id 1 charator
      Given upload file sub case negative "txnCorporateNATID1Char"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_023 As a MBs, corporate (นิติบุคคล) not able to create sub case  (Transaction) nat id is empty
      Given upload file sub case negative "txnCorporateNATIDEmpty"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_024 As a MBs, corporate (นิติบุคคล) not able to create sub case  (Transaction) nat id more than 18 digit
      Given upload file sub case negative "txnCorporateNATIDMoreThan18"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_025 As a MBs, corporate (นิติบุคคล) not able to create sub case  (Transaction) nat id with TH/ENT/Spqcial Char
      Given upload file sub case negative "txnCorporateNATIDChar"
      Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_028 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case  (Transaction) nat id is empty
      Given upload file sub case negative "txnForeignerNATIDEmpty"
      Then should be display popup subcase error message is "txn_natid_invalid"

    # Scenario: TC-CFR-NGT-SUB-003_029 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case  (Transaction) nat id more than 35 digit
    #   Given upload file sub case negative "txnForeignerNATIDMoreThan35"
    #   Then should be display popup subcase error message is "txn_natid_invalid"

    Scenario: TC-CFR-NGT-SUB-003_031 As a MBs, not able to create sub case  (Transaction) with payee phone number more than 35 digit
      Given upload file sub case negative "txnPayeePhoneMoreThan35"
      Then should be display popup subcase error message is "txn_payee_phone_no"

    Scenario: TC-CFR-NGT-SUB-003_032 As a MBs, not able to create sub case  (Transaction) with payee name is empty
      Given upload file sub case negative "txnPayeeNameEmpty"
      Then should be display popup subcase error message is "txn_payee_name"

    Scenario: TC-CFR-NGT-SUB-003_033 As a MBs, not able to create sub case  (Transaction) with payee name more than 256 digit
      Given upload file sub case negative "txnPayeeNameMoreThan256"
      Then should be display popup subcase error message is "txn_payee_name"

    Scenario: TC-CFR-NGT-SUB-003_034 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case  (Transaction) payee last name is empty
      Given upload file sub case negative "txnPayeeLastNameEmpty"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_035 As a MBs, natural person (บุคคลธรรมดา) not able to create sub case  (Transaction) payee last name more than 256
      Given upload file sub case negative "txnPayeeLastNameMoreThan256"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_037 As a MBs, corporate (นิติบุคคล) not able to create sub case  with payee last name is 256 digit
      Given upload file sub case negative "txnCorporatePayeeLastName256"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_038 As a MBs, corporate (นิติบุคคล) not able to create sub case  (Transaction) payee last name more than 256
      Given upload file sub case negative "txnCorporatePayeeLastNameMoreThan256"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_039 As a MBs, corporate (นิติบุคคล) not able to create sub case  with payee last name is TH/ENG/Num/Special charactor
      Given upload file sub case negative "txnCorporatePayeeLastNameChar"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_043 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case  (Transaction) payee last name is empty
      Given upload file sub case negative "txnForeignerPayeeLastNameEmpty"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_044 As a MBs, foreigner (ชาวต่างชาติ) not able to create sub case  (Transaction) payee last name more than 256
      Given upload file sub case negative "txnForeignerPayeeLastNameMoreThan256"
      Then should be display popup subcase error message is "txn_payee_lastname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_046 As a MBs, not able to create sub case  (Transaction) promptpay type invalid
      Given upload file sub case negative "txnPromptPayTypeInvalid"
      Then should be display popup subcase error message is "txn_promptpay_type_invalid"

    Scenario: TC-CFR-NGT-SUB-003_047 As a MBs, not able to create sub case  (Transaction) promptpay phone number +66 prefix followed by 8 digits numeric
      Given upload file sub case negative "txnPromptPayPhoneNumber8Digits"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_048 As a MBs, not able to create sub case  (Transaction) promptpay phone number +66 prefix followed by 10 digits numeric
      Given upload file sub case negative "txnPromptPayPhoneNumber10Digits"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_049 As a MBs, not able to create sub case  (Transaction) promptpay phone number is empty
      Given upload file sub case negative "txnPromptPayPhoneNumberEmpty"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_050 As a MBs, not able to create sub case  (Transaction) promptpay phone number is EN/TH/Special charactor
      Given upload file sub case negative "txnPromptPayPhoneNumberChar"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_053 As a MBs, not able to create sub case  (Transaction) promptpay nat id more than 13 digit
      Given upload file sub case negative "txnPromptPayNatidMorethan13"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_054 As a MBs, not able to create sub case  (Transaction) promptpay nat id less than 13 digit
      Given upload file sub case negative "txnPromptPayNatidLessthan13"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-SUB-003_055 As a MBs, not able to create sub case  (Transaction) promptpay nat id is empty
      Given upload file sub case negative "txnPromptPayNatidEmpty"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_056 As a MBs, not able to create sub case  (Transaction) promptpay nat id is EN/TH/Special charactor
      Given upload file sub case negative "txnPromptPayNatidChar"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-SUB-003_059 As a MBs, not able to create sub case  (Transaction) promptpay biller id more than 15 digit
      Given upload file sub case negative "txnPromptPayBillerMorethan15"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_060 As a MBs, not able to create sub case  (Transaction) promptpay biller id less than 15 digit
      Given upload file sub case negative "txnPromptPayBillerLessthan15"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-SUB-003_061 As a MBs, not able to create sub case  (Transaction) promptpay biller id is empty
      Given upload file sub case negative "txnPromptPayBillerEmpty"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_062 As a MBs, not able to create sub case  (Transaction) promptpay biller id is EN/TH/Special charactor
      Given upload file sub case negative "txnPromptPayBillerChar"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-SUB-003_064 As a MBs, not able to create sub case  (Transaction) promptpay e-wallet id more than 15 digit
      Given upload file sub case negative "txnPromptPayEwalletMorethan15"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_065 As a MBs, not able to create sub case  (Transaction) promptpay e-wallet id less than 15 digit
      Given upload file sub case negative "txnPromptPayEwalletLessthan15"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

   Scenario: TC-CFR-NGT-SUB-003_066 As a MBs, not able to create sub case  (Transaction) promptpay e-wallet id is empty
      Given upload file sub case negative "txnPromptPayEwalletEmpty"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_067 As a MBs, not able to create sub case  (Transaction) promptpay e-wallet id is EN/TH/Special charactor
      Given upload file sub case negative "txnPromptPayEwalletChar"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

     Scenario: TC-CFR-NGT-SUB-003_070 As a MBs, not able to create sub case  (Transaction) promptpay ไม่มี and not empty value
      Given upload file sub case negative "txnPromptPayNonTypeNotEmptyValue"
      Then should be display popup subcase error message is "txn_promptpay_no_invalid"

    Scenario: TC-CFR-NGT-SUB-003_074 As a MBs, not able to create sub case  (Transaction) payee account number is empty
      Given upload file sub case negative "txnPayeeAccNoEmpty"
      Then should be display popup subcase error message is "txn_payee_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_075 As a MBs, not able to create sub case  (Transaction) payee account number is more than 34
      Given upload file sub case negative "txnPayeeAccMoreThan34"
      Then should be display popup subcase error message is "txn_payee_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_076 As a MBs, not able to create sub case  (Transaction) payee account number EN/TH/Special charactor
      Given upload file sub case negative "txnPayeeAccNoChar"
      Then should be display popup subcase error message is "txn_payee_accountNo_invalid"

    Scenario: TC-CFR-NGT-SUB-003_079 As a MBs, not able to create sub case  (Transaction) payee bank name is empty
      Given upload file sub case negative "txnPayeeBankNameEmpty"
      Then should be display popup subcase error message is "txn_payee_bankname_invalid"

    Scenario: TC-CFR-NGT-SUB-003_082 As a MBs, not able to create sub case  with transaction date (วันที่เสียหาย) fomat YYYY-MM-DD (ค.ศ)
      Given upload file sub case negative "txnTransDateInvalidYear"
      Then should be display popup subcase error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-SUB-003_083 As a MBs, not able to create sub case  with transaction date (วันที่เสียหาย) fomat DD-MM-YYYY
      Given upload file sub case negative "txnTransDateDD-MM-YYYY"
      Then should be display popup subcase error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-SUB-003_084 As a MBs, not able to create sub case  with transaction date (วันที่เสียหาย) fomat YYYY/MM/DD (พ.ศ)
      Given upload file sub case negative "txnTransDateYYYYMMDD"
      Then should be display popup subcase error message is "txn_trans_date_invalid"

    Scenario: TC-CFR-NGT-SUB-003_086 As a MBs, not able to create sub case  with transaction date (วันที่เสียหาย) is empty
      Given upload file sub case negative "txnTransDateEmpty"
      Then should be display popup subcase error message is "txn_trans_date_invalid"

   Scenario: TC-CFR-NGT-SUB-003_087 As a MBs, not able to create sub case  with transaction time format hh:mm
      Given upload file sub case negative "txnTransTimehhmm"
      Then should be display popup subcase error message is "txn_trans_time_invalid"

    Scenario: TC-CFR-NGT-SUB-003_088 As a MBs, not able to create sub case  with transaction time format hh:mm:ss.sss
      Given upload file sub case negative "txnTransTimehhmmsssss"
      Then should be display popup subcase error message is "txn_trans_time_invalid"

    Scenario: TC-CFR-NGT-SUB-003_089 As a MBs, not able to create sub case  with transaction time is empty
      Given upload file sub case negative "txnTransTimeEmpty"
      Then should be display popup subcase error message is "txn_trans_time_invalid"

    Scenario: TC-CFR-NGT-SUB-003_090 As a MBs, not able to create sub case  with Instruction ID(TXN ID) is more than 35 digit
      Given upload file sub case negative "txnInstructionMoreThan35digit"
      Then should be display popup subcase error message is "txn_instr_id_invalid"

    Scenario: TC-CFR-NGT-SUB-003_091 As a MBs, not able to create sub case  with amount is less than zoro
      Given upload file sub case negative "txnAmountLessThanZero"
      Then should be display popup subcase error message is "txn_amount_invalid"

    Scenario: TC-CFR-NGT-SUB-003_092 As a MBs, not able to create sub case  with amount is more than limit
      Given upload file sub case negative "txnAmountMoreThanlimit"
      Then should be display popup subcase error message is "txn_amount_invalid"

    Scenario: TC-CFR-NGT-SUB-003_093 As a MBs, not able to create sub case  with amount is not numberic
      Given upload file sub case negative "txnAmountNotNumber"
      Then should be display popup subcase error message is "txn_amount_invalid"

    Scenario: TC-CFR-NGT-SUB-003_094 As a MBs, not able to create sub case  with freez date by bank (วันและเวลาที่อายัด 72 hrs) invalid format
      Given upload file sub case negative "txnTransBankFreezDateInvalid"
      Then should be display popup subcase error message is "txn_freez_72hrs"

    Scenario: TC-CFR-NGT-SUB-003_095 As a MBs, not able to create sub case  with freez date by bank (วันและเวลาที่อายัด 72 hrs) with other bank
      Given upload file sub case negative "txnTransBankFreezOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_096 As a MBs, not able to create sub case  with unfreez date by bank (วันและเวลาที่ปลดอายัด 72 hrs) invalid format
      Given upload file sub case negative "txnTransBankUnFreezDateInvalid"
      Then should be display popup subcase error message is "txn_unfreez_72hrs"

    Scenario: TC-CFR-NGT-SUB-003_097 As a MBs, not able to create sub case  with unfreez date by bank (วันและเวลาที่ปลดอายัด 72 hrs) with other bank
      Given upload file sub case negative "txnTransBankUnFreezOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_098 As a MBs, not able to create sub case  with police date (วันและเวลาที่แจ้งความ) invalid format
      Given upload file sub case negative "txnTransPoliceDateInvalid"
      Then should be display popup subcase error message is "txn_police_date"

    Scenario: TC-CFR-NGT-SUB-003_099 As a MBs, not able to create sub case  with unfreez date by bank (วันและเวลาที่แจ้งความ) with other bank
      Given upload file sub case negative "txnTransPoliceDateOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_100 As a MBs, not able to create sub case  with freez 7 day (วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)) invalid format
      Given upload file sub case negative "txnTransFreez7DayDateInvalid"
      Then should be display popup subcase error message is "txn_freez7day_date"

    Scenario: TC-CFR-NGT-SUB-003_101 As a MBs, not able to create sub case  with freez 7 day (วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)) with other bank
      Given upload file sub case negative "txnTransFreez7DayDateOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_102 As a MBs, not able to create sub case  with unfreez 7 day (วันและเวลาที่ Fraud พิจารณาปลดอายัดตามมาตรา 6 (7 วัน)) invalid format
      Given upload file sub case negative "txnTransUnFreez7DayDateInvalid"
      Then should be display popup subcase error message is "txn_unfreez7day_date"

    Scenario: TC-CFR-NGT-SUB-003_103 As a MBs, not able to create sub case  with unfreez 7 day (วันและเวลาที่ Fraud พิจารณาปลดอายัดตามมาตรา 6 (7 วัน)) with other bank
      Given upload file sub case negative "txnTransUnFreez7DayDateOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_104 As a MBs, not able to create sub case  with freez by police (วันและเวลาที่อายัดจากตำรวจ) invalid format
      Given upload file sub case negative "txnTransPoliceFreezDateInvalid"
      Then should be display popup subcase error message is "txn_police_freez_date"

    Scenario: TC-CFR-NGT-SUB-003_105 As a MBs, not able to create sub case  with freez by police (วันและเวลาที่อายัดจากตำรวจ) with other bank
      Given upload file sub case negative "txnTransPoliceFreezDateOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_106 As a MBs, not able to create sub case  with unfreez by police (วันและเวลาที่ปลดอายัดจากตำรวจ) invalid format
      Given upload file sub case negative "txnTransPoliceUnFreezDateInvalid"
      Then should be display popup subcase error message is "txn_police_unfreez_date"

    Scenario: TC-CFR-NGT-SUB-003_107 As a MBs, not able to create sub case  with unfreez by police (วันและเวลาที่ปลดอายัดจากตำรวจ) with other bank
      Given upload file sub case negative "txnTransPoliceUnFreezDateOfOtherBank"
      Then should be display popup subcase error message is "bank_not_permission_access"

    Scenario: TC-CFR-NGT-SUB-003_108 As a MBs, not able to create sub case  and bank freez by account with fill-in amount of freez
      Given upload file sub case negative "txnTransfreezAccWithAmount"
      Then should be display popup subcase error message is "txn_freez_amount"

    Scenario: TC-CFR-NGT-SUB-003_109 As a MBs, not able to create sub case  and bank freez by amount with amount is empty
      Given upload file sub case negative "txnTransfreezAmountWithEmptyValue"
      Then should be display popup subcase error message is "txn_freez_amount"

    Scenario: TC-CFR-NGT-SUB-003_110 As a MBs, not able to create sub case  and police freez by account with fill-in amount of freez
      Given upload file sub case negative "txnTransPolicefreezAccWithAmount"
      Then should be display popup subcase error message is "txn_police_freez_amount"

    Scenario: TC-CFR-NGT-SUB-003_111 As a MBs, not able to create sub case  and police freez by amount with amount is empty
      Given upload file sub case negative "txnTransPolicefreezAmountWithEmptyValue"
      Then should be display popup subcase error message is "txn_police_freez_amount"