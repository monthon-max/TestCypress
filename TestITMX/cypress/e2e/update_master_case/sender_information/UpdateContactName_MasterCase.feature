Feature: แก้ไขข้อมูลผู้เสียหาย: ชื่อ นามสกุลผู้ติดต่อ


    Scenario: TC-CFR-UPDATE_159 As a Sender Bank (no sub case), able to update contact name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact name is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact name on update page is ""
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_160 As a Sender Bank (no sub case), able to update contact name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_161 As a Sender Bank (no sub case), NOT able to update contact name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "more_then_256"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_162 As a Receving Bank (no sub case), NOT able to update contact name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display contact name on update page is "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_163 As a Sender Bank (have sub case), able to update contact name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact name is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact name on update page is ""
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_164 As a Sender Bank (have sub case), able to update contact name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_165 As a Sender Bank (have sub case), NOT able to update contact name more then 1024 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "more_then_256"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_166 As a Receving Bank (have sub case), NOT able to update contact name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display case detail on update page is "TESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTTTESTTTTTTT"

    Scenario: TC-CFR-UPDATE_167 As a Same Banks of Sender&Receiver (no sub case), able to update contact name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact name is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact name on update page is ""
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_168 As a Same Banks of Sender&Receiver (no sub case), able to update contact name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_169 As a Same Banks of Sender&Receiver (no sub case), NOT able to update contact name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "more_then_256"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_170 As a Same Banks of Sender&Receiver (have sub case), able to update contact name is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact name is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact name on update page is ""
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_171 As a Same Banks of Sender&Receiver (have sub case), able to update contact name eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact name is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "CMBT&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย"
      Then update contact name back to original "แม่น้ำ หนึ่ง"

    Scenario: TC-CFR-UPDATE_172 As a Same Banks of Sender&Receiver (have sub case), NOT able to update contact name more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact name is "more_then_256" value
      Then click edit data
      And close update page
      And should be display contact name on update page is "more_then_256"
      Then update contact name back to original "แม่น้ำ หนึ่ง"