Feature: Create Sub Case Negative of Case Description -> Excel Section 1

  As a valid user
  I want to validate negative case of create sub case

  Background: Login to ITMX Portal by BBL Bank
    Given login ITMX web portal by BBL account
    And search bank case id "25660505CMBT00008"
    # And search bank case id NFT "25660505CMBT00008"
    Then click add sub case first row

    Scenario: TC-CFR-NGT-SUB-001 As a MBs, not able to create sub case with bank case id empty
      Given upload file sub case negative "bankCaseIdEmpty_Tp_Sub_V14.2"
      Then should be display popup subcase error message is "bankcase_invalid"
