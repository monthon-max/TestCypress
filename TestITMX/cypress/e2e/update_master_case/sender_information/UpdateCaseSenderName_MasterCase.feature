Feature: แก้ไขข้อมูลผู้เสียหาย: ชื่อผู้เสียหาย


    Scenario: TC-CFR-UPDATE_065 As a Sender Bank (no sub case), NOT able to update sender name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender name is "EMPTY" value
      Then should be display error sender name on screen
      And click edit data with invalid data
      And should be display popup error sender name on update page
      And should be display sender name on update page is "CMBT"
      And should be display sender name on view page is "CMBT"

    Scenario: TC-CFR-UPDATE_066 As a Sender Bank (no sub case), NOT able to update sender name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "more_then_256"
      And should be display sender name on view page is "more_then_256"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_067 As a Sender Bank (no sub case), able to update sender name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display sender name on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_068 As a Receving Bank (no sub case), NOT able to update sender name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender name on update page is "CMBT"

    Scenario: TC-CFR-UPDATE_069 As a Sender Bank (have sub case), NOT able to update sender name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender name is "EMPTY" value
      Then should be display error sender name on screen
      And click edit data with invalid data
      And should be display popup error sender name on update page
      And should be display sender name on update page is "CMBT"
      And should be display sender name on view page is "CMBT"

    Scenario: TC-CFR-UPDATE_070 As a Sender Bank (have sub case), NOT able to update sender name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "more_then_256"
      And should be display sender name on view page is "more_then_256"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_071 As a Sender Bank (have sub case), able to update sender name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display sender name on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_072 As a Receving Bank (have sub case), NOT able to update sender name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender name on update page is "CMBT"

    Scenario: TC-CFR-UPDATE_073 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender name is "EMPTY" value
      Then should be display error sender name on screen
      And click edit data with invalid data
      And should be display popup error sender name on update page
      And should be display sender name on update page is "CMBT"
      And should be display sender name on view page is "CMBT"

    Scenario: TC-CFR-UPDATE_074 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "more_then_256"
      And should be display sender name on view page is "more_then_256"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_075 As a Same Banks of Sender&Receiver (no sub case), able to update sender name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display sender name on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_076 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender name is "EMPTY" value
      Then should be display error sender name on screen
      And click edit data with invalid data
      And should be display popup error sender name on update page
      And should be display sender name on update page is "CMBT"
      And should be display sender name on view page is "CMBT"

    Scenario: TC-CFR-UPDATE_077 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "more_then_256"
      And should be display sender name on view page is "more_then_256"
      Then update sender name back to original "CMBT"

    Scenario: TC-CFR-UPDATE_078 As a Same Banks of Sender&Receiver (have sub case), able to update sender name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display sender name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display sender name on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update sender name back to original "CMBT"