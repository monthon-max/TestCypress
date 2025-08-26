Feature: แก้ไขข้อมูลผู้เสียหาย: อีเมลผู้เสียหาย


    Scenario: TC-CFR-UPDATE_201 As a Sender Bank (no sub case), able to update sender email is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender email on update page is ""
      And should be display sender email on view page is ""
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_202 As a Sender Bank (no sub case), able to update sender email valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com" value
      Then click edit data
      And close update page
      And should be display sender email on update page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      And should be display sender email on view page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_203 As a Sender Bank (no sub case), NOT able to update sender email more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "more_then_256" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_204 As a Sender Bank (no sub case), NOT able to update sender email invali format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "Maenam" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_205 As a Receving Bank (no sub case), NOT able to update sender name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender email on update page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_206 As a Sender Bank (have sub case), able to update sender email is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender email on update page is ""
      And should be display sender email on view page is ""
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_207 As a Sender Bank (have sub case), able to update sender email valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com" value
      Then click edit data
      And close update page
      And should be display sender email on update page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      And should be display sender email on view page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_208 As a Sender Bank (have sub case), NOT able to update sender email more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "more_then_256" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_209 As a Sender Bank (have sub case), NOT able to update sender email invali format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender email is "Maenam" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_210 As a Receving Bank (have sub case), NOT able to update sender name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender email on update page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_211 As a Same Banks of Sender&Receiver (no sub case), able to update sender email is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender email on update page is ""
      And should be display sender email on view page is ""
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_212 As a Same Banks of Sender&Receiver (no sub case), able to update sender email valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com" value
      Then click edit data
      And close update page
      And should be display sender email on update page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      And should be display sender email on view page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_213 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender email more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "more_then_256" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_214 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender email invali format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "Maenam" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_215 As a Same Banks of Sender&Receiver (have sub case), able to update sender email is EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "EMPTY" value
      Then click edit data
      And close update page
      And should be display sender email on update page is ""
      And should be display sender email on view page is ""
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_216 As a Same Banks of Sender&Receiver (have sub case), able to update sender email valid format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com" value
      Then click edit data
      And close update page
      And should be display sender email on update page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      And should be display sender email on view page is "MaenamChange33333333333555555555555555555-5555555555555_53333333333333333333333fdkfjier@gmail.com"
      Then update sender email back to original "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_217 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender email more then 256 digit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "more_then_256" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"

    Scenario: TC-CFR-UPDATE_218 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender email invali format on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender email is "Maenam" value
      And click edit data with invalid data
      And should be display popup error sender email on update page
      And should be display sender email on update page is "Maenam@gmail.com"
      And should be display sender email on view page is "Maenam@gmail.com"