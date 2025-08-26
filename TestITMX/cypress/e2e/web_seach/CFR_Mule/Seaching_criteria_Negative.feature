Feature: Seaching  criteria Negative

  As a Validate Seaching  criteria
  I want to validate case 
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach
    
    Scenario: TC001_015 ตรวจสอบการค้นหาข้อมูลด้วยการไม่กรอกข้อมูลใดๆ - ไม่กรอกข้อมูลใดๆ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Click Serach
      Then should be display popup error message is "web_seach_error_system_not_found"
    Scenario: TC001_016 ตรวจสอบการค้นหาด้วยข้อมูลที่ไม่มีในฐานข้อมูลบัญชีม้า แต่อยู่ในระบบ CFR - Field  หมายเลขบัตรประชาชน/หนังสือเดินทาง/ นิติบุคคล
      Then should be display mule web search preview page of "mule_page" with valid description
      # Given Query All "1" Not Mule But Data stil System CFR
      Given Input data Personal_ID is "11092839291923"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_017 ตรวจสอบการค้นหาด้วยข้อมูลที่ไม่มีในฐานข้อมูลบัญชีม้า แต่อยู่ในระบบ CFR - Field  ชื่อเจ้าของบัญชี 
      Then should be display mule web search preview page of "mule_page" with valid description
      # Given Query All "1" Not Mule But Data stil System CFR And Input Field Name
      Given Input data firstName is "ม้า1จ้ๅ"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_018 ตรวจสอบการค้นหาด้วยข้อมูลที่ไม่มีในฐานข้อมูลบัญชีม้า แต่อยู่ในระบบ CFR - Field  นามสกุลเจ้าของบัญชี  
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query Not Mule But Data stil System CFR And Input Field is SureName_2 "ม้าหลอก"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_019 ตรวจสอบการค้นหาด้วยข้อมูลที่ไม่มีในฐานข้อมูลบัญชีม้า แต่อยู่ในระบบ CFR - Field  เลขอ้างอิงบัญชีม้า (Ref Code)  
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input data refCode is "CFR000000000"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_020 ตรวจสอบการค้นหาด้วยข้อมูลที่ไม่มีในฐานข้อมูลบัญชีม้า แต่อยู่ในระบบ CFR - Field  เลขที่บัญชี    
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input data AccountNumber is "4785617744000000"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_021 ตรวจสอบการค้นหามากกว่า 1 Field แต่อยู่ในระบบ CFR  - Field  หมายเลขบัตรประชาชน/หนังสือเดินทาง/ นิติบุคคล   - Field  ชื่อเจ้าของบัญชี - Field  เลขที่บัญชี 
      Then should be display mule web search preview page of "mule_page" with valid description
      # Given Query All "1" Not Mule But Data stil System CFR And Input 3 Field
      Given Input data Personal_ID is "3228892731398" And refCode is "1111111110"
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_022 ตรวจสอบการค้นหา All  Field  ด้วยข้อมูลที่มีในฐานข้อมูลบัญชีม้า แต่บาง Field เป็น Invalid Exact match  DATA  -  invalida Field  ธนาคารเจ้าของบัญชี  
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Not Mule But Data stil System CFR And Input All Field And Invalid BankName
      Then should be display web seach error message is "web_seach_error_not_found"
    Scenario: TC001_023 ตรวจสอบการค้นหา All  Field  ด้วยข้อมูลที่ไม่มีในฐานข้อมูลบัญชีม้า แต่อยู่ในระบบ CFR
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Not Mule But Data stil System CFR And Input All Field
      Then should be display web seach error message is "web_seach_error_not_found"

    