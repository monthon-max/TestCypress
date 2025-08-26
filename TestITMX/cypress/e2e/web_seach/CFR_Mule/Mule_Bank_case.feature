Feature: Validate Mule Bank case

  As a Validate Associate Bank case (ประวัติธุรกรรม)
  I want to validate case 
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach
    
    Scenario: TC004_001 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาเข้ม (เงื่อนไข 1)  รายใหม่ - มีหมายอายัดแล้ว (R หรือ Q)
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data mule is Grey and Rule 1 is New Mule and warrant_RQ is R
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search_2
    Scenario: TC004_002 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาเข้ม (เงื่อนไข 2)  รายใหม่ - มีหมายแจ้งความ (warrant H)
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data mule is Grey and Rule 2 is New Mule and warrant_RQ is H
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search_2
    Scenario: TC004_003  ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาอ่อน (เงื่อนไข 3)  รายใหม่ - ม้าแถวที่ 1 จำนวน 2 Master Case  
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data mule is light Grey and Rule 3
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search_2
    Scenario: TC004_004 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาอ่อน (เงื่อนไข 4)  รายใหม่
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GHB08688" And Bankcode is "026"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_005 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาเข้ม เงื่อนไข 1 -->> ม้าเทาเข้ม เงื่อนไข 1  -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ)
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SCBT00615" And Bankcode is "002"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_006 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาเข้ม เงื่อนไข 2 -->> ม้าเทาเข้ม เงื่อนไข 2 -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ)
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227LHB06018" And Bankcode is "002" And refCode is "CF00058434"
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search_2
    Scenario: TC004_007 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาอ่อนเงื่อนไข 3 -->> ม้าเทาอ่อน เงื่อนไข 3- บุคคลเดิม บัญชีใหม่  (ออกซ้ำ)
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227IOB08539" And Bankcode is "011"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_008 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - ม้าเทาอ่อน เงื่อนไข 4 -->> ม้าเทาอ่อนเงื่อนไข 4 -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ)
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227BOA06881" And Bankcode is "014"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_009 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม บัญชีเดิม - ม้าเทาเข้ม เงื่อนไข 2 -->> เป็นม้าเทาอ่อน เงื่อนไข 4 (ระดับสีลดลง )
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227KTB02357" And Bankcode is "002" And refCode is "CF00058429"
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search_2
    Scenario: TC004_010 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม  บัญชีใหม่ - ม้าเทาเข้ม เงื่อนไข 1 -->> เป็นม้าเทาอ่อน เงื่อนไข 3 (ระดับสีลดลง )
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SMBC05622" And Bankcode is "006" And refCode is "CF00058538"
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search_2
    Scenario: TC004_011 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม  บัญชีเดิม - ม้าเทาอ่อน เงื่อนไข 3 -->> เป็นม้าเทาเข้ม เงื่อนไข 2 (ระดับสีเข้มขึ้น )
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227ICBC09429" And Bankcode is "011"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_012 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม  บัญชีใหม่ - ม้าเทาอ่อน เงื่อนไข 4-->> เป็นม้าเทาเข้ม เงื่อนไข 1 (ระดับสีเข้มขึ้น )
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227TCRB09157" And Bankcode is "027"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_013 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - กรณีบุคคลเดิม บัญชีเดิม - ม้าเทาเข้ม เงื่อนไข 2 -->>  ปลด = ม้าขาว  -->>  เป็นม้าเทาอ่อน เงื่อนไข 4
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225CMBT07979" And Bankcode is "004"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_014 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - กรณีบุคคลเดิม บัญชีใหม่ - ม้าเทาเข้ม เงื่อนไข 2 -->>  ปลด = ม้าขาว  -->>  เป็นม้าเทาอ่อน เงื่อนไข 4
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671230BAAC05039" And Bankcode is "002" And refCode is "CF00058578"
      Then get data in validate result mule_profile_2
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_015 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - กรณีบุคคลเดิม บัญชีเดิม - ม้าเทาอ่อน เงื่อนไข 4-->> เป็นม้าเทาเข้ม เงื่อนไข 2-->>  ปลด = ม้าขาว
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227ISBT08112" And Bankcode is "014"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_016 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม - กรณีบุคคลเดิม บัญชีใหม่ - ม้าเทาอ่อน เงื่อนไข 3 -->> เป็นม้าเทาเข้ม เงื่อนไข 1 -->>  ปลด = ม้าขาว
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227EXIM05845" And Bankcode is "006"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_017 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม  บัญชีเดิม - ม้าเทาเข้ม เงื่อนไข  1 -->>  ปลด = ม้าขาว  -->>  เป็นบุคคลมีความเสี่ยง (มี1 Bank Case  ที่ไม่มีหมาย H และอายัด )
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL09898" And Bankcode is "002"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    Scenario: TC004_018 ตรวจสอบการค้นหา ในส่วนของ ประวัติธุรกรรม  บัญชีใหม่ - ม้าเทาเข้ม เงื่อนไข  1 -->>  ปลด = ม้าขาว  -->>  เป็นบุคคลมีความเสี่ยง (มี1 Bank Case  ที่ไม่มีหมาย H และอายัด )
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL07896" And Bankcode is "002"
      Then get data in validate result mule_profile
      # Then get data in validate result mule_transaction_search
    