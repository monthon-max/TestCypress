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

    Scenario: TC003_001 ตรวจสอบการค้นหาด้วยการกรอกข้อมูล All Field - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field   เลขที่บัญชีธนาคาร : Exact match Data - Field  ธนาคารเจ้าของบัญชี  : ทุกธนาคาร (ALL)
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_001"
      Then validate result cross bank viewing history is "validate viewing table"

    Scenario: TC003_002 ตรวจสอบการค้นหาด้วยการกรอกข้อมูล All Field - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field   เลขที่บัญชีธนาคาร : Exact match Data - Field  ธนาคารเจ้าของบัญชี  : Exact match Data
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_002"
      Then validate result cross bank viewing history is "validate viewing table"

    Scenario: TC003_003 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลมากกว่า 1  Field - Field  หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field  เลขที่บัญชีธนาคาร : Exact match Data - Field  ธนาคารเจ้าของบัญชี  : ทุกธนาคาร (ALL)  
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_003"
      Then validate result cross bank viewing history is "validate viewing table"

    Scenario: TC003_004 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลมากกว่า 1  Field - Field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data - Field ธนาคารเจ้าของบัญชี : Exact match Data 
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_004"
      Then validate result cross bank viewing history is "validate viewing table"

    Scenario: TC003_005 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลมากกว่า 1  Field - Field  เลขที่บัญชีธนาคาร : Exact match Data - Field  ธนาคารเจ้าของบัญชี  : Exact match Data
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_005"
      Then validate result cross bank viewing history is "have a value in table"

    Scenario: TC003_006 ตรวจสอบการค้นหาด้วยการกรอกข้อมูล 1  Field - Field  หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID) : Exact match Data
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_006"
      Then validate result cross bank viewing history is "validate viewing table"

    Scenario: TC003_007
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "TC003_007"
      Then validate result cross bank viewing history is "have a value in table"

    Scenario: TC003_020 ตรวจสอบการ Sortable field หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID)
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "click searching account number"
      Then validate result cross bank viewing history is "click soft bankcaseID validate viewing table"

    Scenario: TC003_021 ตรวจสอบการ Sortable field วันและเวลาเข้าชมข้อมูล
      And go to menu cross-bank-viewing-history
      Then should be display cross bank viewing history case searching preview page
      Then QueryData All Field with Viewing History
      Then Searching Viewing History with case "click searching bankcaseID"
      Then validate result cross bank viewing history is "click soft data date validate viewing table"