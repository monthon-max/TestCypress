Feature: แก้ไขรายละเอียดเคส วันที่แจ้งความ


    Scenario: TC-CFR-UPDATE_055 As a Sender Bank (no sub case), able to update time of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police time to minute 03 and secoud 05
      Then should be display police time on update page is "03:05"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_056 As a Sender Bank (no sub case), able to update time of police report is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police time to empty
      Then should be display police time on update page is "00:00"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_057 As a Receving Bank (have sub case), NOT able to update time of police report on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display police time on update page is "09:30"

    Scenario: TC-CFR-UPDATE_058 As a Sender Bank (have sub case), able to update time of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police time to minute 03 and secoud 05
      Then should be display police time on update page is "03:05"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_059 As a Sender Bank (have sub case), able to update time of police report is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police time to empty
      Then should be display police time on update page is "00:00"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_060 As a Receving Bank (have sub case), NOT able to update time of police report on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display police time on update page is "09:30"

    Scenario: TC-CFR-UPDATE_061 As a Same Banks of Sender&Receiver (no sub case), able to update time of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police time to minute 03 and secoud 05
      Then should be display police time on update page is "03:05"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_062 As a Same Banks of Sender&Receiver (no sub case), able to update time of police report is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police time to empty
      Then should be display police time on update page is "00:00"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_063 As a Same Banks of Sender&Receiver (have sub case), able to update time of police report valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police time to minute 03 and secoud 05
      Then should be display police time on update page is "03:05"
      And edit police time back to original minute 09 and secoud 30

    Scenario: TC-CFR-UPDATE_064 As a Same Banks of Sender&Receiver (have sub case), able to update time of police report is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police time to empty
      Then should be display police time on update page is "00:00"
      And edit police time back to original minute 09 and secoud 30