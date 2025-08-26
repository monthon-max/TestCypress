Feature: แก้ไขข้อมูลผู้เสียหาย: เบอร์โทรสับผู้ติดต่อ

    Scenario: TC-CFR-UPDATE_173 As a Sender Bank (no sub case), able to update contact phone is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is ""
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_174 As a Sender Bank (no sub case), able to update contact phone eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "0972490000,ต่อ 1020-et&903" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "0972490000,ต่อ 1020-et&903"
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_175 As a Sender Bank (no sub case), NOT able to update contact phone more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "more_then_35" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "more_then_35"
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_176 As a Receving Bank (no sub case), NOT able to update contact phone on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display contact phone on update page is "0972490000"

    Scenario: TC-CFR-UPDATE_177 As a Sender Bank (have sub case), able to update contact phone is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is ""
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_178 As a Sender Bank (have sub case), able to update contact phone eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "0972490000,ต่อ 1020-et&903" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "0972490000,ต่อ 1020-et&903"
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_179 As a Sender Bank (have sub case), NOT able to update contact phone more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "more_then_35" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "more_then_35"
      Then update contact phone back to original "0972490000"
    Scenario: TC-CFR-UPDATE_180 As a Receving Bank (have sub case), NOT able to update contact phone on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display contact phone on update page is "0972490000"
    Scenario: TC-CFR-UPDATE_181 As a Same Banks of Sender&Receiver (no sub case), able to update contact phone is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is ""
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_182 As a Same Banks of Sender&Receiver (no sub case), able to update contact phone eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "0972490000,ต่อ 1020-et&903" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "0972490000,ต่อ 1020-et&903"
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_183 As a Same Banks of Sender&Receiver (no sub case), NOT able to update contact phone more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "more_then_35" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "more_then_35"
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_184 As a Same Banks of Sender&Receiver (have sub case), able to update contact phone is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "EMPTY" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is ""
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_185 As a Same Banks of Sender&Receiver (have sub case), able to update contact phone eng/thai/numberic/Special Character on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "0972490000,ต่อ 1020-et&903" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "0972490000,ต่อ 1020-et&903"
      Then update contact phone back to original "0972490000"

    Scenario: TC-CFR-UPDATE_186 As a Same Banks of Sender&Receiver (have sub case), NOT able to update contact phone more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit contact phone is "more_then_35" value
      Then click edit data
      And close update page
      And should be display contact phone on update page is "more_then_35"
      Then update contact phone back to original "0972490000"