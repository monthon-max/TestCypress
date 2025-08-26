Feature: Validate Mule Historical

  As a Validate Mule Historical (ประวัติระดับม้า) 
  I want to validate case 
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach
    
    Scenario: TC003_001 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 1 (รายใหม่) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL07841" And Bankcode is "002" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_002 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 2 (รายใหม่) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GSB07258" And Bankcode is "002" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_003  ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 3 (รายใหม่) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225CITI05912" And Bankcode is "011" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_004  ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 4 (รายใหม่) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GHB08688" And Bankcode is "026" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_005  ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 1 (ออกซ้ำ) - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SCBT00615" And Bankcode is "002" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_006 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 2 (ออกซ้ำ) - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227LHB06018" And Bankcode is "002" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_007 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 3 (ออกซ้ำ) - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227MHCB05980" And Bankcode is "011" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_008 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 4 (ออกซ้ำ) - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SCB05486" And Bankcode is "014" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_009 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 1 (ออกซ้ำ) - ระดับสีเข้มขึ้น - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227ICBC00876" And Bankcode is "011" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_010 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 1 (ออกซ้ำ) - บุคคลเดิม บัญชีใหม่ - ระดับสีเข้มขึ้น - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227KTB07395" And Bankcode is "011" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_011 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 3 (ไม่แสดงใน web search) - ระดับสีลดลง - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา ***  ต้องแสดงเป็นม้าเทาเข้ม เงื่อนไข 1 ตามเดิม ***
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227BBL04903" And Bankcode is "002" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_012 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 3 (ไม่แสดงใน web search) - บุคคลเดิม บัญชีใหม่ - ระดับสีลดลง - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ ***  ต้องแสดงเป็นม้าเทาเข้ม เงื่อนไข 1 ตามเดิม ***
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SMBC05622" And Bankcode is "006" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_013 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าขาว - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227GSB08803" And Bankcode is "006" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_014 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าขาว - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SMTB05250" And Bankcode is "006" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_015 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 3 (รายเก่า) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL02067" And Bankcode is "002" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_016 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 1 (รายเก่า) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671226TSCO06559" And Bankcode is "017" And refCode is "CF00058417"
      # Then get data in validate result mule_profile_2
      Then get data in validate result mule_history_2
    Scenario: TC003_017 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาอ่อน เงื่อนไข 3 (รายเก่า) - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL04905" And Bankcode is "004" 
      Then get data in validate result mule_profile
      Then get data in validate result mule_history
    Scenario: TC003_018 ตรวจสอบข้อมูลบุคคลส่วน  ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าเทาเข้ม เงื่อนไข 1 (รายเก่า) - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SCB06487" And Bankcode is "004" And refCode is "CF00058412"
      # Then get data in validate result mule_profile_2
      Then get data in validate result mule_history_2
    