Feature: แก้ไขข้อมูลผู้ต้องสงสัย: หมายเลขโทรศัพท์

## Sender no sub case ##
    Scenario: TC-CFR-UPDATE_249 As a Sender Bank (no sub case), able to update receiver phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is ""
      And should be display receiver phone on view page is ""
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_250 As a Sender Bank (no sub case), able to update receiver phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_251 As a Sender Bank (no sub case), NOT able to update receiver phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse24493833334q" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      Then update receiver phone no back to original "0800000039"

## Receiver no sub case ##

    Scenario: TC-CFR-UPDATE_252 As a Receiver Bank (no sub case), able to update receiver phone no is EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is ""
      And should be display receiver phone on view page is ""
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_253 As a Receiver Bank (no sub case), able to update receiver phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_254 As a Receiver Bank (no sub case), NOT able to update receiver phone no more then 35 digit on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse24493833334q" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      Then update receiver phone no back to original "0800000039"

## Sender have sub case ##
    Scenario: TC-CFR-UPDATE_255 As a Sender Bank (have sub case), NOT able to update receiver phone on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display receiver phone on update page is "0800000039"

## Receiver have sub case ##

    Scenario: TC-CFR-UPDATE_256 As a Receiver Bank (have no sub case), able to update receiver phone no is EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is ""
      And should be display receiver phone on view page is ""
      Then update receiver phone no back to original "0800000039"


    Scenario: TC-CFR-UPDATE_257 As a Receiver Bank (have sub case), able to update receiver phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_258 As a Receiver Bank (have sub case), NOT able to update receiver phone no more then 35 digit on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse24493833334q" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      Then update receiver phone no back to original "0800000039"

##  Same Banks of Sender & Receiver no sub case ##
  Scenario: TC-CFR-UPDATE_259 As a Receiver Bank (no sub case), able to update receiver phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is ""
      And should be display receiver phone on view page is ""
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_260 As a Receiver Bank (no sub case), able to update receiver phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_261 As a Receiver Bank (no sub case), NOT able to update receiver phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse24493833334q" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      Then update receiver phone no back to original "0800000039"

##  Same Banks of Sender & Receiver have sub case ##
  Scenario: TC-CFR-UPDATE_262 As a Receiver Bank (have sub case), able to update receiver phone no is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is ""
      And should be display receiver phone on view page is ""
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_263 As a Receiver Bank (have sub case), able to update receiver phone no is TH/ENG/Numberic/pecial Character  on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse"
      Then update receiver phone no back to original "0800000039"

    Scenario: TC-CFR-UPDATE_264 As a Receiver Bank (have sub case), NOT able to update receiver phone no more then 35 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver phone no is "0800000022-๓๒๑#$%_ำพำไeraddfse24493833334q" value
      Then click edit data
      And close update page
      And should be display receiver phone on update page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      And should be display receiver phone on view page is "0800000022-๓๒๑#$%_ำพำไeraddfse24493"
      Then update receiver phone no back to original "0800000039"