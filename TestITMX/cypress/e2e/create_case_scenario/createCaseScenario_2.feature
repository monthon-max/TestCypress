Feature: กรณีผู้เสียหายมี 1 บัญชี โอนไปหลายธนาคาร โดยมีบัญชีม้า 2 แถว

  As a valid user
    บัญชีผู้ต้องสงสัยอยู่ในธนาคารเดียวกันกับผู้เสียหาย 
    บัญชีผู้ต้องสงสัยเป็นบัญชีเดียวกันกับม้าแถว 1 
    บัญชีผู้ต้องสงสัยอยู่ในธนาคารเดียวกันกับม้าแถว 2

    Scenario: Call API HelpCheck
          # Given Test API Request Scenario2
          Given Delete BankCaseIDArray "25660503TSCO00001"

    Scenario: TS-CFR-001 As a TISCO Bank, able to create master case to horse1 KKP and LHB
      # Given remove master case of "scenario2"
      # Given Test API Request Scenario2
      And login ITMX web portal by TSCO user
      And go to menu create master case by excel file
      When upload file positive "/scenario2/Horse1-NewCase-From-TSCO"
      Then should be display master case preview page of "scenario2" to horse1 KKP and LHB with valid description
      And view detail of the transaction from tisco "scenario2"
      And view detail of the sub transaction 1 kkp "scenario2"
      And view detail of the sub transaction 2 lhb "scenario2"
      And confirm to create master case

    Scenario: TS-CFR-002 As a KKP Bank, able to create sub case to horse2 LHB AND SCB
      Given login ITMX web portal by KKP user
      And search result with case id "25660503TSCO00001" and to account number "1000000069"
      And add sub case first record
      When add sub case by excel file "/scenario2/Horse2-From-KKP-TO-LHB_AND_SCB"
      Then should be display sub case horse1 kkp to lhb and scb preview page of "scenario2"
      And view sub case detail of the transaction horse1 kkp to lhb and scb "scenario2"
      And view sub case detail the transaction of horse2 lhb "scenario2"
      And view sub case detail the transaction of horse2 scb "scenario2"
      And confirm to create sub case

    Scenario: TS-CFR-003 As a KKP Bank, able to create sub case to horse2 KKP AND TSCO
      Given login ITMX web portal by LHB user
      And search result with case id "25660503TSCO00001" and to account number "1000000073"
      And add sub case first record
      When add sub case by excel file "/scenario2/Horse2-From-LHB-TO-KKP_AND_TSCO"
      Then should be display sub case horse1 lhb to kkp and tisco preview page of "scenario2"
      And view sub case detail of the transaction horse1 lhb to kkp and tisco "scenario2"
      And view sub case detail the transaction of horse2 kkp "scenario2"
      And view sub case detail the transaction of horse2 tisco "scenario2"
      And confirm to create sub case

    Scenario: TS-CFR-004 As a KKP Bank, able to create sub case to horse3 KKP (LHB-KKB-KKB)
      Given login ITMX web portal by KKP user
      And search result with case id "25660503TSCO00001" with to account number "1000000269" and from account number "1000000073"
      And add sub case first record
      When add sub case by excel file "/scenario2/Horse3-From-KKP-TO-KKP"
      Then should be display sub case horse2 kkp to kkp difference account preview page of "scenario2"
      And view sub case detail of the transaction horse2 kkp to kkp difference account "scenario2"
      And view sub case detail the transaction of horse3 kkp "scenario2"
      And confirm to create sub case


    Scenario: TS-CFR-005 As a LHB Bank, able to create sub case to horse3 TSCO (KKP-LHB-TSCO)
      Given login ITMX web portal by LHB user
      And search result with case id "25660503TSCO00001" with to account number "1000000073" and from account number "1000000069"
      And add sub case first record
      When add sub case by excel file "/scenario2/Horse3-From-LHB-TO-TSCO"
      Then should be display sub case horse2 lhb to tsco preview page of "scenario2"
      And view sub case detail of the transaction horse2 lhb to tsco "scenario2"
      And view sub case detail the transaction of horse3 tsco "scenario2"
      And confirm to create sub case

    Scenario: TS-CFR-006 As a SCB Bank, able to create sub case to horse3 TSCO (KKP-SCB-TSCO)
      Given login ITMX web portal by SCB user
      And search result with case id "25660503TSCO00001" with to account number "1000000014" and from account number "1000000069"
      And add sub case first record
      When add sub case by excel file "/scenario2/Horse3-From-SCB-TO-TSCO"
      Then should be display sub case horse2 scb to tsco preview page of "scenario2"
      And view sub case detail of the transaction horse2 scb to tsco "scenario2"
      And view sub case detail the transaction of horse3 tsco acccout 2 "scenario2"
      And confirm to create sub case

    Scenario: TS-CFR-007 As a TISCO Bank, able to create sub case to horse3 KKP (LHB-TISCO-KKP)
      Given login ITMX web portal by TSCO user
      And search result with case id "25660503TSCO00001" with to account number "1000000267" and from account number "1000000073"
      And add sub case first record
      When add sub case by excel file "/scenario2/Horse3-From-TSCO-TO-KKP"
      Then should be display sub case horse2 tisco to kkp preview page of "scenario2"
      And view sub case detail of the transaction horse2 tisco to kkp "scenario2"
      And view sub case detail the transaction of horse3 kkp acccout 2 "scenario2"
      And confirm to create sub case