Feature: ในกรณีผู้เสียหายมีมากกว่า 1 บัญชี โอนไปต่างธนาคาร  โดยมีบัญชีม้า 2 แถว   (M to 1)

  As a valid user

    Scenario: Call API HelpCheck
          Given Delete BankCaseIDArray "25660509BBL00011"
          # Given Test API Request Scenario3
    Scenario: TS-CFR-001 As a BBL Bank, able to create master case to horse1 SCB
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL"
      Then  should be display master case preview page of "scenario3" to horse1 SCB with valid description
      Then  view detail of the transaction from bbl CaseSt03_001 "scenario3"
      Then view detail of the sub transaction 1 SCB "scenario3"
      Then  view detail of the transaction from bbl CaseSt03_002 "scenario3"
      Then view detail of the sub transaction 2 SCB "scenario3"
      And confirm to create master case

    Scenario: TS-CFR-002 As a SCB Bank, able to create sub case to horse2 KBNK 2 Account
      Given login ITMX web portal by SCB user
      And search result with case id "25660509BBL00011" with from account number "19000000002"
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse2-From-SCB-TO-KBNK_2_ACCOUNT"
      Then should be display sub case horse1 scb to kbnk 2 acc preview page of "scenario3"
      And view sub case detail of the transaction horse1 scb to kbnk 2 acc "scenario3"
      And view sub case detail the transaction of horse2 lkbnk "scenario3"
      And view sub case detail the transaction of horse2 2kbnk "scenario3"
      And confirm to create sub case

    Scenario: TS-CFR-003 As a KBNK Bank, able to create sub case to horse3 BBL
      Given login ITMX web portal by KBNK user
      And search result with case id "25660509BBL00011" and to account number "1000000004"
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse3-From-KBNK-Account_1-TO-BBL"
      Then should be display sub case horse3 kbnk to bbl 1 acc preview page of "scenario3"
      And view sub case detail of the transaction horse2 kbnk to bbl 1 acc 1 "scenario3"
      And view sub case detail the transaction of horse3 1bbl "scenario3"
      And confirm to create sub case
      

    Scenario: TS-CFR-004 As a KBNK Bank, able to create sub case to horse3 BBL2
      Given login ITMX web portal by KBNK user
      And search result with case id "25660509BBL00011" and to account number "1000000204"
      And add sub case first record
      When add sub case by excel file "/scenario3/Horse3-From-KBNK-Account_2-TO-BBL"
      Then should be display sub case horse3 kbnk to bbl 2 acc preview page of "scenario3"
      And view sub case detail of the transaction horse2 kbnk to bbl 1 acc 2 "scenario3"
      And view sub case detail the transaction of horse3 2bbl "scenario3"
      And confirm to create sub case