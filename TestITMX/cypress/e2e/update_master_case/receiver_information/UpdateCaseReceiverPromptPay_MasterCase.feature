Feature: แก้ไขข้อมูลผู้ต้องสงสัย: หมายเลขโทรศัพท์

## Sender no sub case ##
    Scenario: TC-CFR-UPDATE_265 As a Sender Bank (no sub case), able to update receiver promptpay MOBILE number (+66 prefix followed by 9 digits numeric) on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66110000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66110000039"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_266 As a Sender Bank (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039222" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_267 As a Sender Bank (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_268 As a Sender Bank (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "00ฎฑรกก-&" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_269 As a Sender Bank (no sub case), able to update receiver promptpay NATID number 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      And should be display receiver promptpay on view page  with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_270 As a Sender Bank (no sub case), NOT able to update receiver promptpay NATID number more than 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_271 As a Sender Bank (no sub case), NOT able to update receiver promptpay NATID number less than 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "404062062719" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_272 As a Sender Bank (no sub case), NOT able to update receiver promptpay NATID number EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_273 As a Sender Bank (no sub case), NOT able to update receiver promptpay NATID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_274 As a Sender Bank (no sub case), able to update receiver promptpay BILLERID 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_275 As a Sender Bank (no sub case), NOT able to update receiver promptpay BILLERID more than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_276 As a Sender Bank (no sub case), NOT able to update receiver promptpay BILLERID less than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_277 As a Sender Bank (no sub case), NOT able to update receiver promptpay BILLERID EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_278 As a Sender Bank (no sub case), NOT able to update receiver promptpay BILLERID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_279 As a Sender Bank (no sub case), able to update receiver promptpay E-Wallet 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_280 As a Sender Bank (no sub case), NOT able to update receiver promptpay  E-Wallet more than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_281 As a Sender Bank (no sub case), NOT able to update receiver promptpay E-Wallet less than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_282 As a Sender Bank (no sub case), NOT able to update receiver promptpay  E-Wallet EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_283 As a Sender Bank (no sub case), NOT able to update receiver promptpay E-Wallet is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_284 As a Sender Bank (no sub case), able to update receiver promptpay ไม่มี with EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "ไม่มี" and proxy value ""
      And should be display receiver promptpay on view page  with type "ไม่มี" and proxy value ""
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_285 As a Sender Bank (no sub case), NOT able to update receiver promptpay ไม่มี with not EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "34รนำ-&ereip23/-" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

## Receiver no sub case ##
    Scenario: TC-CFR-UPDATE_286 As a Receiver Bank (no sub case), able to update receiver promptpay MOBILE number (+66 prefix followed by 9 digits numeric) on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66110000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66110000039"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_287 As a Receiver Bank (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039222" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_288 As a Receiver Bank (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_289 As a Receiver Bank (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "00ฎฑรกก-&" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_290 As a Receiver Bank (no sub case), able to update receiver promptpay NATID number 13 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      And should be display receiver promptpay on view page  with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_291 As a Receiver Bank (no sub case), NOT able to update receiver promptpay NATID number more than 13 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_292 As a Receiver Bank (no sub case), NOT able to update receiver promptpay NATID number less than 13 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "404062062719" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_293 As a Receiver Bank (no sub case), NOT able to update receiver promptpay NATID number EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_294 As a Receiver Bank (no sub case), NOT able to update receiver promptpay NATID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_295 As a Receiver Bank (no sub case), able to update receiver promptpay BILLERID 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_296 As a Receiver Bank (no sub case), NOT able to update receiver promptpay BILLERID more than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_297 As a Receiver Bank (no sub case), NOT able to update receiver promptpay BILLERID less than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_298 As a Receiver Bank (no sub case), NOT able to update receiver promptpay BILLERID EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_299 As a Receiver Bank (no sub case), NOT able to update receiver promptpay BILLERID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_291 As a Receiver Bank (no sub case), able to update receiver promptpay E-Wallet 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_292 As a Receiver Bank (no sub case), NOT able to update receiver promptpay  E-Wallet more than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_293 As a Receiver Bank (no sub case), NOT able to update receiver promptpay E-Wallet less than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_294 As a Receiver Bank (no sub case), NOT able to update receiver promptpay  E-Wallet EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_295 As a Receiver Bank (no sub case), NOT able to update receiver promptpay E-Wallet is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_296 As a Receiver Bank (no sub case), able to update receiver promptpay ไม่มี with EMPTY value on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "ไม่มี" and proxy value ""
      And should be display receiver promptpay on view page  with type "ไม่มี" and proxy value ""
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_297 As a Receiver Bank (no sub case), NOT able to update receiver promptpay ไม่มี with not EMPTY value on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "34รนำ-&ereip23/-" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

 ## Sender have sub case ##
    Scenario: TC-CFR-UPDATE_298 As a Sender Bank (have sub case), NOT able to update promptpay on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field and display promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"

## Receiver have sub case ##
    Scenario: TC-CFR-UPDATE_299 As a Receiver Bank (have sub case), able to update receiver promptpay MOBILE number (+66 prefix followed by 9 digits numeric) on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66110000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66110000039"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_300 As a Receiver Bank (have sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039222" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_301 As a Receiver Bank (have sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_302 As a Receiver Bank (have sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "00ฎฑรกก-&" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_303 As a Receiver Bank (have sub case), able to update receiver promptpay NATID number 13 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      And should be display receiver promptpay on view page  with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_304 As a Receiver Bank (have sub case), NOT able to update receiver promptpay NATID number more than 13 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_305 As a Receiver Bank (have sub case), NOT able to update receiver promptpay NATID number less than 13 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "404062062719" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_293 As a Receiver Bank (have sub case), NOT able to update receiver promptpay NATID number EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_306 As a Receiver Bank (have sub case), NOT able to update receiver promptpay NATID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_307 As a Receiver Bank (have sub case), able to update receiver promptpay BILLERID 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_308 As a Receiver Bank (have sub case), NOT able to update receiver promptpay BILLERID more than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_309 As a Receiver Bank (have sub case), NOT able to update receiver promptpay BILLERID less than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_310 As a Receiver Bank (have sub case), NOT able to update receiver promptpay BILLERID EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_311 As a Receiver Bank (have sub case), NOT able to update receiver promptpay BILLERID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_312 As a Receiver Bank (have sub case), able to update receiver promptpay E-Wallet 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_313 As a Receiver Bank (have sub case), NOT able to update receiver promptpay  E-Wallet more than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_314 As a Receiver Bank (have sub case), NOT able to update receiver promptpay E-Wallet less than 15 digits on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_315 As a Receiver Bank (have sub case), NOT able to update receiver promptpay  E-Wallet EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_316 As a Receiver Bank (have sub case), NOT able to update receiver promptpay E-Wallet is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_317 As a Receiver Bank (have sub case), able to update receiver promptpay ไม่มี with EMPTY value on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "ไม่มี" and proxy value ""
      And should be display receiver promptpay on view page  with type "ไม่มี" and proxy value ""
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_318 As a Receiver Bank (have sub case), NOT able to update receiver promptpay ไม่มี with not EMPTY value on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "34รนำ-&ereip23/-" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

## Same bank no sub case ##
    Scenario: TC-CFR-UPDATE_319 As a Same Banks (no sub case), able to update receiver promptpay MOBILE number (+66 prefix followed by 9 digits numeric) on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66110000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66110000039"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_320 As a Same Banks (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039222" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_321 As a Same Banks (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_322 As a Same Banks (no sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "00ฎฑรกก-&" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_323 As a Same Banks (no sub case), able to update receiver promptpay NATID number 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      And should be display receiver promptpay on view page  with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_324 As a Same Banks (no sub case), NOT able to update receiver promptpay NATID number more than 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_325 As a Same Banks (no sub case), NOT able to update receiver promptpay NATID number less than 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "404062062719" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_326 As a Same Banks (no sub case), NOT able to update receiver promptpay NATID number EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_327 As a Same Banks (no sub case), NOT able to update receiver promptpay NATID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_328 As a Same Banks (no sub case), able to update receiver promptpay BILLERID 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_329 As a Same Banks (no sub case), NOT able to update receiver promptpay BILLERID more than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_330 As a Same Banks (no sub case), NOT able to update receiver promptpay BILLERID less than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_331 As a Same Banks (no sub case), NOT able to update receiver promptpay BILLERID EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_332 As a Same Banks (no sub case), NOT able to update receiver promptpay BILLERID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_333 As a Same Banks (no sub case), able to update receiver promptpay E-Wallet 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_334 As a Same Banks (no sub case), NOT able to update receiver promptpay  E-Wallet more than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_335 As a Same Banks (no sub case), NOT able to update receiver promptpay E-Wallet less than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_336 As a Same Banks (no sub case), NOT able to update receiver promptpay  E-Wallet EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_337 As a Same Banks (no sub case), NOT able to update receiver promptpay E-Wallet is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_338 As a Same Banks (no sub case), able to update receiver promptpay ไม่มี with EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "ไม่มี" and proxy value ""
      And should be display receiver promptpay on view page  with type "ไม่มี" and proxy value ""
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_339 As a Same Banks (no sub case), NOT able to update receiver promptpay ไม่มี with not EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "34รนำ-&ereip23/-" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"


## Same bank have sub case ##
    Scenario: TC-CFR-UPDATE_340 As a Same Banks (have sub case), able to update receiver promptpay MOBILE number (+66 prefix followed by 9 digits numeric) on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66110000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66110000039"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_341 As a Same Banks (have sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "110000039222" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_342 As a Same Banks (have sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_343 As a Same Banks (have sub case), NOT able to update receiver promptpay MOBILE number invalid length on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay mobile number is "00ฎฑรกก-&" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_344 As a Same Banks (have sub case), able to update receiver promptpay NATID number 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      And should be display receiver promptpay on view page  with type "หมายเลขบัตรประชาชน" and proxy value "4040620627193"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_345 As a Same Banks (have sub case), NOT able to update receiver promptpay NATID number more than 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "4040620627193111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_346 As a Same Banks (have sub case), NOT able to update receiver promptpay NATID number less than 13 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "404062062719" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_347 As a Same Banks (have sub case), NOT able to update receiver promptpay NATID number EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_348 As a Same Banks (have sub case), NOT able to update receiver promptpay NATID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay NATID number is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_349 As a Same Banks (have sub case), able to update receiver promptpay BILLERID 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_350 As a Same Banks (have sub case), NOT able to update receiver promptpay BILLERID more than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "เลขนิติบุคคล (Biller Id)" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_351 As a Same Banks (have sub case), NOT able to update receiver promptpay BILLERID less than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_352 As a Same Banks (have sub case), NOT able to update receiver promptpay BILLERID EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_353 As a Same Banks (have sub case), NOT able to update receiver promptpay BILLERID is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay BILLERID is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_354 As a Same Banks (have sub case), able to update receiver promptpay E-Wallet 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_355 As a Same Banks (have sub case), NOT able to update receiver promptpay  E-Wallet more than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "1111111111111111111" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "e-wallet" and proxy value "111111111111111"
      And should be display receiver promptpay on view page  with type "e-wallet" and proxy value "111111111111111"
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_356 As a Same Banks (have sub case), NOT able to update receiver promptpay E-Wallet less than 15 digits on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "11111111111" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_357 As a Same Banks (have sub case), NOT able to update receiver promptpay  E-Wallet EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "EMPTY" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_358 As a Same Banks (have sub case), NOT able to update receiver promptpay E-Wallet is TH/ENG/Spacial Charactor on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay E-Wallet is "34รนำ-&ereip2" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"

    Scenario: TC-CFR-UPDATE_359 As a Same Banks (have sub case), able to update receiver promptpay ไม่มี with EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "EMPTY" value
      Then click edit data
      And close update page
      And should be display receiver promptpay on update page with type "ไม่มี" and proxy value ""
      And should be display receiver promptpay on view page  with type "ไม่มี" and proxy value ""
      Then update receiver promptpay back to original with type "เบอร์โทร" and proxy value "000000039"

    Scenario: TC-CFR-UPDATE_360 As a Same Banks (have sub case), NOT able to update receiver promptpay ไม่มี with not EMPTY value on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit receiver promptpay unknown is "34รนำ-&ereip23/-" value
      Then should be display error promptpay value on screen
      And click edit data with invalid data
      Then should be display popup error receiver promptpay on update page
      And should be display receiver promptpay on update page with type "เบอร์โทร" and proxy value "+66000000039"
      And should be display receiver promptpay on view page  with type "เบอร์โทร" and proxy value "+66000000039"