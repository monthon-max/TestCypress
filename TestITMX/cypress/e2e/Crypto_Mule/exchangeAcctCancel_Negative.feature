Feature: Exchange Acct Cancel Negative

# ======================================================================================
    # Scenario: TS002_001_002 ตรวจสอบสิทธิ์การเข้าถึง Menu "Exchange Account Registry" ในกรณีที่ไม่มี Permission "CFR_CASE_CREATE"
    #   Given login ITMX web portal by VIVI account
    #   And Check button exchange account registry permission
    #   Then I should see button Exchange Account Registry on the page

    Scenario: TS002_001_005 ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ไม่ถูกต้อง
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_TS002_001_005"
      Then should be display popup error message is "File_name_is_invalid"

    Scenario: TS002_001_006 ตรวจสอบการ Upload File โดยระบุชื่อรหัสธนาคารไม่ถูกต้อง (BBB)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_007_CXL_2568-02-05_006"
      Then should be display popup error message is "File_name_invalid_bank_code"

    Scenario: TS002_001_007 ตรวจสอบการ Upload File โดยระบุชื่อรหัสธนาคารไม่ถูกต้อง (BBB)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_BBLS_CXL_YYYY-MM-DD_XXX-v1.0"
      Then should be display popup error message is "File_name_is_invalid"

    Scenario: TS002_001_008 ตรวจสอบการ Upload File โดยระบุoperation flagไม่ถูกต้อง (CLX)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-04_880"
      Then should be display popup error message is "File_name_invalid_command_type"

    Scenario: TS002_001_009 ตรวจสอบการ Upload File โดยระบุoperation flagไม่ถูกต้อง (CXL)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CLXS_2568-02-05_009-v1.0"
      Then should be display popup error message is "File_name_is_invalid"
    
    Scenario: TS002_001_010 ตรวจสอบการ Upload File โดยระบุวันที่มากกว่า หรือ น้อยกว่า ปัจจุบัน (YYYY-MM-DD)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel "/ExchangeAccount_Registry_V1.0_002_CXL_2568-02-09_010"
      Then should be display popup error message is "File_name_invalid_format_or_date_information"
    
    Scenario: TS002_001_011 ตรวจสอบการ Upload File โดยระบุ Format ของวันที่ไม่ถูกต้อง (YYYY-MM-DD)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-04_TS002_001_011"
      Then should be display popup error message is "File_name_is_invalid"
    
    Scenario: TS002_001_012 ตรวจสอบการ Upload File โดยระบุ number of the day ซ้ำกับไฟล์ก่อนหน้า (XXX)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-11_002"
      Then cancel file
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-11_002"
      Then should be display popup error message is "File_name_duplicate_in_system"
      Given Deleted Query All

    Scenario: TS002_001_013 ตรวจสอบการ Upload File โดยระบุ number of the day ไม่ถูก Format (XXX)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_002"
      Then should be display popup error message is "File_name_duplicate_in_system"
    
    Scenario: TS002_001_014 ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ผิด Format ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccountRegistryV10002CXL2568-02-05_002"
      Then should be display popup error message is "File_name_is_invalid"
    
    Scenario: TS002_001_016 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่ไม่ใช่ .xlsx เช่น  .csv หรือ .pdf'
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel "/ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_016" pdf
      Then should be display popup error message is "invalid_file_extension"
    
    Scenario: TS002_001_018 ตรวจสอบการ Upload File ขนาดเกิน 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_902"
      Then should be display popup error message is "file_fxceed_limit"

    Scenario: TS002_001_020 ตรวจสอบการ Upload File จำนวน 101 records
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_056"
      Then should be display popup error message is "record_exceed_limit"

# ======================================================================================
    Scenario: TS002_003_006 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ รายการที่ ด้วยตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_097"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_006" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_006"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_006"
      Given Deleted Query All
    
    Scenario: TS002_003_007 ตรวจสอบการ Upload File โดยระบุ Over Max Length ที่ Field Mandatory ทั้งหมด รายการที่ : Numeric String (3) ประเภทคำสั่ง : Alphanumeric String (10)เลขบัญชี  : Alphanumeric String (16) ชื่อเจ้าของบัญชี  : Alphanumeric String (256)"
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-10_021"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_007" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_007"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_007" row 4
      Given Deleted Query All

    Scenario: TS002_003_008 ตรวจสอบการ Upload File โดยระบุค่าว่าง ที่ Field Mandatory และ Optional ทั้งหมด รายการที่ : Numeric String (3) ประเภทคำสั่ง : Alphanumeric String (10) เลขบัญชี  : Alphanumeric String (16) ชื่อเจ้าของบัญชี  : Alphanumeric String (256)"""
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_088"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_008" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_008"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_003_008" row 4
      Given Deleted Query All

# ======================================================================================
    Scenario: TS002_004_001 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ ประเภทคำสั่ง เป็น "สร้าง"
      Given login ITMX web portal by KTB user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_006_CXL_2568-02-05_075"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_001" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_001"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_001"
      Given Deleted Query All
    
    Scenario: TS002_004_002 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ รายการที่ เริ่มต้นด้วยเลข2
      Given login ITMX web portal by KTB user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_006_CXL_2568-02-05_072"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_002" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_002"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_002"
      Given Deleted Query All
    
    Scenario: TS002_004_003 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ ประเภทคำสั่ง เป็น "ABC"
      Given login ITMX web portal by KTB user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_006_CXL_2568-02-05_069"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_003" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_003"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_003"
      Given Deleted Query All
    
    Scenario: TS002_004_004 ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดยมี Field เลขบัญชี  โดยซ้ำกันในไฟล์เดียว
      Given login ITMX web portal by KTB user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_006_CXL_2568-02-05_066"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_004" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_004"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_004" row 2
      Given Deleted Query All

    Scenario: TS002_004_005 ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  ถูกยกเลิกไปแล้วในรอบก่อนหน้า
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-05_064"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_005" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_005"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_005"
      Given Deleted Query All

    Scenario: TS002_004_006 ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  ไม่ได้เป็นบัญชี Exchange 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-10_234"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_006" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_006"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_006"
      Given Deleted Query All
    
    Scenario: TS002_004_007 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ เลขบัญชี 9 ตัวอักษร และ ชื่อเจ้าของบัญชี เป็นค่าว่าง
      Given login ITMX web portal by KTB user
      And go to menu Exchange Account Registry
      When upload file negative exchange acct cancel case update day latest "ExchangeAccount_Registry_V1.0_006_CXL_2568-02-05_047"
      Then should be display master upload file exchange account registry preview page of "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_007" with valid description
      Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_007"
      And display show detail when upload exchange account registry "Crypto_mule/Exchange_acct_cancel_Negative/TS002_004_007"
      Given Deleted Query All