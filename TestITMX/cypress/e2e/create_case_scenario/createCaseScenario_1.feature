Feature: ในกรณีผู้เสียหายมี 1 บัญชี โอนไปต่างธนาคาร โดยมีบัญชีม้า 4 แถว 

  As a valid user
  I want to validate case of create master case
    Scenario: Call API Delete BankCaseID
          Given Delete BankCaseIDArray "25660505CMBT00001"
          # Given Delete BankCaseIDArray "25670320MHCB01001,25670327CMBT09999,25670327MHCB01001,25670327MHCB01002"
          # Given Delete BankCaseIDArray "25670907BBL09999,25670907BBL09998,25670907BBL09997"
          # Given Add Master Case "/scenario1/AddMaster.xlsx"
          # Given Add sub Case "/scenario1/AddSub1.xlsx" and "25670907BBL00001" and AccountID "19000000003" and BankCode "002"
          # Given Add sub Case "/scenario1/AddSub1-1.xlsx" and "25670907BBL00001" and AccountID "19000000004"
          # Given Testfile

    Scenario: TS-CFR-001 As a CMBT Bank, able to create master case to horse1 MHCB
      Given login ITMX web portal by CMBT user
      And go to menu create master case by excel file
      When upload file positive "/scenario1/Horse1-NewCase-From-CMBT"
      Then should be display master case preview page of "scenario1" with valid description
      And view detail of the transaction "scenario1"
      And view detail of the sub transaction 1 "scenario1"
      And confirm to create master case

    Scenario: TS-CFR-002 As a MHCB Bank, able to create sub case to horse2 BBL
    Given login ITMX web portal by MHCB user
    And search result with case id "25660505CMBT00001" and to account number "1000000039"
      And add sub case first record
    When add sub case by excel file "/scenario1/Horse2-From-MHCB-TO-BBL"
    Then should be display sub case horse1 mhcb to bbl preview page of "scenario1"
    And view sub case detail of the transaction horse2 mhcb to bbl "scenario1"
    And view sub case detail the transaction of horse3 bbl "scenario1"
    And confirm to create sub case

    Scenario: TS-CFR-003 As a BBL Bank, able to create sub case to horse3 KBNK
    Given login ITMX web portal by BBL user
    And search result with case id "25660505CMBT00001" and to account number "10000000002"
      And add sub case first record
    When add sub case by excel file "/scenario1/Horse3-From-BBL-TO-KBNK"
    Then should be display sub case horse2 bbl to kbank preview page of "scenario1"
    And view sub case detail of the transaction horse2 bbl to kbank "scenario1"
    And view sub case detail the transaction of horse3 kbank "scenario1"
    And confirm to create sub case

    Scenario: TS-CFR-004 As a KBNK Bank, able to create sub case to horse4 KTB
    Given login ITMX web portal by KBNK user
    And search result with case id "25660505CMBT00001" and to account number "19000000004"
      And add sub case first record
    When add sub case by excel file "/scenario1/Horse4-From-KBNK-TO-KTB"
    Then should be display sub case horse3 kbnk to ktb preview page of "scenario1"
    And view sub case detail the transaction of horse4 ktb "scenario1"
    And confirm to create sub case

    Scenario: TS-CFR-005 As a KTB Bank, able to create sub case to horse5 BAY
    Given login ITMX web portal by KTB user
    And search result with case id "25660505CMBT00001" and to account number "19000000006"
      And add sub case first record
    When add sub case by excel file "/scenario1/Horse5-From-KTB-TO-BAY"
    Then should be display sub case horse4 ktb to bay preview page of "scenario1"
    And view sub case detail of the transaction horse4 ktb to bay "scenario1"
    And view sub case detail the transaction of horse5 bay "scenario1"
    And confirm to create sub case

    Scenario: TS-CFR-006 As a BAY Bank, able to create sub case to horse6 BAY
    Given login ITMX web portal by BAY user
    And search result with case id "25660505CMBT00001" and to account number "19000000025"
      And add sub case first record
    When add sub case by excel file "/scenario1/Horse6-From-BAY-TO-BAY_ACC_2"
    Then should be display sub case horse5 bay to bay preview page of "scenario1"
    And view sub case detail of the transaction horse5 bay to bay "scenario1"
    And view sub case detail the transaction of horse6 bay "scenario1"
    And confirm to create sub case

    Scenario: TS-CFR-007 As a BAY Bank, able to create sub case to horse7 BAY
    Given login ITMX web portal by BAY user
    And search result with case id "25660505CMBT00001" and to account number "19200000025"
      And add sub case first record
    When add sub case by excel file "/scenario1/Horse7-From-BAY_ACC_2-TO-BAY_ACC_3"
    Then should be display sub case horse6 bay to bay preview page of "scenario1"
    And view sub case detail of the transaction horse6 bay to bay "scenario1"
    And view sub case detail the transaction of horse7 bay "scenario1"
    And confirm to create sub case