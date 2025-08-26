Feature: แก้ไขข้อมูลการอายัดผู้รับโอน (Master Case)​

## Sender no sub case ##
    Scenario: TC-CFR-UPDATE_379 As a Sender Bank (no sub case), NOT able to update ข้อมูลการอายัดผู้รับโอน on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field ข้อมูลการอายัดผู้รับโอน

### Receiver no sub case ##
    Scenario: TC-CFR-UPDATE_380 As a Receving Bank (no sub case), able to update วันเวลาอายัด 72 hrs/วันเวลาปลดอายัด 72 hrs bank on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver feeze date 72H to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver unfeeze date 72H to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver feeze date 72H on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver unfeeze date 72H on update page is 2566-MM-"30"
      And should be display receiver feeze date 72H on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver feeze date "EMPTY" unfeeze date "EMPTY" 72H back to original

    Scenario: TC-CFR-UPDATE_381 As a Receving Bank (no sub case), able to update วันเวลาที่แจ้งความ bank on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver police report date to 2566-MM-"15" and time to minute 01 and secoud 00
      Then click edit data
      And close update page
      And should be display receiver police report date on update page is 2566-MM-"15" and time "01:00"
      And should be display receiver police report date on view page is 2566-MM-"15 01:00"
      Then update receiver police report date "EMPTY" back to original

    Scenario: TC-CFR-UPDATE_382 As a Receving Bank (no sub case), able to update วันที่ Fraud พิจารณาอายัดและปลดอายัดตามมาตรา 6 (7 วัน) on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver fraud feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver fraud unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver fraud feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver fraud unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver fraud feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver fraud feeze date "EMPTY" unfeeze date "EMPTY" 7 day back to original

    Scenario: TC-CFR-UPDATE_383 As a Receving Bank (no sub case), able to update วันที่ตำรวจพิจารณาอายัดและปลดอายัด on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver police feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver police unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver police feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver police unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver police feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver police feeze date "EMPTY" unfeeze date "EMPTY" 7 day back to original

    Scenario: TC-CFR-UPDATE_384 As a Receving Bank (no sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "1111111.99"
      And edit balance by Banks is "15.09"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on view page

    Scenario: TC-CFR-UPDATE_385 As a Receving Bank (no sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" within amount limit on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "999999999999999.99"
      And edit balance by Banks is "999999999999999.99"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on update page
      # And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on view page
      # Then update receiver bank freeze type freeze amount and balance back to original

    Scenario: TC-CFR-UPDATE_386 As a Receving Bank (no sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount EMPTY on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "EMPTY"
      And edit balance by Banks is "EMPTY"
      And click edit data with invalid data
      And should be display popup error freez amount bank on update page

    Scenario: TC-CFR-UPDATE_387 As a Receving Bank (no sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount less then zero on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "-123"
      Then click edit data
      And should be display popup error invalid format freez amount bank on update page

    Scenario: TC-CFR-UPDATE_388 As a Receving Bank (no sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with balance less then zero on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "111.99"
      And edit balance by Banks is "-123"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on view page

    Scenario: TC-CFR-UPDATE_389 As a Receving Bank (no sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "PL000000112"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "PL000000113"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on view page

    Scenario: TC-CFR-UPDATE_390 As a Receving Bank (no sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" ด้วยหมายอายัดเป็นค่าว่าง on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "EMPTY"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "EMPTY"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on view page

    Scenario: TC-CFR-UPDATE_391 As a Receving Bank (no sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดทั้งบัญชี (R)" on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดทั้งบัญชี (R)"
      And edit freeze no by police is "PL000000117"
      And edit unfreeze no by police is "PL000000118"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on view page

## Sender have sub case ##
    Scenario: TC-CFR-UPDATE_392 As a Sender Bank (have sub case), NOT able to update ข้อมูลการอายัดผู้รับโอน on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be disable field ข้อมูลการอายัดผู้รับโอน

### Receiver have sub case ##
    Scenario: TC-CFR-UPDATE_393 As a Receving Bank (have sub case), able to update วันเวลาอายัด 72 hrs/วันเวลาปลดอายัด 72 hrs bank on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver feeze date 72H to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver unfeeze date 72H to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver feeze date 72H on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver unfeeze date 72H on update page is 2566-MM-"30"
      And should be display receiver feeze date 72H on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver feeze date "EMPTY" unfeeze date "EMPTY" 72H back to original

    Scenario: TC-CFR-UPDATE_394 As a Receving Bank (have sub case), able to update วันเวลาที่แจ้งความ bank on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver police report date to 2566-MM-"15" and time to minute 01 and secoud 00
      Then click edit data
      And close update page
      And should be display receiver police report date on update page is 2566-MM-"15" and time "01:00"
      And should be display receiver police report date on view page is 2566-MM-"15 01:00"
      Then update receiver police report date "EMPTY" back to original

    Scenario: TC-CFR-UPDATE_395 As a Receving Bank (have sub case), able to update วันที่ Fraud พิจารณาอายัดและปลดอายัดตามมาตรา 6 (7 วัน) on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver fraud feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver fraud unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver fraud feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver fraud unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver fraud feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver fraud feeze date "EMPTY" unfeeze date "EMPTY" 7 day back to original

    Scenario: TC-CFR-UPDATE_396 As a Receving Bank (have sub case), able to update วันที่ตำรวจพิจารณาอายัดและปลดอายัด on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit receiver police feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver police unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver police feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver police unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver police feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver police feeze date "EMPTY" unfeeze date "EMPTY" 7 day back to original

    Scenario: TC-CFR-UPDATE_397 As a Receving Bank (have sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "1111111.99"
      And edit balance by Banks is "15.09"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on view page

    Scenario: TC-CFR-UPDATE_398 As a Receving Bank (have sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" within amount limit on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "999999999999999.99"
      And edit balance by Banks is "999999999999999.99"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on update page
      # And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on view page


    Scenario: TC-CFR-UPDATE_400 As a Receving Bank (have sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount less then zero on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "-123"
      Then click edit data
      And should be display popup error invalid format freez amount bank on update page

    Scenario: TC-CFR-UPDATE_401 As a Receving Bank (have sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with balance less then zero on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "111.99"
      And edit balance by Banks is "123-"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on view page

    Scenario: TC-CFR-UPDATE_402 As a Receving Bank (have sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "PL000000112"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "PL000000113"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on view page

    Scenario: TC-CFR-UPDATE_403 As a Receving Bank (have sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" ด้วยหมายอายัดเป็นค่าว่าง on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "EMPTY"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "EMPTY"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on view page

    Scenario: TC-CFR-UPDATE_404 As a Receving Bank (have sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดทั้งบัญชี (R)" on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดทั้งบัญชี (R)"
      And edit freeze no by police is "PL000000117"
      And edit unfreeze no by police is "PL000000118"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on view page

### Same Bank no sub case ##
    Scenario: TC-CFR-UPDATE_405 As a Same Bank (no sub case), able to update วันเวลาอายัด 72 hrs/วันเวลาปลดอายัด 72 hrs bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank feeze date 72H to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver same bank unfeeze date 72H to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver feeze date 72H on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver unfeeze date 72H on update page is 2566-MM-"30"
      And should be display receiver feeze date 72H on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"


    Scenario: TC-CFR-UPDATE_406 As a Same Bank (no sub case), able to update วันเวลาที่แจ้งความ bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank police report date to 2566-MM-"15" and time to minute 01 and secoud 00
      Then click edit data
      And close update page
      And should be display receiver police report date on update page is 2566-MM-"15" and time "01:00"
      And should be display receiver police report date on view page is 2566-MM-"15 01:00"


    Scenario: TC-CFR-UPDATE_407 As a Same Bank (no sub case), able to update วันที่ Fraud พิจารณาอายัดและปลดอายัดตามมาตรา 6 (7 วัน) on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank fraud feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver same bank fraud unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver fraud feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver fraud unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver fraud feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"


    Scenario: TC-CFR-UPDATE_408 As a Same Bank (no sub case), able to update วันที่ตำรวจพิจารณาอายัดและปลดอายัด on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank police feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver same bank police unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver police feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver police unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver police feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"
      Then update receiver same bank police feeze date "EMPTY" unfeeze date "EMPTY" 7 day back to original

    Scenario: TC-CFR-UPDATE_409 As a Same Bank (no sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "1111111.99"
      And edit balance by Banks is "15.09"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on view page

    Scenario: TC-CFR-UPDATE_410 As a Same Bank (no sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" within amount limit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "999999999999999.99"
      And edit balance by Banks is "999999999999999.99"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on update page
      # And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on view page
@focus 
    Scenario: TC-CFR-UPDATE_411 As a Same Bank (no sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "EMPTY"
      And edit balance by Banks is "EMPTY"
      And click edit data with invalid data
      And should be display popup error freez amount bank on update page

    Scenario: TC-CFR-UPDATE_412 As a Same Bank (no sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount less then zero on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "-123"
      Then click edit data
      And should be display popup error invalid format freez amount bank on update page

    Scenario: TC-CFR-UPDATE_413 As a Same Bank (no sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with balance less then zero on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "111.99"
      And edit balance by Banks is "-123"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on view page

    Scenario: TC-CFR-UPDATE_414 As a Same Bank (no sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "PL000000112"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "PL000000113"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on view page

    Scenario: TC-CFR-UPDATE_415 As a Same Bank (no sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" ด้วยหมายอายัดเป็นค่าว่าง on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "EMPTY"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "EMPTY"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on view page

    Scenario: TC-CFR-UPDATE_416 As a Same Bank (no sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดทั้งบัญชี (R)" on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดทั้งบัญชี (R)"
      And edit freeze no by police is "PL000000117"
      And edit unfreeze no by police is "PL000000118"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on view page

### Same Bank have sub case ##
    Scenario: TC-CFR-UPDATE_417 As a Same Bank (have sub case), able to update วันเวลาอายัด 72 hrs/วันเวลาปลดอายัด 72 hrs bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank feeze date 72H to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver same bank unfeeze date 72H to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver feeze date 72H on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver unfeeze date 72H on update page is 2566-MM-"30"
      And should be display receiver feeze date 72H on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"

    Scenario: TC-CFR-UPDATE_418 As a Same Bank (have sub case), able to update วันเวลาที่แจ้งความ bank on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank police report date to 2566-MM-"15" and time to minute 01 and secoud 00
      Then click edit data
      And close update page
      And should be display receiver police report date on update page is 2566-MM-"15" and time "01:00"
      And should be display receiver police report date on view page is 2566-MM-"15 01:00"

    Scenario: TC-CFR-UPDATE_419 As a Same Bank (have sub case), able to update วันที่ Fraud พิจารณาอายัดและปลดอายัดตามมาตรา 6 (7 วัน) on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank fraud feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver same bank fraud unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver fraud feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver fraud unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver fraud feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"

    Scenario: TC-CFR-UPDATE_420 As a Same Bank (have sub case), able to update วันที่ตำรวจพิจารณาอายัดและปลดอายัด on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit receiver same bank police feeze date 7 days to 2566-MM-"10" and time to minute 01 and secoud 00
      And edit receiver same bank police unfeeze date 7 days to 2566-MM-"30"
      Then click edit data
      And close update page
      And should be display receiver police feeze date 7 days on update page is 2566-MM-"10" and time "01:00"
      And should be display receiver police unfeeze date 7 days on update page is 2566-MM-"30"
      And should be display receiver police feeze date 7 day on view page is 2566-MM-"10 01:00" and unfreez is 2566-MM-"30"

    Scenario: TC-CFR-UPDATE_421 As a Same Bank (have sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "1111111.99"
      And edit balance by Banks is "15.09"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "1,111,111.99" and balance "15.09" on view page

    Scenario: TC-CFR-UPDATE_422 As a Same Bank (have sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" within amount limit on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "999999999999999.99"
      And edit balance by Banks is "999999999999999.99"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on update page
      # And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "999,999,999,999,999.99" and balance "999,999,999,999,999.99" on view page

    Scenario: TC-CFR-UPDATE_423 As a Same Bank (have sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount EMPTY on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "EMPTY"
      And edit balance by Banks is "EMPTY"
      And click edit data with invalid data
      And should be display popup error freez amount bank on update page

    Scenario: TC-CFR-UPDATE_424 As a Same Bank (have sub case), NOT able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with amount less then zero on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "-123"
      Then click edit data
      And should be display popup error invalid format freez amount bank on update page

    Scenario: TC-CFR-UPDATE_425 As a Same Bank (have sub case), able to update ประเภทของการอายัดจากธนาคาร "ระงับเฉพาะยอดเงิน" with balance less then zero on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by Banks is "ระงับเฉพาะยอดเงิน"
      And edit freeze amount by Banks is "111.99"
      And edit balance by Banks is "-123"
      Then click edit data
      And close update page
      And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "-123.00" on update page
      # And should be display receiver bank freeze type "ระงับเฉพาะยอดเงิน" freeze amount "111.99" and balance "123-" on view page

    Scenario: TC-CFR-UPDATE_426 As a Same Bank (have sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "PL000000112"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "PL000000113"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "PL000000112" and unfreeze no "PL000000113" on view page

    Scenario: TC-CFR-UPDATE_427 As a Same Bank (have sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" ด้วยหมายอายัดเป็นค่าว่าง on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)"
      And edit freeze no by police is "EMPTY"
      And edit freeze amount by police is "111.99"
      And edit unfreeze no by police is "EMPTY"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on update page
      And should be display receiver police freeze type "หมายอายัดเฉพาะยอดเงินที่ระบุ (Q)" freeze amount "111.99" freeze no "" and unfreeze no "" on view page

    Scenario: TC-CFR-UPDATE_428 As a Same Bank (have sub case), able to update ประเภทของการอายัดจากตำรวจ "หมายอายัดทั้งบัญชี (R)" on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      When click edit first record
      And edit freeze type by police is "หมายอายัดทั้งบัญชี (R)"
      And edit freeze no by police is "PL000000117"
      And edit unfreeze no by police is "PL000000118"
      Then click edit data
      And close update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on update page
      And should be display receiver police freeze type "หมายอายัดทั้งบัญชี (R)" freeze amount "" freeze no "PL000000117" and unfreeze no "PL000000118" on view page
