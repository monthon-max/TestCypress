Feature: Validate Brown Mule

  As a Validate Result of Searching Brown Mule
  I want to validate case 
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach


    
    Scenario: TC002_001_001 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - ไม่เป็นม้าเทาเข้ม ม้าเทาอ่อน ม้าขาว หรือ บุคคลเสี่ยง  - แต่มีอยู่ในระบบ CFR - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "4952504165425"
      Then get data in validate result mule_profile
    Scenario: TC002_001_002 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - ไม่เป็นม้าเทาเข้ม ม้าเทาอ่อน ม้าขาว หรือ บุคคลเสี่ยง - ไม่อยู่ในระบบ CFR - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "NP001239583627"
      Then get data in validate result mule_profile
    Scenario: TC002_001_003 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นม้าเทาเข้มเงื่อนไข 1 มาก่อน) - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "9846565387822"
      Then get data in validate result mule_profile
    Scenario: TC002_001_004 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นม้าเทาอ่อนเงื่อนไข 3 และม้าเทาเข้มเงื่อนไข 1 มาก่อน) - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "6552902848913"
      Then get data in validate result mule_profile
    Scenario: TC002_001_005 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นบุคคลเสี่ยง) - รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "1425947734731"
      Then get data in validate result mule_profile
    Scenario: TC002_001_006 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นบุคคลเสี่ยง และม้าเทาเข้มเงื่อนไข 1 มาก่อน) - รายเก่า - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "5316181290506"
      Then get data in validate result mule_profile
    Scenario: TC002_001_007 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - เป็นบุคคลเสี่ยง - บุคคลเดิม บัญชีเดิม ถูกปรับเป็น ม้าระดับสีเทาเข้มเงื่อนไข 1 - ได้รับการปลดม้า - กลับมาเป็นบุคคลเสี่ยง อีกครั้ง - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "8499920403620"
      Then get data in validate result mule_profile
    Scenario: TC002_001_008 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีเดิม คนละธนาคาร ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "8047847887474"
      Then get data in validate result mule_profile
    Scenario: TC002_001_009 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีใหม่ ธนาคารเดิม ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : นิติบุคคล 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "270703838411201095"
      Then get data in validate result mule_profile
    Scenario: TC002_001_010 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีใหม่ คนละธนาคาร ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "SOPAX2293OWPQ002WA3"
      Then get data in validate result mule_profile
    Scenario: TC002_001_011 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติบุคคล - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม ธนาคารเดิม บัญชีใหม่ ชื่อ-นามสกลุใหม่ ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "0799377535828"
      Then get data in validate result mule_profile
    Scenario: TC002_002_001 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า - กรณีมีการ Add  User permission  'CFR_BROWN_MULE_REG'  เข้ามาเรียบร้อยแล้ว
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Brown Mule
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_002 ( Case Negative ) ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า - กรณียังไม่มีการ Add  User permission  'CFR_BROWN_MULE_REG'  เข้ามา
      And Logout 002cfr
      Given login ITMX web portal by KBNK user
      And go to menu web seach
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query All "1" Brown Mule
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
    Scenario: TC002_002_003 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล (รายใหม่) - ไม่เป็นม้าเทาเข้ม ม้าเทาอ่อน ม้าขาว - บุคคลเสี่ยง - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "4952504165425"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_004 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าน้ำตาล (เคยเป็นม้าเทาเข้มเงื่อนไข 2 มาก่อน) - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "ICFD0JHQUNWJ13S"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_005 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า : ม้าน้ำตาล (เคยเป็นม้าเทาอ่อนเงื่อนไข 4 และม้าเทาเข้มเงื่อนไข 2 มาก่อน) - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "SGO5UTVS9YAHKJH"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_006 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเสี่ยง (รายใหม่) - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "1425947734731"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_007 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - เคยเป็นม้าเทาเข้มมาก่อน - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "5316181290506"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_008 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - เป็นบุคคลเสี่ยง - เป็นม้าเทาเข้มเงื่อนไข 1 บุคคลเดิม บัญชีเดิม - ได้รับการปลดม้า - กลับมาเป็นบุคคลเสี่ยง อีกครั้ง - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "8499920403620"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_009 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีเดิม คนละธนาคาร ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "8047847887474"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_010 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีใหม่ ธนาคารเดิม ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : นิติบุคคล
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "270703838411201095"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_011 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีใหม่ คนละธนาคาร ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "SOPAX2293OWPQ002WA3"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_002_012 ตรวจสอบข้อมูลบุคคลส่วน ประวัติระดับม้า ในแต่ละคอลัมน์ได้ถูกต้อง - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม ธนาคารเดิม บัญชีใหม่ ชื่อ-นามสกลุใหม่ ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "0799377535828"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      Then should be display Brown mule page of "Brown_mule_page" with valid all detail check all transition
    Scenario: TC002_003_001 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - ไม่เป็นม้าเทาเข้ม ม้าเทาอ่อน ม้าขาว หรือ บุคคลเสี่ยง  - แต่มีอยู่ในระบบ CFR - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "4952504165425"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      # Then get data in validate result mule_transaction_search
    Scenario: TC002_003_002 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - ไม่เป็นม้าเทาเข้ม ม้าเทาอ่อน ม้าขาว หรือ บุคคลเสี่ยง - ไม่อยู่ในระบบ CFR - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "NP001239583627"
      # Then get data in validate result mule_profile
      # Then should be display transition_search is "No records to display"
    Scenario: TC002_003_003 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นม้าเทาเข้มเงื่อนไข 1 มาก่อน) - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "OH97IYH0VQII61Y"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      # Then get data in validate result mule_transaction_search
    Scenario: TC002_003_004 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นม้าเทาอ่อนเงื่อนไข 3 และม้าเทาเข้มเงื่อนไข 1 มาก่อน) - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "6552902848913"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      # Then get data in validate result mule_transaction_search
    Scenario: TC002_003_005 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นบุคคลเสี่ยงมาก่อน) - รายใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "1425947734731"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      # Then get data in validate result mule_transaction_search
    Scenario: TC002_003_006 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล (เคยเป็นบุคคลเสี่ยง และม้าเทาเข้มเงื่อนไข 1 มาก่อน) - รายเก่า - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "ZX0XSGN9FECDVM2"
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      # Then get data in validate result mule_transaction_search
    Scenario: TC002_003_007 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - เป็นบุคคลเสี่ยง - บุคคลเดิม บัญชีเดิม ถูกปรับเป็น ม้าระดับสีเทาเข้มเงื่อนไข 1 - ได้รับการปลดม้า - กลับมาเป็นบุคคลเสี่ยง อีกครั้ง - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "8499920403620"  
      Then get data in validate result mule_profile
      Then get data in validate result mule_history for check all transition icon
      # Then get data in validate result mule_transaction_search
    Scenario: TC002_003_008 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีเดิม คนละธนาคาร ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "8047847887474"
      # Then should be display transition_search is "No records to display"
      # Then get data in validate result mule_profile
    Scenario: TC002_003_009 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีใหม่ ธนาคารเดิม ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : นิติบุคคล
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "270703838411201095"
      # Then get data in validate result mule_profile
      # Then should be display transition_search is "No records to display"
    Scenario: TC002_003_010 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม บัญชีใหม่ คนละธนาคาร ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "SOPAX2293OWPQ002WA3"
      # Then get data in validate result mule_profile
      # Then should be display transition_search is "No records to display"
    Scenario: TC002_003_011 ตรวจสอบการแสดงผลการค้นหาในส่วน ประวัติธุรกรรม - ระดับบัญชีม้า: ม้าน้ำตาล - บุคคลเดิม ธนาคารเดิม บัญชีใหม่ ชื่อ-นามสกลุใหม่ ถูก add case ม้าน้ำตาลเข้ามาใหม่ - ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Input Data Brown Mule_identity_id is "0799377535828"
      # Then get data in validate result mule_profile
      # Then should be display transition_search is "No records to display"

