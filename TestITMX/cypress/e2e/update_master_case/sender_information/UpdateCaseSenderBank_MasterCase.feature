Feature: แก้ไขข้อมูลผู้เสียหาย: ธนาคารผู้เสียหาย


    Scenario: TC-CFR-UPDATE_219 As a Sender Bank (no sub case), NOT able to update sender bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender bank on update page is "ธนาคาร ซีไอเอ็มบี ไทย จำกัด (มหาชน)"

    Scenario: TC-CFR-UPDATE_220 As a Receving Bank (no sub case), NOT able to update sender name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender bank on update page is "ธนาคาร ซีไอเอ็มบี ไทย จำกัด (มหาชน)"

    Scenario: TC-CFR-UPDATE_221 As a Sender Bank (have sub case), NOT able to update sender bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender bank on update page is "ธนาคาร ซีไอเอ็มบี ไทย จำกัด (มหาชน)"

    Scenario: TC-CFR-UPDATE_222 As a Receving Bank (have sub case), NOT able to update sender name on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender bank on update page is "ธนาคาร ซีไอเอ็มบี ไทย จำกัด (มหาชน)"

    Scenario: TC-CFR-UPDATE_223 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender bank on update page is "ธนาคาร ซีไอเอ็มบี ไทย จำกัด (มหาชน)"

    Scenario: TC-CFR-UPDATE_224 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display sender bank on update page is "ธนาคาร ซีไอเอ็มบี ไทย จำกัด (มหาชน)"