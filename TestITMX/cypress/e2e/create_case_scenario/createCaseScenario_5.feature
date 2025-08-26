Feature: ในกรณีผู้เสียหายมีมากกว่า 1 บัญชี แต่ละบัญชีโอนไปหลายธนาคาร โดยมีบัญชีม้า 2 แถว M-M

  As a valid user

    Scenario: Call API HelpCheck
          Given Delete BankCaseIDArray "25660509GHB00003"
          # Given Test API Request Scenario5
    Scenario: TS-CFR-001 As a GHB Bank, able to create master case to horse1 BAY and UOBT
      And login ITMX web portal by GHB account
      And go to menu create master case by excel file
      When upload file positive "/scenario5/Horse1-NewCase-From-GHB"
      Then  should be display master case preview page of "scenario5" GHB to horse2 UOBT and BAY with valid description
      Then  view detail of the transaction from ghb account 1 CaseSt05_001 "scenario5"
      Then view detail of the sub transaction 1 uobt "scenario5"
      Then view detail of the sub transaction 1 bay "scenario5" 
      Then  view detail of the transaction from ghb account 2 CaseSt05_002 "scenario5"
      Then view detail of the sub transaction 2 uobt "scenario5"
      Then view detail of the sub transaction 2 bay "scenario5" 
      And confirm to create master case

    Scenario: TS-CFR-002 As a UOBT Bank, able to create sub case to horse2 KBNK
      Given login ITMX web portal by UOBT account
      And search result with case id "25660509GHB00003" with to account number "19000000024" and from account number "1900000033"
      And add sub case first record
      When add sub case by excel file "/scenario5/Horse2-From-UOBT-TO-KBNK"
      Then should be display sub case horse2 uobt to kbnk acc preview page of "scenario5"
      And view sub case detail of the transaction horse3 uobt to kbnk 1 "scenario5"
      And view sub case detail the transaction of horse2 kbnk1 "scenario5"
      And confirm to create sub case

    Scenario: TS-CFR-003 As a BAY Bank, able to create sub case to horse2 GHB
      Given login ITMX web portal by BAY user
      And search result with case id "25660509GHB00003" with to account number "19000000025" and from account number "1900000233"
      And add sub case first record
      When add sub case by excel file "/scenario5/Horse2-From-BAY-TO-GHB2"
      Then should be display sub case horse Bay to ghb acc preview page of "scenario5"
      And view sub case detail of the transaction horse3 bay to ghb 1 "scenario5"
      And view sub case detail the transaction of horse2 ghb1 "scenario5"
      And confirm to create sub case