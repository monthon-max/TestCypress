Feature: แก้ไขรายละเอียดเคส หมายเลขแจ้งความ

    Scenario: TC-CFR-UPDATE_001 As a Sender Bank (no sub case), able to update police number to EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "EMPTY" value
      Then should be display police number on update page is "EMPTY"
      And should be display police number on view page is "EMPTY"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_002 As a Sender Bank (no sub case), NOT able to update police number more then 128 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "more_than_128" value
      Then should be display police number on update page is "more_than_128"
      And should be display police number on view page is "more_than_128"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_004 As a Sender Bank (no sub case), able to update police number to English value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL002123SDD1" value
      Then should be display police number on update page is "PL002123SDD1"
      And should be display police number on view page is "PL002123SDD1"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_005 As a Sender Bank (no sub case), able to update police number to Thai value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "กขค123SS01" value
      Then should be display police number on update page is "กขค123SS01"
      And should be display police number on view page is "กขค123SS01"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_006 As a Sender Bank (no sub case), able to update police number to special character value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL-:23119กขฯ_12" value
      Then should be display police number on update page is "PL-:23119กขฯ_12"
      And should be display police number on view page is "PL-:23119กขฯ_12"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_007 As a Sender Bank (no sub case), able to update police number to numberic value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "123457876543654" value
      Then should be display police number on update page is "123457876543654"
      And should be display police number on view page is "123457876543654"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_008 As a Receving Bank (no sub case), NOT able to update police number on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be display police number on update page is "PL100000001"
      And should be disable field police number on update page

    Scenario: TC-CFR-UPDATE_009 As a Sender Bank (have sub case), able to update police number to EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "EMPTY" value
      Then should be display police number on update page is "EMPTY"
      And should be display police number on view page is "EMPTY"
      And edit police number back to the original value "PL100000004"

    Scenario: TC-CFR-UPDATE_011 As a Sender Bank (have sub case), NOT able to update police number more then 128 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "more_than_128" value
      Then should be display police number on update page is "more_than_128"
      And should be display police number on view page is "more_than_128"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_012 As a Sender Bank (have sub case), able to update police number to English value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL002123SDD1" value
      Then should be display police number on update page is "PL002123SDD1"
      And should be display police number on view page is "PL002123SDD1"
      And edit police number back to the original value "PL100000004"

    Scenario: TC-CFR-UPDATE_013 As a Sender Bank (have sub case), able to update police number to Thai value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "กขค123SS01" value
      Then should be display police number on update page is "กขค123SS01"
      And should be display police number on view page is "กขค123SS01"
      And edit police number back to the original value "PL100000004"

    Scenario: TC-CFR-UPDATE_014 As a Sender Bank (have sub case), able to update police number to special character value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL-:23119กขฯ_12" value
      Then should be display police number on update page is "PL-:23119กขฯ_12"
      And should be display police number on view page is "PL-:23119กขฯ_12"
      And edit police number back to the original value "PL100000004"

    Scenario: TC-CFR-UPDATE_015 As a Sender Bank (have sub case), able to update police number to numberic value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit police number to "123457876543654" value
      Then should be display police number on update page is "123457876543654"
      And should be display police number on view page is "123457876543654"
      And edit police number back to the original value "PL100000004"

    Scenario: TC-CFR-UPDATE_016 As a Receving Bank (have sub case), NOT able to update police number on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be display police number on update page is "PL100000004"
      And should be disable field police number on update page

    Scenario: TC-CFR-UPDATE_017 As a Same Banks of Sender&Receiver (no sub case), able to update police number to EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "EMPTY" value
      Then should be display police number on update page is "EMPTY"
      And should be display police number on view page is "EMPTY"
      And edit police number back to the original value "PL100000005"

    Scenario: TC-CFR-UPDATE_019 As a Same Banks of Sender&Receiver (no sub case), NOT able to update police number more then 128 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "more_than_128" value
      Then should be display police number on update page is "more_than_128"
      And should be display police number on view page is "more_than_128"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_020 As a Same Banks of Sender&Receiver (no sub case), able to update police number to English value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL002123SDD1" value
      Then should be display police number on update page is "PL002123SDD1"
      And should be display police number on view page is "PL002123SDD1"
      And edit police number back to the original value "PL100000005"

    Scenario: TC-CFR-UPDATE_021 As a Same Banks of Sender&Receiver (no sub case), able to update police number to Thai value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "กขค123SS01" value
      Then should be display police number on update page is "กขค123SS01"
      And should be display police number on view page is "กขค123SS01"
      And edit police number back to the original value "PL100000005"

    Scenario: TC-CFR-UPDATE_022As a Same Banks of Sender&Receiver (no sub case), able to update police number to special character value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL-:23119กขฯ_12" value
      Then should be display police number on update page is "PL-:23119กขฯ_12"
      And should be display police number on view page is "PL-:23119กขฯ_12"
      And edit police number back to the original value "PL100000005"

    Scenario: TC-CFR-UPDATE_023 As a Same Banks of Sender&Receiver (no sub case), able to update police number to numberic value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "123457876543654" value
      Then should be display police number on update page is "123457876543654"
      And should be display police number on view page is "123457876543654"
      And edit police number back to the original value "PL100000005"

    Scenario: TC-CFR-UPDATE_024 As a Same Banks of Sender&Receiver (have sub case), able to update police number to EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "EMPTY" value
      Then should be display police number on update page is "EMPTY"
      And should be display police number on view page is "EMPTY"
      And edit police number back to the original value "PL100000006"

    Scenario: TC-CFR-UPDATE_026 As a Same Banks of Sender&Receiver (have sub case), NOT able to update police number more then 128 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "more_than_128" value
      Then should be display police number on update page is "more_than_128"
      And should be display police number on view page is "more_than_128"
      And edit police number back to the original value "PL100000001"

    Scenario: TC-CFR-UPDATE_027 As a Same Banks of Sender&Receiver (have sub case), able to update police number to English value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL002123SDD1" value
      Then should be display police number on update page is "PL002123SDD1"
      And should be display police number on view page is "PL002123SDD1"
      And edit police number back to the original value "PL100000006"

    Scenario: TC-CFR-UPDATE_028 As a Same Banks of Sender&Receiver (have sub case), able to update police number to Thai value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "กขค123SS01" value
      Then should be display police number on update page is "กขค123SS01"
      And should be display police number on view page is "กขค123SS01"
      And edit police number back to the original value "PL100000006"

    Scenario: TC-CFR-UPDATE_029 As a Same Banks of Sender&Receiver (have sub case), able to update police number to special character value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "PL-:23119กขฯ_12" value
      Then should be display police number on update page is "PL-:23119กขฯ_12"
      And should be display police number on view page is "PL-:23119กขฯ_12"
      And edit police number back to the original value "PL100000006"

    Scenario: TC-CFR-UPDATE_030 As a Same Banks of Sender&Receiver (have sub case), able to update police number to numberic value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit police number to "123457876543654" value
      Then should be display police number on update page is "123457876543654"
      And should be display police number on view page is "123457876543654"
      And edit police number back to the original value "PL100000006"