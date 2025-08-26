Feature: แก้ไข ความสัมพันธ์กับผู้โอน

    Scenario: TC-CFR-UPDATE_185 As a Sender Bank (no sub case), able to update contact relation on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact relation is "คู่สมรส" value
      Then click edit data
      And close update page
      And should be display contact person on update page is "คู่สมรส"
      Then update contact person back to original "ญาติ"

    Scenario: TC-CFR-UPDATE_186 As a Receiver Bank (no sub case), NOT able to update contact relation on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display contact relation on update page is "ญาติ"

    Scenario: TC-CFR-UPDATE_187 As a Sender Bank (have sub case), able to update contact relation on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact relation is "คู่สมรส" value
      Then click edit data
      And close update page
      And should be display contact person on update page is "คู่สมรส"
      Then update contact person back to original "ญาติ"

    Scenario: TC-CFR-UPDATE_188 As a Receiver Bank (have sub case), NOT able to update contact relation on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display contact relation on update page is "ญาติ"

    Scenario: TC-CFR-UPDATE_189  As a Same Banks of Sender&Receiver (no sub case), able to update contact relation on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact relation is "คู่สมรส" value
      Then click edit data
      And close update page
      And should be display contact person on update page is "คู่สมรส"
      Then update contact person back to original "ญาติ"

    Scenario: TC-CFR-UPDATE_190  As a Same Banks of Sender&Receiver (have sub case), able to update contact relation on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact relation is "คู่สมรส" value
      Then click edit data
      And close update page
      And should be display contact person on update page is "คู่สมรส"
      Then update contact person back to original "ญาติ"
