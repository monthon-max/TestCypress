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

    Scenario: TS001_001_004 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่เป็น .xlsx
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_004"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_004"
      Given Deleted Query All
    Scenario: TS001_001_006 ตรวจสอบการ Upload File ขนาดไม่เกิน 1 MB หรือ เท่ากับ 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_006"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_006"
      Given Deleted Query All
    # ------------------------------*****  case 99 and 100 rrecords time done 4 min + *****-------------------------------------------------------------------------------------------------------------
    # Scenario: TS001_001_009 ตรวจสอบการระบุข้อมูลในไฟล์ Upload File จำนวน 99 records
    #   Given login ITMX web portal by BBL user
    #   And go to menu Exchange Account Registry
    #   When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_099" and input file extension is "xlsx"
    #   When upload file positive exchange account registry
    #   Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_009"
    #   Then confirm data to exchange account registry
    #   And Request Preview Search exchange accounts is page to validate "99"
    #   Given Query get id for deleted
    #   Given Deleted Query All For Loop Exchange acct registry
    # Scenario: TS001_001_010 ตรวจสอบการระบุข้อมูลในไฟล์ Upload File จำนวน 100 records
    #   Given login ITMX web portal by BBL user
    #   And go to menu Exchange Account Registry
    #   When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_100" and input file extension is "xlsx"
    #   When upload file positive exchange account registry
    #   Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_010"
    #   Then confirm data to exchange account registry
    #   And Request Preview Search exchange accounts is page to validate "100"
    #   Given Query get id for deleted
    #   Given Deleted Query All For Loop Exchange acct registry
    Scenario: TS001_003_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_003_001"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_003_001"
      Given Deleted Query All
    Scenario: TS001_004_007 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ยกเลขเว้นหมายเลขนิติบุคคล  -  Field หมายเลขนิติบุคคล : ไม่ระบุ
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_115" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_007"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_007" For "personalID" is null
      Given Deleted Query All
    Scenario: TS001_004_008 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขนิติบุคคล  รองรับการกรอกข้อมูล ที่มี " " หรือ "-" หรือ ตัวเลขทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_116" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_008"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_008"
      Given Deleted Query All
    Scenario: TS001_004_009 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 10 ตัวอักษร โดยมี Special Character "-"   " " 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_117" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_009"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_009"
      Given Deleted Query All
    Scenario: TS001_004_010 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 16 ตัวอักษร โดยมี Special Character "-"   " " 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_118" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_010"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_010"
      Given Deleted Query All
    Scenario: TS001_004_018 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อเจ้าของบัญชีน้อยกว่่าหรือเท่ากับ จำนวน 256 ตัวอักษร 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_119" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_018"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_018"
      Given Deleted Query All
    Scenario: TS001_004_021 ตรวจสอบการ Upload File โดยระบุ Field Mandatory และ Optional ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_021"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_021"
      Given Deleted Query All
    Scenario: TS001_004_022 ตรวจสอบการ Upload File โดยระบุMax Length ที่ Field Mandatory และ Optional ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_119" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then should be validate label Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_022"
      Then confirm data to exchange account registry
      Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_022"
      Given Deleted Query All

    # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    #                         *****   Menu : Search Exchange Account  ******
    # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

      Scenario: TS001_005_001 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลหมายเลขนิติบุคคล เพียง 1 Field
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange
      Then Search Data
      Then should be visible search data one Field
      Scenario: TS001_005_002 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ยังไม่ระบุข้อมูลใด และ ยังไม่ได้กดค้นหา
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange
      Then Search Data Personal_ID And get validate result
      Scenario: TS001_005_003 ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลธนาคารเจ้าของบัญชีเพียง 1 Field
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange
      Then Search Bank_Name is "ธนาคารกรุงเทพ จำกัด (มหาชน)" is "002" Data And validate result
      Scenario: TS001_005_004 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลเลขบัญชีเพียง 1 Field
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange
      Then Search Data AccountNumber And get validate result
      Scenario: TS001_005_005 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลชื่อเจ้าของบัญชีเพียง 1 Field
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange
      Then Search Data FristName And get validate result
      Scenario: TS001_005_006 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลหมายเลขนิติบุคคล + ธนาคารเจ้าของบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange For Bankcode is "002"
      Then Search Data Personal_ID + BankName is "ธนาคารกรุงเทพ จำกัด (มหาชน)" is "002" And get validate result
      Scenario: TS001_005_007 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลหมายเลขนิติบุคคล + ธนาคารเจ้าของบัญชี + เลขบัญชี 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange For Bankcode is "002"
      Then Search Data Personal_ID + AccountNumber + BankName is "ธนาคารกรุงเทพ จำกัด (มหาชน)" is "002" And get validate result
      Scenario: TS001_005_008 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ระบุข้อมูลหมายเลขนิติบุคคล + ธนาคารเจ้าของบัญชี + เลขบัญชี + ชื่อเจ้าของบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      And PreparaData For Search Exchange For Bankcode is "002"
      Then Search Data Personal_ID + FristName + AccountNumber + BankName is "ธนาคารกรุงเทพ จำกัด (มหาชน)" is "002" And get validate result