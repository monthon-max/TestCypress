Feature: แก้ไขรายละเอียดเคส วันที่แจ้งความ

    Scenario: TC-CFR-UPDATE_037 As a Sender Bank (no sub case), able to update date of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police date to "26" value
      Then should be display police date on update page is "2566-03-26"
      And edit police date back to the original value "26"

    # Scenario: TC-CFR-UPDATE_038 As a Sender Bank (no sub case), NOT able to update date of police report invalid format(ค.ศ) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "26032023" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_039 As a Sender Bank (no sub case),  NOT able to update date of police report invalid format (ddmmyy) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "260366" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_040 As a Sender Bank (no sub case), able to update date of police report is EMPTY on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "EMPTY" value
    #   Then should be display police date on update page is "EMPTY"
    #   And edit police date back to the original value "26042566"

    Scenario: TC-CFR-UPDATE_041 As a Receving Bank (no sub case), NOT able to update date of police report on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When should be display police date on update page is "2566-04-26"

    Scenario: TC-CFR-UPDATE_042 As a Sender Bank (have sub case), able to update date of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police date to "26" value
      Then should be display police date on update page is "2566-03-26"
      And edit police date back to the original value "26"

    # Scenario: TC-CFR-UPDATE_043 As a Sender Bank (have sub case), NOT able to update date of police report invalid format(ค.ศ) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "26032023" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_044 As a Sender Bank (have sub case),  NOT able to update date of police report invalid format(ddmmyy) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "260366" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_045 As a Sender Bank (have sub case), able to update date of police report is EMPTY on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "EMPTY" value
    #   Then should be display police date on update page is "EMPTY"
    #   And edit police date back to the original value "26042566"
    Scenario: TC-CFR-UPDATE_046 As a Receving Bank (have sub case), NOT able to update date of police report on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When should be display police date on update page is "2566-04-26"

    Scenario: TC-CFR-UPDATE_047 As a Same Banks of Sender&Receiver (no sub case), able to update date of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police date to "26" value
      Then should be display police date on update page is "2566-03-26"
      And edit police date back to the original value "26"
    # Scenario: TC-CFR-UPDATE_048 As a Same Banks of Sender&Receiver (no sub case), NOT able to update date of police report invalid format(ค.ศ) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "26032023" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_049 As a Same Banks of Sender&Receiver (no sub case),  NOT able to update date of police report invalid format(ddmmyy) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "260366" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_050 As a Same Banks of Sender&Receiver (no sub case), able to update date of police report is EMPTY on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "EMPTY" value
    #   Then should be display police date on update page is "EMPTY"
    #   And edit police date back to the original value "26042566"
 
    Scenario: TC-CFR-UPDATE_051 As a Same Banks of Sender&Receiver (have sub case), able to update date of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police date to "26" value
      Then should be display police date on update page is "2566-03-26"
      And edit police date back to the original value "26"

    # Scenario: TC-CFR-UPDATE_052 As a Same Banks of Sender&Receiver (have sub case), NOT able to update date of police report invalid format(ค.ศ) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "26032023" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_053 As a Same Banks of Sender&Receiver (have sub case),  NOT able to update date of police report invalid format(ddmmyy) on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "260366" invalid value
    #   Then should be disable dialog error police date of master case
    #   And should be display police date on update page is "26/04/2566"

    # Scenario: TC-CFR-UPDATE_054 As a Same Banks of Sender&Receiver (have sub case), able to update date of police report is EMPTY on web portal
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit police date to "EMPTY" value
    #   Then should be display police date on update page is "EMPTY"
    #   And edit police date back to the original value "26042566"