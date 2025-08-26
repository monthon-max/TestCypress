Feature: Seaching  criteria Positive

  As a Validate Seaching  criteria
  I want to validate case 
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach
    
    Scenario: TC001_001 ตรวจสอบการค้นหาข้อมูล ด้วยธนาคารเดียวกันกับ DATA Mule ที่จะทำการค้นหาข้อมูล 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
      # Then get data in validate result mule_transaction_search
    Scenario: TC001_002 ตรวจสอบการค้นหาข้อมูล ด้วยต่างธนาคารกับ DATA Mule ที่จะทำการค้นหาข้อมูล 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" and input bank_code 004
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
      # Then get data in validate result mule_transaction_search
    Scenario: TC001_003  Valid Exact match DATA - Field  หมายเลขบัตรประชาชน/หนังสือเดินทาง/ นิติบุคคล  
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
      # Then get data in validate result mule_transaction_search
    Scenario: TC001_004 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า Valid Exact match  DATA - Field  ชื่อเจ้าของบัญชี  
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field Surename
      Then get data in validate result mule_profile
    Scenario: TC001_005 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า Valid Exact match  DATA - Field  นามสกุลเจ้าของบัญชี
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field Name
      Then get data in validate result mule_profile
    Scenario: TC001_006 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า ม้าเทาเข้ม (เงื่อนไข 1)  Valid Exact match  DATA - Field  เลขอ้างอิงบัญชีม้า (Ref Code) 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field refCode And Rule_Max is "1" And Mule Level is "2"
      Then get data in validate result mule_profile
    Scenario: TC001_007 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า ม้าเทาเข้ม (เงื่อนไข 2)  Valid Exact match  DATA - Field  เลขอ้างอิงบัญชีม้า (Ref Code) 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field refCode And Rule_Max is "2" And Mule Level is "2"
      Then get data in validate result mule_profile
    Scenario: TC001_008 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า ม้าเทาอ่อน (เงื่อนไข 3)  Valid Exact match  DATA - Field  เลขอ้างอิงบัญชีม้า (Ref Code) 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field refCode And Rule_Max is "3" And Mule Level is "1"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_009 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า กรอกข้อมูลบุคคล - ม้าเทาอ่อน (เงื่อนไข4)  Valid Exact match  DATA - Field  เลขอ้างอิงบัญชีม้า (Ref Code) 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field refCode And Rule_Max is "4" And Mule Level is "1"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_010 ตรวจสอบการค้นหาด้วยการกรอกข้อมูลเพียง 1  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า Valid Exact match  DATA  - Field  เลขที่บัญชี   
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field Account_number
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
      # Then get data in validate result mule_transaction_search   
    Scenario: TC001_012 ตรวจสอบการค้นหาด้วยการกรอกข้อมูล มากกว่า 1  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า Valid Exact match  DATA - Field  ชื่อเจ้าของบัญชี - Field   เลขที่บัญชี 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field FristName And Account_number
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
      # Then get data in validate result mule_transaction_search
    Scenario: TC001_013 ตรวจสอบการค้นหา All Field ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้าและ Valid Exact match  DATA  (กรอกข้อมูลบุคคล   - ม้าเทาเข้ม (เงื่อนไข1) หรือ - ม้าเทาเข้ม (เงื่อนไข2))
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Input Field All "1" and mule_level is "2"
      Then get data in validate result mule_profile_2
      Then get data in validate result mule_history_2
      # Then get data in validate result mule_transaction_search_2
