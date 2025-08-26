Feature: แก้ไขรายละเอียดเคส การตรวจพบรายการ

    Scenario: TC-CFR-UPDATE_031 As a Sender Bank (no sub case), Not able to update type of detect transaction on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      Then should be diable field and display type of detect on update page is "ผู้เสียหายแจ้งเอง มาตรา 7"

    Scenario: TC-CFR-UPDATE_032 As a Receving Bank (no sub case), Not able to update type of detect transaction on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      Then should be diable field and display type of detect on update page is "ผู้เสียหายแจ้งเอง มาตรา 7"

    Scenario: TC-CFR-UPDATE_033 As a Sender Bank (have sub case), Not able to update type of detect transaction on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      Then should be diable field and display type of detect on update page is "ผู้เสียหายแจ้งเอง มาตรา 7"

    Scenario: TC-CFR-UPDATE_034 As a Receving Bank (have sub case), Not able to update type of detect transaction on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display type of detect on update page is "ผู้เสียหายแจ้งเอง มาตรา 7"

    Scenario: TC-CFR-UPDATE_035 As a Same Banks of Sender&Receiver (no sub case), Not able to update type of detect transaction on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display type of detect on update page is "ผู้เสียหายแจ้งเอง มาตรา 7"

      Scenario: TC-CFR-UPDATE_036 As a Same Banks of Sender&Receiver (have sub case), Not able to update type of detect transaction on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display type of detect on update page is "ผู้เสียหายแจ้งเอง มาตรา 7"