Feature: Add sub case transaction ซ้ำ


    Scenario: Call API HelpCheck
        Given Delete BankCaseIDArray "25660509BBL00011"
    Scenario: Add sub case โดยระบุ ชื่อผู้ต้องสงสัย, นามสกุลผู้ต้องสงสัย, เลขที่บัญชีผู้ต้องสงสัย, Bank code, วันที่เสียหาย ของ Receiver ซ้ำกับรอบแรก และ เวลาที่เสียหาย ไม่ซ้ำกัน
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-transition-same"
      And confirm to create master case     
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse2-From-BBL-transtion-same"
      And confirm to create sub case
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse3-From-BBL-transtion-same"
      And confirm to create sub case  
      And click edit first record
      And should be validate display receiver money tranfer "/Production_incident/TS001_001.json" and row is "2"
  
    Scenario: Add sub case โดยระบุ เลขที่บัญชีผู้ต้องสงสัย, Bank code,วันที่เสียหาย ของ Receiver ซ้ำกับรอบแรก และ ชื่อผู้ต้องสงสัย, นามสกุลผู้ต้องสงสัย, เวลาที่เสียหาย ไม่ซ้ำกัน
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-transition-same"
      And confirm to create master case      
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse2-From-BBL-transtion-same"
      And confirm to create sub case
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse3-From-BBL-transtion-same"
      And confirm to create sub case  
      And click edit first record
      And should be validate display receiver money tranfer "/Production_incident/TS001_002.json" and row is "2"

    Scenario:Add sub case โดยระบุ เลขที่บัญชีผู้ต้องสงสัย, Bank code, เวลาที่เสียหาย ของ Receiver ซ้ำกับรอบแรก
      Given Delete BankCaseIDArray "25660509BBL00011"
      Given login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-transition-same"
      And confirm to create master case     
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse2-From-BBL-transtion-same"
      And confirm to create sub case
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse2-From-BBL-transtion-same"
      And click to create sub case
      And should be display popup subcase error message is "txn_payer_transition_same"
