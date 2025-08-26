Feature: แก้ไขข้อมูลผู้เสียหาย: ประเภทบุคคลของเจ้าของบัญชีผู้เสียหาย,นามสกุลเจ้าของบัญชี และเลขที่บัตรประชาชน/หนังสือเดินทาง

    Scenario: TC-CFR-UPDATE_080 As a Sender Bank (no sub case), NOT able to fill-in sender surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender surename is "Test_Update" value
      And edit sender person number is "4040620627193" value
      And edit sender person type is "EMPTY" value
      Then should be display error sender person type on screen
      And click edit data with invalid data
      Then should be display popup error sender person type on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_081 As a Sender Bank (no sub case), able to update sender surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      # And edit sender person number is "2142734681841" value
      And edit sender person type is "บุคคลธรรมดา" value
      Then click edit data
      And close update page
      Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_082 As a Sender Bank (no sub case), NOT able to update sender surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      And edit sender person type is "บุคคลธรรมดา" value
      When edit sender surename is "EMPTY" value
      And edit sender person number is "4040620627193" value
      # Then should be display popup error sender surename on update page
      And click edit data with invalid data
      Then should be display popup error sender surename on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_084 As a Sender Bank (no sub case), able to update sender surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   And edit sender person type is "นิติบุคคล" value
    #   And edit sender person number is "432096450461811111" value
    #   Then click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_085 As a Sender Bank (no sub case), able to update person number 18 digit and person type is นิติบุคคล 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And sender surename is disable field and empty value
    #   And edit sender person number is "432096450461811111" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_086 As a Sender Bank (no sub case), able to update sender surename,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
    #   And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_087 As a Sender Bank (no sub case), NOT able to update sender surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender surename is "EMPTY" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   Then should be display error sender surename on screen
    #   And click edit data with invalid data
    #   Then should be display popup error sender surename on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_088 As a Receiver Bank (no sub case), NOT able to update sender surename,person number and person type
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable sender surename field and display sender surename on update page is "Test"
      And should be disable sender person number field and display sender person number on update page is "4040620627193"
      And should be disable sender person type field and display sender person type on update page is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_090 As a Sender Bank (have sub case), not able to fill-in sender surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender surename is "Test_Update" value
      And edit sender person number is "4040620627193" value
      And edit sender person type is "EMPTY" value
      Then should be display error sender person type on screen
      And click edit data with invalid data
      Then should be display popup error sender person type on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_091 As a Sender Bank (have sub case), able to update sender surename ,person number 13 digit and person type is บุคคลธรรมดา
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "บุคคลธรรมดา" value
    #   And edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
    #   And edit sender person number is "4320964504618" value
    #   Then click edit data
    #   And close update page
    #   Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4320964504618" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4320964504618" and  person type is "บุคคลธรรมดา" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_092 As a Sender Bank (have sub case), able to update sender surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "EMPTY" value
      And edit sender person number is "4040620627193" value
      And click edit data with invalid data
      Then should be display popup error sender surename on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_094 As a Sender Bank (have sub case), able to update sender surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And edit sender person number is "432096450461811111" value
    #   Then click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_095 As a Sender Bank (have sub case), able to update person number 18 digit and person type is นิติบุคคล 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And sender surename is disable field and empty value
    #   Then should be display error sender person number on screen
    #   And edit sender person number is "432096450461811111" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_096 As a Sender Bank (have sub case), able to update sender surename,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   And edit sender person type is "ชาวต่างชาติ" value
    #   When edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
    #   And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_097 As a Sender Bank (have sub case), NOT able to update sender surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender surename is "EMPTY" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   Then should be display error sender surename on screen
    #   And click edit data with invalid data
    #   Then should be display popup error sender surename on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_098 As a Receiver Bank (have sub case), NOT able to update sender surename,person number and person type
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable sender surename field and display sender surename on update page is "Test"
      And should be disable sender person number field and display sender person number on update page is "4040620627193"
      And should be disable sender person type field and display sender person type on update page is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_100 As a Same Banks of Sender&Receiver (no sub case), not able to fill-in sender surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender surename is "Test_Update" value
      And edit sender person number is "4040620627193" value
      And edit sender person type is "EMPTY" value
      Then should be display error sender person type on screen
      And click edit data with invalid data
      Then should be display popup error sender person type on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_101 As a Same Banks of Sender&Receiver (no sub case), able to update sender surename ,person number 13 digit and person type is บุคคลธรรมดา
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "บุคคลธรรมดา" value
    #   And edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
    #   And edit sender person number is "4320964504618" value
    #   Then click edit data
    #   And close update page
    #   Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4320964504618" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4320964504618" and  person type is "บุคคลธรรมดา" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_102 As a Same Banks of Sender&Receiver (no sub case), not able to update sender surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "EMPTY" value
      And edit sender person number is "4040620627193" value
      And click edit data with invalid data
      Then should be display popup error sender surename on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_104 As a Same Banks of Sender&Receiver (no sub case), able to update sender surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And edit sender person number is "432096450461811111" value
    #   Then click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_105 As a Same Banks of Sender&Receiver (no sub case), able to update person number 18 digit and person type is นิติบุคคล 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And sender surename is disable field and empty value
    #   Then should be display error sender person number on screen
    #   And edit sender person number is "432096450461811111" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_106 As a Same Banks of Sender&Receiver (no sub case), able to update sender surename,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
    #   And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_107 As a Same Banks of Sender&Receiver (no sub case), NOT able to update sender surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender surename is "EMPTY" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   Then should be display error sender surename on screen
    #   And click edit data with invalid data
    #   Then should be display popup error sender surename on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

##### Same bank have sub case ######

    Scenario: TC-CFR-UPDATE_109 As a Same Banks of Sender&Receiver (have sub case), not able to fill-in sender surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender surename is "Test_Update" value
      And edit sender person number is "4040620627193" value
      And edit sender person type is "EMPTY" value
      Then should be display error sender person type on screen
      And click edit data with invalid data
      Then should be display popup error sender person type on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      
    Scenario: TC-CFR-UPDATE_110 As a Same Banks of Sender&Receiver (have sub case), able to update sender surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      And edit sender person number is "4320964504618" value
      Then click edit data
      And close update page
      Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4320964504618" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4320964504618" and  person type is "บุคคลธรรมดา" on view page
      Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_111 As a Same Banks of Sender&Receiver (have sub case), not able to update sender surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "EMPTY" value
      And edit sender person number is "4040620627193" value
      And click edit data with invalid data
      Then should be display popup error sender surename on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_113 As a Same Banks of Sender&Receiver (have sub case), able to update sender surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And edit sender person number is "432096450461811111" value
    #   Then click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_114 As a Same Banks of Sender&Receiver (have sub case), able to update person number 18 digit and person type is นิติบุคคล 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And sender surename is disable field and empty value
    #   Then should be display error sender person number on screen
    #   And edit sender person number is "432096450461811111" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
    #   And should be display sender surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_115 As a Same Banks of Sender&Receiver (have sub case), able to update sender surename,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
    #   And click edit data
    #   And close update page
    #   Then should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
    #   And should be display sender surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
    #   Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    # Scenario: TC-CFR-UPDATE_116 As a Same Banks of Sender&Receiver (have sub case), NOT able to update sender surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
    #   And click edit first record
    #   And edit sender person type is "ชาวต่างชาติ" value
    #   When edit sender surename is "EMPTY" value
    #   And edit sender person number is "MT-32348_SSADF#$()_+ไท๊ยยย1testttt" value
    #   Then should be display error sender surename on screen
    #   And click edit data with invalid data
    #   Then should be display popup error sender surename on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    Scenario: TC-CFR-UPDATE_117 As a Sender Bank (no sub case), able to update person number empty when person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "Test_Update" value
      And edit sender person number is "EMPTY" value
      And click edit data with invalid data
      Then should be display popup error sender person number on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    Scenario: TC-CFR-UPDATE_118 As a Sender Bank (no sub case), NOT able to update person number more then 13 digit when person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "Test_Update" value
      And edit sender person number is "40406206271933" value
      And click edit data
      And close update page
      Then should be display sender surename is "Test_Update" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test_Update" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update sender name back to original sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_119 As a Sender Bank (no sub case), NOT able to update person number is not numberic when person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "Test_Update" value
      And edit sender person number is "$()_+ไท๊ยยย1t" value
      Then should be display error sender person number on screen
      And click edit data with invalid data
      Then should be display popup error sender person number on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_120 As a Sender Bank (no sub case), NOT able to update person number is not real NATID when person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit sender person type is "บุคคลธรรมดา" value
      And edit sender surename is "Test_Update" value
      And edit sender person number is "1111111112343" value
      Then should be display error sender person number on screen
      And click edit data with invalid data
      Then should be display popup error sender person number on update page
      Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_121 As a Sender Bank (no sub case), NOT able to update person number more then 18 digit when person type is นิติบุคคล
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   And edit sender person type is "นิติบุคคล" value
    #   And edit sender person number is "4040620633333333271933" value
    #   Then should be display error sender person number on screen
    #   And click edit data with invalid data
    #   Then should be display popup error sender person number on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_122 As a Sender Bank (no sub case), NOT able to update person number is not numberic when person type is นิติบุคคล
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "นิติบุคคล" value
    #   And edit sender person number is "$()_+ไท๊ยยย1t" value
    #   Then should be display error sender person number on screen
    #   And click edit data with invalid data
    #   Then should be display popup error sender person number on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    # Scenario: TC-CFR-UPDATE_123 As a Sender Bank (no sub case), NOT able to update person number is empty when person type is ชาวต่างชาติ
    #   Given login ITMX web portal by CMBT user
    #   And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
    #   And click edit first record
    #   When edit sender person type is "ชาวต่างชาติ" value
    #   And edit sender person number is "EMPTY" value
    #   And click edit data with invalid data
    #   Then should be display popup error sender person number on update page
    #   Then should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
    #   And should be display sender surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page