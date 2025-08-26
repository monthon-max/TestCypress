Feature: แก้ไขข้อมูลผู้เสียหาย: รายละเอียดเคส


    Scenario: TC-CFR-UPDATE_145 As a Sender Bank (no sub case), able to update case detail is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case detail is "EMPTY" value
      Then click edit data
      And close update page
      And should be display case detail on update page is ""
      And should be display case detail on view page is ""
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_146 As a Sender Bank (no sub case), able to update case detail eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case detail is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display case detail on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_147 As a Sender Bank (no sub case), NOT able to update case detail more then 1024 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case detail is "more_then_1024" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "more_then_1024"
      And should be display case detail on view page is "more_then_1024"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_148 As a Receving Bank (no sub case), NOT able to update case detail on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display case detail on update page is "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_149 As a Sender Bank (have sub case), able to update case detail is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case detail is "EMPTY" value
      Then click edit data
      And close update page
      And should be display case detail on update page is ""
      And should be display case detail on view page is ""
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_150 As a Sender Bank (have sub case), able to update case detail eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case detail is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display case detail on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_151 As a Sender Bank (have sub case), NOT able to update case detail more then 1024 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case detail is "more_then_1024" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "more_then_1024"
      And should be display case detail on view page is "more_then_1024"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_152 As a Receving Bank (have sub case), NOT able to update case detail on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display case detail on update page is "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_153 As a Same Banks of Sender&Receiver (no sub case), able to update case detail is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case detail is "EMPTY" value
      Then click edit data
      And close update page
      And should be display case detail on update page is ""
      And should be display case detail on view page is ""
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_154 As a Same Banks of Sender&Receiver (no sub case), able to update case detail eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case detail is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display case detail on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_155 As a Same Banks of Sender&Receiver (no sub case), NOT able to update case detail more then 1024 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case detail is "more_then_1024" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "more_then_1024"
      And should be display case detail on view page is "more_then_1024"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_156 As a Same Banks of Sender&Receiver (have sub case), able to update case detail is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case detail is "EMPTY" value
      Then click edit data
      And close update page
      And should be display case detail on update page is ""
      And should be display case detail on view page is ""
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_157 As a Same Banks of Sender&Receiver (have sub case), able to update case detail eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case detail is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      And should be display case detail on view page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_158 As a Same Banks of Sender&Receiver (have sub case), NOT able to update case detail more then 1024 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case detail is "more_then_1024" value
      Then click edit data
      And close update page
      And should be display case detail on update page is "more_then_1024"
      And should be display case detail on view page is "more_then_1024"
      Then update case detail back to original "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"
