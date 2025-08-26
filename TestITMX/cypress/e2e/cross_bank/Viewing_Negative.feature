Feature: Validate Seaching Criteria & Result of searching

  As a Validate Result of Cross-Bank Case Searching
  I want to validate case 
    Background:
      Given Delete BankCaseIDArray "25660505CMBT00001"
      Given Add Master Case "/Addmaster_max.xlsx"
      Given login by BBL 002
      And go to menu cross-bank
      Then Searching is "25660505CMBT00001"
      Then click viewing action
      Then cancel viewing action

    Scenario: TC003_008 ตรวจสอบการค้นหาด้วยการกรอกข้อมูล 1 Field - Field  ธนาคารเจ้าของบัญชี  :Exact match Data 
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_008"
      Then validate result cross bank viewing history is "error message bankcase and bankname is not found"

    Scenario: TC003_009 ตรวจสอบการค้นหาด้วยการไม่กรอกข้อมูลใดๆ - ไม่กรอกข้อมูล All Field 
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "click searching"
      Then validate result cross bank viewing history is "error message bankcase and bankname is not found"

    Scenario: TC003_010 ตรวจสอบการค้นหาข้อมูลที่ไม่มีอยู่จริงในระบบ CFR - Field  หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) 25680428CMBT06880
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_010"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_011 ตรวจสอบการค้นหาข้อมูลที่ไม่มีอยู่จริงในระบบ CFR - Field  เลขที่บัญชีธนาคาร  4798573593753535
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_011"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_012 ตรวจสอบการค้นหาข้อมูลที่ไม่มีอยู่จริงในระบบ CFR - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) :Invalid Exact match Data 25680428CMBT06882 - Field  เลขที่บัญชีธนาคาร :Invalid Exact match Data  4798573593753536
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_012"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_013 ตรวจสอบการค้นหา All  Field  แต่บาง Field เป็นข้อมูลที่เป็น Invalid Exact match Data - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID)  :Invalid Exact match Data = 25680428CMBT06889 - Field  เลขที่บัญชีธนาคาร : Exact match Data - Field  ธนาคารเจ้าของบัญชี  : Exact match Data 
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_013"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_014 ตรวจสอบการค้นหา All Field แต่บาง Field เป็นข้อมูลที่เป็น Invalid Exact match Data - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field  เลขที่บัญชีธนาคาร : :Invalid Exact match Data = 4798573593753535 - Field  ธนาคารเจ้าของบัญชี  : Exact match Data 
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_014"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_015 ตรวจสอบการค้นหา All Field แต่บาง Field เป็นข้อมูลที่เป็น Invalid Exact match Data - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field  เลขที่บัญชีธนาคาร :Invalid  Exact match Data = 4798573593753534 - Field  ธนาคารเจ้าของบัญชี  : Invalid Exact match Data = ธนาคารทหารไทยธนชาต จำกัด (มหาชน)
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_015"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_016 ตรวจสอบการค้นหา All Field แต่บาง Field เป็นข้อมูลที่เป็น Invalid Exact match Data - Field  หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field  เลขที่บัญชีธนาคาร : Exact match Data - Field  ธนาคารเจ้าของบัญชี  :Invalid  Exact match Data = ธนาคารทหารไทยธนชาต จำกัด (มหาชน)
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_016"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_017 ตรวจสอบการยกเลิกการค้นหา - กรอกข้อมูล  Field ใด Field  หนึ่ง แล้วกดปุ่ม ยกเลิก 
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_017"
      Then validate result cross bank viewing history is "should be display value clear"

    Scenario: TC003_018 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลที่ความยาวเกินขีดจำกัด ของแต่ละ Field - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) - Field  เลขที่บัญชีธนาคาร
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_018"
      Then validate result cross bank viewing history is "error message data not found"

    Scenario: TC003_019 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลอักขระพิเศษ ที่ไม่รองรับ ของแต่ละ  Field  - Field  หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) = @#$$%%%%())^%$<>__(_++!@#$*( - Field  เลขที่บัญชีธนาคาร =  @#$*()_)*&
      And go to menu cross-bank-viewing-history 
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_019"
      Then validate result cross bank viewing history is "should be display bankcase and account no value"