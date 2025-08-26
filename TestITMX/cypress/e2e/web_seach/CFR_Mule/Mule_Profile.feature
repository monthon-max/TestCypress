Feature: Validate Mule Profile

  As a Validate Mule Profile (ประวัติบุคคล) 
  I want to validate case 
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach
     
    Scenario: TC002_001 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1)  รายใหม่  - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL07841" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_002 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SCBT00615" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_003  ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1) รายเก่า บุคคลเดิม บัญชีใหม่  - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BNPP03719" And Bankcode is "025" And refCode is "CF00058510"
      Then get data in validate result mule_profile_2
    Scenario: TC002_004 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1)  -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227TCRB09157" And Bankcode is "027" 
      Then get data in validate result mule_profile
    Scenario: TC002_005 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1) - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227ICBC00876" And Bankcode is "011" 
      Then get data in validate result mule_profile
    Scenario: TC002_006 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1) - บุคคลเดิม บัญชีเดิม (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227MHCB05477" And Bankcode is "026" 
      Then get data in validate result mule_profile
    Scenario: TC002_007 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล  - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 1 ) -  บุคคลเดิม บัญชีเดิม  (ไม่ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227BBL04903" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_008 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GSB07258" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_009 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227LHB06018" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_010 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SMBC00690" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_011 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี  :  ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GSB07258" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_012 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) - บุคคลเดิม บัญชีเดิม (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227ICBC09429" And Bankcode is "011" 
      Then get data in validate result mule_profile
    Scenario: TC002_013 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) - บุคคลเดิม บัญชีเดิม (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227KKP02807" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_014 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาเข้ม (เงื่อนไข 2) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SME03144" And Bankcode is "025" 
      Then get data in validate result mule_profile
    Scenario: TC002_015 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข 3) รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225CITI05912" And Bankcode is "011" 
      Then get data in validate result mule_profile
    Scenario: TC002_016 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล -  ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข 3) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227IOB08539" And Bankcode is "011" 
      Then get data in validate result mule_profile
    Scenario: TC002_017 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล -  ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข 3) รายเก่า - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL04905" And Bankcode is "004" 
      Then get data in validate result mule_profile
    Scenario: TC002_018 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล -  ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข 3) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227GHB08383" And Bankcode is "011" 
      Then get data in validate result mule_profile
    Scenario: TC002_019 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาอ่อนเงื่อนไข 3 (รายเก่า) - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL02067" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_020 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล  ประวัติระดับม้าและประวัติธุรกรรม - ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข4) รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GHB08688" And Bankcode is "026" 
      Then get data in validate result mule_profile
    Scenario: TC002_021 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล  ประวัติระดับม้าและประวัติธุรกรรม - ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข4) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SCB05486" And Bankcode is "014" 
      Then get data in validate result mule_profile
    Scenario: TC002_022 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล  ประวัติระดับม้าและประวัติธุรกรรม - ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข4) รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225GHB08688" And Bankcode is "026" 
      Then get data in validate result mule_profile
    Scenario: TC002_023 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล  ประวัติระดับม้าและประวัติธุรกรรม - ระดับบัญชีม้า : ม้าเทาอ่อน  (เงื่อนไข4) -  บุคคลเดิม บัญชีใหม่  (ออกซ้ำ) - ประเภทบุคคลของเจ้าของบัญชี  :  ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227KBNK05429" And Bankcode is "014" 
      Then get data in validate result mule_profile
    Scenario: TC002_024 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าเทาอ่อนเงื่อนไข 4 (รายเก่า) - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225CMBT07979" And Bankcode is "004" 
      Then get data in validate result mule_profile
    Scenario: TC002_025 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าขาว - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227ISBT08112" And Bankcode is "014" 
      Then get data in validate result mule_profile
    Scenario: TC002_026 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าขาว - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671225BBL06963" And Bankcode is "002" 
      Then get data in validate result mule_profile
    Scenario: TC002_027 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าขาว - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671230TCRB03059" And Bankcode is "002" And refCode is "CF00058585"
      Then get data in validate result mule_profile_2
    Scenario: TC002_028 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าขาว - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227GSB08803" And Bankcode is "006" 
      Then get data in validate result mule_profile
    Scenario: TC002_029 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าขาว - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227CMBT04164" And Bankcode is "014" 
      Then get data in validate result mule_profile
    Scenario: TC002_030 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : ม้าขาว - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227GHB03534" And Bankcode is "006" 
      Then get data in validate result mule_profile
    Scenario: TC002_031 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : บุคคลเสี่ยง - บุคคลเดิม บัญชีเดิม - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input data Personal_ID is "5375397353246"
      Then get data in validate result mule_profile
    Scenario: TC002_032 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล - ระดับบัญชีม้า : บุคคลเสี่ยง - บุคคลเดิม บัญชีใหม่ - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input data Personal_ID is "2SS054PJ4ZT4XLS" And refCode is "CF00058428"
      Then get data in validate result mule_profile_2
    Scenario: TC002_033 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล กรณี 1 Personal ID มี 2 ชื่อที่แตกต่างกัน แต่นามสกุลเหมือนกัน - ชื่อที่ 1 :  ระดับบัญชีม้าเป็น ม้าเทาเข้ม   เงื่อนไข 1 - ชื่อที่ 2 :  ระดับบัญชีม้าเป็น ม้าเทาอ่อน  เงื่อนไข 3 - กรอกข้อมูล Personal ID + ชื่อที่ 2 - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227SMBC06581" And Bankcode is "017" 
      Then get data in validate result mule_profile
    Scenario: TC002_034 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล กรณี 1 Personal ID มี 2 นามสกุลที่แตกต่างกัน แต่ชื่อเหมือนกัน - นามสกุล  1 :  ระดับบัญชีม้าเป็น ม้าเทาเข้ม  เงื่อนไข 2 - นามสกุล  2 :  ระดับบัญชีม้าเป็น ม้าเทาอ่อน  เงื่อนไข 4 - กรอกข้อมูล Personal ID + นามสกุลที่ 2 - ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25671227HSBC03006" And Bankcode is "033" 
      Then get data in validate result mule_profile
    Scenario: TC002_035 ตรวจสอบการแสดงผลการค้นหาในส่วน  ประวัติบุคคล กรณี 1 Personal ID แต่มีการเปลี่ยนชื่อ และนามสกุลใหม่  - ชื่อ-นามสกุล เดิม:  ระดับบัญชีม้าเป็น ม้าเทาอ่อน เงื่อนไข  4 - ชื่อ-นามสกุล ใหม่ :  ระดับบัญชีม้าเป็น ม้าเทาเข้ม เงื่อนไข 1 - กรอกข้อมูล ชื่อเดิม+ นามสกุลเดิม - ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" And Input data BankcaseID is "25680106RHB06575" And Bankcode is "002" 
      Then get data in validate result mule_profile