Feature: แก้ไขข้อมูลผู้ต้องสงสัย: ประเภทบุคคลของเจ้าของบัญชีต้องสงสัย,นามสกุลเจ้าของบัญชี และเลขที่บัตรประชาชน/หนังสือเดินทาง ของผู้ต้องสงสัย

    Scenario: TC-CFR-UPDATE_202 As a Sender Bank (no sub case), NOT able to fill-in receiver surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "EMPTY" value
      And edit receiver surename is "Test_Update" value
      And edit receiver person number is "4040620627193" value
      Then should be display error receiver person type on screen
      And click edit data with invalid data
      Then should be display popup error receiver person type on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_203 As a Sender Bank (no sub case), able to update receiver surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_204 As a Sender Bank (no sub case), NOT able to update receiver surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "EMPTY" value
      And edit receiver person number is "4040620627193" value
      Then should be display error receiver surename on screen
      And click edit data with invalid data
      Then should be display popup error receiver surename on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_205 As a Sender Bank (no sub case), NOT able to update receiver surename more than 256 char ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit sender person number is "4040620627193" value
      And edit receiver surename is "more_then_256" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "more_eq_256" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "more_eq_256" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_206 As a Sender Bank (no sub case), able to update receiver surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      And edit receiver person type is "นิติบุคคล" value
      And edit receiver person number is "432096450461811111" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_207 As a Sender Bank (no sub case), able to update receiver person number 18 digit and person type is นิติบุคคล 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "นิติบุคคล" value
      And receiver surename is disable field and empty value
      And edit receiver person number is "432096450461811111" value
      And click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_208 As a Sender Bank (no sub case), able to update receiver surename,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      And click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_209 As a Sender Bank (no sub case), NOT able to update receiver surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "EMPTY" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      Then should be display error receiver surename on screen
      And click edit data with invalid data
      Then should be display popup error receiver surename on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

### receiver no sub case ###
    Scenario: TC-CFR-UPDATE_210 As a Receiver Bank (no sub case), able to update receiver surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_211 As a Receiver Bank (no sub case), able to update receiver person number 18 digit and person type is นิติบุคคล 
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "นิติบุคคล" value
      And receiver surename is disable field and empty value
      And edit receiver person number is "432096450461811111" value
      And click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_212 As a Receiver Bank (no sub case), able to update receiver surename,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      And click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

##### sender bank have sub case ######
    Scenario: TC-CFR-UPDATE_213 As a Receiver Bank (have sub case), NOT able to update receiver surename,person number and person type
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      Then should be disable receiver surename field and display receiver surename on update page is "Test"
      And should be disable receiver person number field and display receiver person number on update page is "4040620627193"
      And should be disable receiver person type field and display receiver person type on update page is "บุคคลธรรมดา"

### receiver no sub case ###
    Scenario: TC-CFR-UPDATE_214 As a Receiver Bank (no sub case), able to update receiver surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_215 As a Receiver Bank (no sub case), able to update receiver person number 18 digit and person type is นิติบุคคล 
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "นิติบุคคล" value
      And receiver surename is disable field and empty value
      And edit receiver person number is "432096450461811111" value
      And click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_216 As a Receiver Bank (no sub case), able to update receiver surename,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      And click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

##### Same bank no sub case ######
    Scenario: TC-CFR-UPDATE_217 As a Same Banks of Sender&Receiver (no sub case), NOT able to fill-in receiver surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "EMPTY" value
      And edit receiver surename is "Test_Update" value
      And edit receiver person number is "4040620627193" value
      Then should be display error receiver person type on screen
      And click edit data with invalid data
      Then should be display popup error receiver person type on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_218 As a Same Banks of Sender&Receiver (no sub case), able to update receiver surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_219 As a Same Banks of Sender&Receiver (no sub case), NOT able to update receiver surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "EMPTY" value
      And edit receiver person number is "4040620627193" value
      Then should be display error receiver surename on screen
      And click edit data with invalid data
      Then should be display popup error receiver surename on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_220 As a Same Banks of Sender&Receiver (no sub case), NOT able to update receiver surename more than 256 char ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit sender person number is "4040620627193" value
      And edit receiver surename is "more_then_256" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "more_eq_256" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "more_eq_256" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_221 As a Same Banks of Sender&Receiver (no sub case), able to update receiver surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      And edit receiver person type is "นิติบุคคล" value
      And edit receiver person number is "432096450461811111" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_222 As a Same Banks of Sender&Receiver (no sub case), able to update receiver person number 18 digit and person type is นิติบุคคล 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "นิติบุคคล" value
      And receiver surename is disable field and empty value
      And edit receiver person number is "432096450461811111" value
      And click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_223 As a Same Banks of Sender&Receiver (no sub case), able to update receiver surename,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      And click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_224 As a Same Banks of Sender&Receiver (no sub case), NOT able to update receiver surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "EMPTY" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      Then should be display error receiver surename on screen
      And click edit data with invalid data
      Then should be display popup error receiver surename on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page


##### Same bank have sub case ######
    Scenario: TC-CFR-UPDATE_225 As a Same Banks of Sender&Receiver (have sub case), NOT able to fill-in receiver surename ,person number when person type to Empty 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "EMPTY" value
      And edit receiver surename is "Test_Update" value
      And edit receiver person number is "4040620627193" value
      Then should be display error receiver person type on screen
      And click edit data with invalid data
      Then should be display popup error receiver person type on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_226 As a Same Banks of Sender&Receiver (have sub case), able to update receiver surename ,person number 13 digit and person type is บุคคลธรรมดา
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_227 As a Same Banks of Sender&Receiver (have sub case), NOT able to update receiver surename is EMPTY ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit receiver surename is "EMPTY" value
      And edit receiver person number is "4040620627193" value
      Then should be display error receiver surename on screen
      And click edit data with invalid data
      Then should be display popup error receiver surename on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page

    Scenario: TC-CFR-UPDATE_228 As a Same Banks of Sender&Receiver (have sub case), NOT able to update receiver surename more than 256 char ,person number 13 digit and person type is บุคคลธรรมดา 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "บุคคลธรรมดา" value
      And edit sender person number is "4040620627193" value
      And edit receiver surename is "more_then_256" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "more_eq_256" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "more_eq_256" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_229 As a Same Banks of Sender&Receiver (have sub case), able to update receiver surename is EMPTY ,person number 18 digit and person type is นิติบุคคล
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      And edit receiver person type is "นิติบุคคล" value
      And edit receiver person number is "432096450461811111" value
      Then click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_230 As a Same Banks of Sender&Receiver (have sub case), able to update receiver person number 18 digit and person type is นิติบุคคล 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "นิติบุคคล" value
      And receiver surename is disable field and empty value
      And edit receiver person number is "432096450461811111" value
      And click edit data
      And close update page
      Then should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on update page
      And should be display receiver surename is "" person number is "432096450461811111" and  person type is "นิติบุคคล" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_231 As a Same Banks of Sender&Receiver (have sub case), able to update receiver surename,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      And click edit data
      And close update page
      Then should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on update page
      And should be display receiver surename is "MR.CMBT-Test&:-=ซีเอ็มบีที123_123nameไท๊ยยยยยยไทยย" person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" and  person type is "ชาวต่างชาติ" on view page
      Then update receiver name back to original receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC-CFR-UPDATE_232 As a Same Banks of Sender&Receiver (have sub case), NOT able to update receiver surename EMPTY,person number 35 digit and person type is ชาวต่างชาติ 
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver person type is "ชาวต่างชาติ" value
      And edit receiver surename is "EMPTY" value
      And edit receiver person number is "MT-32348_SSADF#$()_+ไท๊ยยยยtestttt" value
      Then should be display error receiver surename on screen
      And click edit data with invalid data
      Then should be display popup error receiver surename on update page
      Then should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
      And should be display receiver surename is "Test" person number is "4040620627193" and  person type is "บุคคลธรรมดา" on update page
