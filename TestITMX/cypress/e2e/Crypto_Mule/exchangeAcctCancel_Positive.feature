Feature: Upload Crypto Mule

  As a Upload criteria
  I want to validate case Exchange Acct Registry

  Scenario: TS001_001_002 ตรวจสอบสิทธิ์การเข้าถึง Menu "Exchange ACC Registry" ในกรณีมี Permission "CFR_CASE_CREATE"
    Given login ITMX web portal by BBL user
    And go to menu Brown Mule create
    When I look for button Exchange Account Registry

  Scenario: TS001_001_003 ตรวจสอบการ Download File Template
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    And Click info page upload file exchange account registry
    Then Download File Template Create
    Then I should see the Exchange Account Registry file in the downloads folder

  Scenario: TS002_001_004	ตรวจสอบการ Upload File โดยระบุนามชื่อไฟล์เป็น ExchangeAccount_Registry_V1.0_BBB_CXL_YYYY-MM-DD_XXX.xlsx
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-11_910"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_004"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_004"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_004"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-11_910"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_004"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_004"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_004"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_001_015 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่เป็น .xlsx
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-07_510"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_015"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_015"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_015"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-07_510"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_015"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_015"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_015"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_001_017	ตรวจสอบการ Upload File ขนาดไม่เกิน 1 MB หรือเท่ากับ 1 MB
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-11_691"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_017"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_017"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_017"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-11_691"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_017"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_017"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_017"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_001_019	ตรวจสอบการ Upload File จำนวนน้อยกว่า 100 records หรือเท่ากับ 100 records
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-24_500"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_019"
    Then confirm data
    Given Query checkDB validate add file dark exchange account registry test "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_019"    
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-24_500"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_019"
    Then confirm data
    Given Query checkDB validate add file dark exchange account registry cancel "Crypto_mule/Exchange_acct_cancel_Positive/TS002_001_019"
    And Request Preview Search exchange accounts is page to validate "100"
    Given Deleted file upload crypto file new and file cancel 100 record

  Scenario: TS002_002_001	ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด รายการที่ : Numeric String (3) ประเภทคำสั่ง : Alphanumeric String (10)เลขบัญชี  : Alphanumeric String (16) ชื่อเจ้าของบัญชี  : Alphanumeric String (256)
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-10_162"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_002_001"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_002_001"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_002_001"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-10_162"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_002_001"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_002_001"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_002_001"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_003_001	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยเลขบัญชี รองรับการกรอกข้อมูล ที่มี """ """ หรือ """-""" หรือ ตัวเลขทั้งหมด
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-10_150"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_001"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_001"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_001"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-10_150"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_001"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_001"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_001"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_003_002	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุเลขบัญชี  จำนวน 10 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-07_207"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_002"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_002"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_002"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-07_207"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_002"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_002"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_002"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_003_003	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุเลขบัญชี  จำนวน 16 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-07_209"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_003"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_003"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_003"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-07_209"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_003"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_003"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_003"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_003_004	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุชื่อเจ้าของบัญชีโดยมี Special Character "."   "~"   "!"   "@"   "#"   "$"   %"   "^"   "&"   "*"   "("   ")"   "_"   "+"   "="   "-"   "\"   "]"   "["   "{"   "}"   ":"   "/"   "?"   "."   ">"   "<"   ","   "'"   """   "|" 
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-07_211"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_004"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_004"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_004"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-07_211"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_004"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_004"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_004"
    Given Deleted file upload crypto file new and file cancel

  Scenario: TS002_003_005	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุชื่อเจ้าของบัญชี  จำนวน 256 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Exchange Account Registry
    When upload file exchange acct cancel case add positive update day latest "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-07_200"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_005"
    Then confirm data
    Then display show detail when add exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_005"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_005"
    When upload file exchange acct cancel case cancel positive update day latest "ExchangeAccount_Registry_V1.0_002_CXL_2568-02-07_200"
    Then should be display data success in file "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_005"
    Then confirm data
    Then display show detail when cancel exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_005"
    Given Query checkDB validate add file dark exchange account registry "Crypto_mule/Exchange_acct_cancel_Positive/TS002_003_005"
    Given Deleted file upload crypto file new and file cancel