Feature: ในกรณีผู้เสียหายมีมากกว่า 1 บัญชี  โอนไปธนาคารเดียวกัน  โดยมีบัญชีม้า 2 แถว (M to 1)

  As a valid user

    Scenario: Call API HelpCheck
          Given Delete BankCaseIDArray "25660509MEGA00002"
          # Given Test API Request Scenario4
    Scenario: TS-CFR-001 As a MEGA Bank, able to create master case to horse1 MEGA
      And login ITMX web portal by MEGA account
      And go to menu create master case by excel file
      When upload file positive "/scenario4/Horse1-NewCase-From-MEGA"
      Then  should be display master case preview page of "scenario4" to horse1 MEGA with valid description
      Then  view detail of the transaction from mega CaseSt04_001 "scenario4"
      Then view detail of the sub transaction 1 mega "scenario4"
      Then  view detail of the transaction from mega CaseSt04_002 "scenario4"
      Then view detail of the sub transaction 2 mega "scenario4"
      And confirm to create master case

    Scenario: TS-CFR-002 As a MEGA Bank, able to create sub case to horse2 KBNK
      Given login ITMX web portal by MEGA account
      And search result with case id "25660509MEGA00002" with to account number "19000000326" and from account number "1900000026"
      And add sub case first record
      When add sub case by excel file "/scenario4/Horse2-From-MEGA-TO-MEGA"
      Then should be display sub case horse2 mega to mega acc preview page of "scenario4"
      And view sub case detail of the transaction horse3 mega to kbnk 1 "scenario4"
      And view sub case detail the transaction of horse3 kbnk "scenario4"
      And confirm to create sub case

    Scenario: TS-CFR-003 As a KBNK Bank, able to create sub case to horse3 GSB
      Given login ITMX web portal by KBNK user
      And search result with case id "25660509MEGA00002" and to account number "1910000004"
      And add sub case first record
      When add sub case by excel file "/scenario4/Horse3-From-KBNK-TO-GSB"
      Then should be display sub case horse3 kbnk to gsb 1 acc preview page of "scenario4"
      And view sub case detail of the transaction horse3 kbnk to gsb 1 "scenario4"
      And view sub case detail the transaction of horse3 gsb "scenario4"
      And confirm to create sub case