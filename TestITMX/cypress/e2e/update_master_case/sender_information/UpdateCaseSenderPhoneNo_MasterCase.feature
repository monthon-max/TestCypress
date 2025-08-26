Feature: แก้ไขข้อมูลผู้เสียหาย: ชื่อผู้เสียหาย

    Scenario: TC-CFR-UPDATE_125 As a Sender Bank (no sub case), able to update sender phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is ""
      And should be display sender phone on view page is ""
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_126 As a Sender Bank (no sub case), able to update sender phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display sender phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_127 As a Sender Bank (no sub case), NOT able to update sender phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "080000002299999999999999999924493833334" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "08000000229999999999999999992449383"
      And should be display sender phone on view page is "08000000229999999999999999992449383"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_128 As a Receving Bank (no sub case), NOT able to update sender phone on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender phone on update page is "0800000022"


    Scenario: TC-CFR-UPDATE_129 As a Sender Bank (have sub case), able to update sender phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is ""
      And should be display sender phone on view page is ""
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_130 As a Sender Bank (have sub case), able to update sender phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display sender phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_131 As a Sender Bank (have sub case), NOT able to update sender phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "080000002299999999999999999924493833334" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "08000000229999999999999999992449383"
      And should be display sender phone on view page is "08000000229999999999999999992449383"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_132 As a Receving Bank (have sub case), NOT able to update sender phone on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender phone on update page is "0800000022"

    Scenario: TC-CFR-UPDATE_133 As a Same Banks of Sender&Receiver (no sub case), able to update sender phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is ""
      And should be display sender phone on view page is ""
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_134 As a Same Banks of Sender&Receiver (no sub case), able to update sender phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display sender phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_135 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "080000002299999999999999999924493833334" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "08000000229999999999999999992449383"
      And should be display sender phone on view page is "08000000229999999999999999992449383"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_136 As a Same Banks of Sender&Receiver (have sub case), able to update sender phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is ""
      And should be display sender phone on view page is ""
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_137 As a Same Banks of Sender&Receiver (have sub case), able to update sender phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display sender phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update sender phone no back to original "0800000022"

    Scenario: TC-CFR-UPDATE_138 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender phone no is "080000002299999999999999999924493833334" value
      Then click edit data
      And close update page
      And should be display sender phone on update page is "08000000229999999999999999992449383"
      And should be display sender phone on view page is "08000000229999999999999999992449383"
      Then update sender phone no back to original "0800000022"
