Feature: Dark Brown Mule Search positive

  Background:
    Given login ITMX web portal by BBL user
    And go to menu web seach

  Scenario: TC003_001_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "6252938996371"
    Then get data in validate result mule_profile

  Scenario: TC003_001_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "6252938996371"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_001_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then Input data Personal_Id is "6252938996371"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_001_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "6252938996371"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_002_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "T1NPFYWA5TO0NTA"
    Then get data in validate result mule_profile

  Scenario: TC003_002_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "T1NPFYWA5TO0NTA"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_002_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then Input data Personal_Id is "T1NPFYWA5TO0NTA"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition
  
  # Scenario: TC003_002_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน"
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "T1NPFYWA5TO0NTA"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_003_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "948394829482382199"
    Then get data in validate result mule_profile

  Scenario: TC003_003_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "948394829482382199"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_003_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
    Then Input data Personal_Id is "948394829482382199"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_003_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล ไม่เคยเป็นม้าเทาเข้ม, ม้าเทาอ่อน หรือ บุคคลเสี่ยงมาก่อน
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "948394829482382199"
  #   Then get data in validate result mule_profile
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_004_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นม้าเทาเข้ม เงื่อนไข 1 มาก่อนแล้วถูกปลดบัญชีม้า
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "3849805431697"
    Then get data in validate result mule_profile

  Scenario: TC003_004_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นม้าเทาเข้ม เงื่อนไข 1 มาก่อนแล้วถูกปลดบัญชีม้า
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "3849805431697"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_004_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นม้าเทาเข้ม เงื่อนไข 1 มาก่อนแล้วถูกปลดบัญชีม้า
    Then Input data Personal_Id is "3849805431697"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_004_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นม้าเทาเข้ม เงื่อนไข 1 มาก่อนแล้วถูกปลดบัญชีม้า
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "3849805431697"
  #   Then get data in validate result mule_profile
  #   Then get data in validate result mule_transaction_search

  Scenario: TC003_005_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ เคยเป็นม้าเทาเข้ม เงื่อนไข 2 มาก่อนแล้วถูกปลดบัญชีม้า
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "0476175917070"
    Then get data in validate result mule_profile

  Scenario: TC003_005_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ เคยเป็นม้าเทาเข้ม เงื่อนไข 2 มาก่อนแล้วถูกปลดบัญชีม้า
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "0476175917070"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_005_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ เคยเป็นม้าเทาเข้ม เงื่อนไข 2 มาก่อนแล้วถูกปลดบัญชีม้า
    Then Input data Personal_Id is "0476175917070"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition
  
  # Scenario: TC003_005_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ เคยเป็นม้าเทาเข้ม เงื่อนไข 2 มาก่อนแล้วถูกปลดบัญชีม้า
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "0476175917070"
  #   Then get data in validate result mule_profile
  #   Then get data in validate result mule_transaction_search

  Scenario: TC003_006_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นบุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "1809652790240"
    Then get data in validate result mule_profile
 
  Scenario: TC003_006_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นบุคคลเสี่ยงมาก่อน
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "1809652790240"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_006_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นบุคคลเสี่ยงมาก่อน
    Then Input data Personal_Id is "1809652790240"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_006_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา เคยเป็นบุคคลเสี่ยงมาก่อน
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "1809652790240"
  #   Then get data in validate result mule_profile
  #   Then get data in validate result mule_transaction_search

  Scenario: TC003_007_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม , บัญชีเดิม - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "6209171884294"
    Then get data in validate result mule_profile
  
  Scenario: TC003_007_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม , บัญชีเดิม - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "6209171884294"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_007_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม , บัญชีเดิม - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then Input data Personal_Id is "6209171884294"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_007_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม , บัญชีเดิม - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "6209171884294"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_008_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "19XDW13WQQ108"
    Then get data in validate result mule_profile
  
  Scenario: TC003_008_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "19XDW13WQQ108"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_008_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
    Then Input data Personal_Id is "19XDW13WQQ108"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_008_004 รวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - คนละธนาคาร) ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "19XDW13WQQ108"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_009_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคค" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - ธนาคารเดิม) ระเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "003768251199102913"
    Then get data in validate result mule_profile
  
  Scenario: TC003_009_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - ธนาคารเดิม) ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "003768251199102913"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_009_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - ธนาคารเดิม) ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
    Then Input data Personal_Id is "003768251199102913"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_009_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บุคคลเดิม ,บัญชีใหม่ - ธนาคารเดิม) ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "003768251199102913"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_010_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บัญชีใหม่ - ธนาคารเดิม, Person ID เดียวกัน แต่ชื่อและนามสกุล เปลี่ยน ) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "2030464440579"
    Then get data in validate result mule_profile
  
  Scenario: TC003_010_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บัญชีใหม่ - ธนาคารเดิม, Person ID เดียวกัน แต่ชื่อและนามสกุล เปลี่ยน ) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "2030464440579"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_010_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บัญชีใหม่ - ธนาคารเดิม, Person ID เดียวกัน แต่ชื่อและนามสกุล เปลี่ยน ) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then Input data Personal_Id is "2030464440579"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_010_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าน้ำตาลมาก่อน, บัญชีใหม่ - ธนาคารเดิม, Person ID เดียวกัน แต่ชื่อและนามสกุล เปลี่ยน ) ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "2030464440579"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_011_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม  ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "5816973290284"
    Then get data in validate result mule_profile

  Scenario: TC003_011_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "5816973290284"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_011_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then Input data Personal_Id is "5816973290284"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_011_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "5816973290284"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_012_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "95383095803852085205820842098494949"
    Then get data in validate result mule_profile
  
  Scenario: TC003_012_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "95383095803852085205820842098494949"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_012_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
    Then Input data Personal_Id is "95383095803852085205820842098494949"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_012_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : ชาวต่างชาติ
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "95383095803852085205820842098494949"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_013_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "287282284248222000"
    Then get data in validate result mule_profile

  Scenario: TC003_013_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "287282284248222000"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_013_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
    Then Input data Personal_Id is "287282284248222000"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_013_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : นิติบุคคล
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "287282284248222000"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_014_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าเทาเข้มมาก่อน และเป็นม้าขาว ก่อนมาเป็นม้าน้ำตาลเข้ม) Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "7638280374703"
    Then get data in validate result mule_profile

  Scenario: TC003_014_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าเทาเข้มมาก่อน และเป็นม้าขาว ก่อนมาเป็นม้าน้ำตาลเข้ม) Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "7638280374703"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_014_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าเทาเข้มมาก่อน และเป็นม้าขาว ก่อนมาเป็นม้าน้ำตาลเข้ม) Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี  : บุคคลธรรมดา
    Then Input data Personal_Id is "7638280374703"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition
  
  # Scenario: TC003_014_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (เคยเป็นม้าเทาเข้มมาก่อน และเป็นม้าขาว ก่อนมาเป็นม้าน้ำตาลเข้ม) Cancle ม้าน้ำตาลเข้ม ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "7638280374703"
  #   Then get data in validate result mule_profile
  #   Then get data in validate result mule_transaction_search

  Scenario: TC003_015_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม (ครบทุกบัญชี) ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "0916664000298"
    Then get data in validate result mule_profile

  Scenario: TC003_015_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม (ครบทุกบัญชี) ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "0916664000298"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_015_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ  EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม (ครบทุกบัญชี) ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
    Then Input data Personal_Id is "0916664000298"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition

  # Scenario: TC003_015_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม (ครบทุกบัญชี) ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "0916664000298"
  #   Then should be display dark brown mule transition_search is "No records to display"

  Scenario: TC003_016_001 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติบุคคล" (Mule Profile)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม เฉพาะบัญชีธนาคารตนเอง ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "9SGW27QWE30SC"
    Then get data in validate result mule_profile
  
  Scenario: TC003_016_002 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม เฉพาะบัญชีธนาคารตนเอง ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
    Then should be display mule web search preview page of "mule_page" with valid description
    Then Input data Personal_Id is "9SGW27QWE30SC"
    Then get data in validate result mule_profile
    Then get data in validate result mule_history

  Scenario: TC003_016_003 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติระดับม้า" (Mule historical) ในส่วนของ EyeView ซึ่งจะแสดงรายละเอียดม้าน้ำตาลเข้ม โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม เฉพาะบัญชีธนาคารตนเอง ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
    Then Input data Personal_Id is "9SGW27QWE30SC"
    Then get data in validate result dark bronw mule_history for check all transition icon
    Then should be display Dark Brown mule page of "Dark_Brown_mule_page" with valid all detail check all transition
    
  # Scenario: TC003_016_004 ตรวจสอบการแสดงผลจากการค้นหา หัวข้อ "ประวัติธุรกรรม" (Associate Bank case)โดยระบุเงื่อนไขให้แสดงผลลัพธ์ดังนี้ ระดับบัญชีม้า : ม้าน้ำตาลเข้ม (มีบัญชีม้าน้ำตาลเข้มมากกว่า 2 บัญชี อยู่ธนาคารเดียวกัน 1 บัญชี และ อยู่ต่างธนาคาร 1 บัญชี) Cancle ม้าน้ำตาลเข้ม เฉพาะบัญชีธนาคารตนเอง ประเภทบุคคลของเจ้าของบัญชี : ชาวต่างชาติ
  #   Then should be display mule web search preview page of "mule_page" with valid description
  #   Then Input data Personal_Id is "9SGW27QWE30SC"
  #   Then should be display dark brown mule transition_search is "No records to display"