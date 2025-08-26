Feature: Upload Crypto Mule Negative

  As a Upload criteria
  I want to validate case Exchange Acct Registry

    Scenario: TS001_001_001 ตรวจสอบสิทธิ์การเข้าถึง Menu "Exchange ACC Registry" ในกรณีไม่มีมี Permission "CFR_CASE_CREATE"
      Given login ITMX web portal by exchange account user
      And go to menu Brown Mule create
      When I Dont look for button Exchange Account Registry

    Scenario: TS001_001_005 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่ไม่ใช่ .xlsx เช่น  .csv หรือ .pdf'
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "pdf"
      When upload file negative exchange account registry and morify file extension is "pdf"
      Then should be display popup error message is "file_name_extension"
    Scenario: TS001_001_008 ตรวจสอบการ Upload File ขนาดเกิน 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_222" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_fxceed_limit"
    Scenario: TS001_001_011 ตรวจสอบการระบุข้อมูลในไฟล์ Upload File จำนวน 101 records
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_101" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "list_in_limit"
    Scenario: TS001_002_002 'ตรวจสอบ Condition field ชื่อไฟล์มีคำเสริมหน้า (Prefix) ไม่ถูกต้อง  ในกรณีข้อมูลข้างในถูกต้อง - ระบุเพิ่ม Test
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx" And prefix file is "Test" 
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"
    Scenario: TS001_002_003 ตรวจสอบ Condition field ชื่อไฟล์รหัสธนาคารไม่ถูกต้อง ในกรณีข้อมูลข้างในถูกต้อง
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx" And bankcode is "002T" 
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"
    Scenario: TS001_002_004 'ตรวจสอบ Condition field  ชื่อธนาคารไม่ตรงกับธนาคาร login - login ธนาคาร KTB 006 - ชื่อไฟล์ BBL 002
      Given login ITMX web portal by KBNK user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx" And bankcode is "002" 
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_bankcode"
    Scenario: TS001_002_005 'ตรวจสอบ Condition field ประเภทคำสั่งไม่ถูกต้อง ในกรณีข้อมูลข้างในถูกต้อง - NEW > NEWX
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx" And file add is "NEWX" 
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"
    Scenario: TS001_002_006 ตรวจสอบ Condition field ในกรณี ชื่อไฟล์ Add เป็น CXL
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx" And file add is "CXL" 
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_invalid_command"
    Scenario: TS001_002_007 'ตรวจสอบ Condition field รูปแบบหรือข้อมูลวันที่ไม่ถูกต้อง ในกรณีข้อมูลข้างในถูกต้อง - ระบุ DD-MM-YYYY
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx" format date
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"
    Scenario: TS001_002_008 ตรวจสอบ Condition field ชื่อไฟล์ซ้ำในระบบ ในกรณีข้อมูลข้างในถูกต้อง - ระบุชื่อไฟล์ หลังปีเดือนวันซ้ำกัน YYYY-MM-DD_XXX 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then confirm data to exchange account registry
      When upload file positive exchange account registry
      Then should be display popup error message is "file_name_same"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_002_009 ตรวจสอบ Condition field โดยใช้ชื่อไฟล์ผิด format ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file negative exchange account registry filename is "Test001"
      Then should be display popup error message is "file_name_prefix"
    Scenario: TS001_002_010 'ตรวจสอบ Condition field สร้างชื่อไฟล์วันปัจจุบัน โดย Upload File วันถัดไป - Upload File ที่ไม่ใช่วันที่ปัจจุบัน to day +1 -1
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file upload file the one to day 1 should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_119"
      When upload file positive exchange account registry
      Then should be display popup error message is "file_name_invali_date"
    Scenario: TS001_004_001 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดย รายการที่  ไม่เรียงอันดับ 2 5 7 8
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_401" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_001" and validate trasition row is "4"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_002 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด แต่ไม่ระบุ Field รายการที่ - Field รายการที่ : ค่าว่าง
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_402" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_002" and validate trasition row is "4"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_003 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ระบุ Field รายการที่ เป็นตัวอักษร - Field รายการที่ : D
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_403" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_003" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_004 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมดไม่ระบุ Field ประเภทคำสั่ง - Field ปรเภทคำสั่ง : ค่าว่าง
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_404" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_004" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_005 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ระบุ Field ประเภทคำสั่งอื่นๆ - Field ประเภทคำสั่ง : ระบุ ทดสอบ
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_405" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_005" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_006 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขนิติบุคคล รองรับการกรอกข้อมูล ที่มี "."   "~"   "!"   "@"   "#"   "$"   %"   "^"   "&"   "*"   "("   ")"   "_"   "+"   "="   "-"   "\"   "]"   "["   "{"   "}"   ":"   ";"   "/"   "?"   "."   ">"   "<"   ","   " "   "'"   """ 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_406" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_006" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_011 '- ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 9 ตัวอักษร Field เลขบัญชี : 023 345-678
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_411" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_011" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_012 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 17 ตัวอักษร Field เลขบัญชี : 012 345-6789-9876 543
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_412" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_012" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_013  ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีที่มี Special Character "#"   "@"   "!"   "$"   "?"
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_413" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_013" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_014 'ตรวจสอบการ Upload File นิติบุคคล 2 คน  โดยระบุ Field Mandatory ทั้งหมด  - กรณีระบุเลขบัญชีและ ธนาคารเจ้าของบัญชี ซ้ำกันใน File เดียวกัน
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_414" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_014" and validate trasition row is "2"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_015 'ตรวจสอบการ Upload File ที่มีอยู่ในระบบอยู่แล้ว โดยระบุ Field Mandatory ทั้งหมด 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_415" and input file extension is "xlsx"
      When upload file positive exchange account registry
      Then confirm data to exchange account registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_415" and input file extension is "xlsx" and fix running number for case TS001_004_015 "444"
      When upload file negative exchange account registry row2
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_015" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
      Given Query get id for deleted row 2
      Given Deleted Query All Row 2
    Scenario: TS001_004_016 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยไม่ระบุชื่อเจ้าของบัญชี Field ชื่อเจ้าของบัญชี : ไม่ระบุ
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_416" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_016" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_017 'ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อเจ้าของบัญชีมากกว่่าจำนวน 256 ตัวอักษร Field ชื่อเจ้าของบัญชี : ระบุมากกว่า (257 ตัวอักษร)
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_417" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_017" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_019 'ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field รายการที่ และ เลขบัญชี Field รายการที่ : ค่าว่าง Field เลขบัญชี : ค่าว่าง
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_419" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_019" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_020 'ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด และระบุ Field รายการที่ ผิด Fomat และ ไม่ระบุชื่อเจ้าของบัญชี Field รายการที่ : 2 Field ชื่อเจ้าของบัญชี : ไม่ระบุ
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_420" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_020" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All
    Scenario: TS001_004_023 'ตรวจสอบการ Upload File โดยระบุ Over Max Length ที่ Field Mandatory และ Optional ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_423" and input file extension is "xlsx"
      When upload file negative exchange account registry and morify file extension is "xlsx"
      Then should be validate label and data not success Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_004_023" and validate trasition row is "1"
      Given Query get id for deleted
      Given Deleted Query All

    # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    #                         *****   Menu : Search Exchange Account Negative ******
    # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    Scenario: TS001_005_009 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่มีข้อมูลในระบบ - ไม่ระบุข้อมูล และกดค้นหา
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      Then Search Data
      Then should be visible search data one Field
    Scenario: TS001_005_010 'ตรวจสอบการแสดงผลการค้นหาบัญชี Exchange ที่ไม่มีข้อมูลในระบบ - ระบุข้อมูลบัญชี Exchange ที่ยังไม่ถูกนำเข้าในระบบ 
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      Then Search Data is "01055671222670023"


