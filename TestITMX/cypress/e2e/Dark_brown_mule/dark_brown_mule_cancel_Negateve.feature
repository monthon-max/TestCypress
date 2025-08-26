Feature: Dark Brown Mule Cancel negative

# ======================================================================================

  # Scenario:**idnot TS002_001_002	ตรวจสอบสิทธิ์การเข้าถึง Menu "Dark Brown Mule Registry" ในกรณีที่ไม่มี Permission "CFR_BROWN_MULE_REG"
  #   Given login ITMX web portal by QATESTROLE2 account
  #   And Check button exchange account registry permission
  #   Then I should see Menu Dark Brown Mule Registry on the page

  Scenario: TS002_001_005	ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ไม่ถูกต้อง
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMuleRegistry_V1.0_002_CXL_2568-02-13_100"
    Then should be display popup error message is "File_name_is_invalid"
  Scenario: TS002_001_006	ตรวจสอบการ Upload File โดยระบุชื่อรหัสธนาคารไม่ถูกต้อง (BBB)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_007_CXL_2568-02-13_101"
    Then should be display popup error message is "File_name_invalid_bank_code"

  Scenario: TS002_001_007	ตรวจสอบการ Upload File โดยระบุชื่อรหัสธนาคารไม่ถูกต้อง (BBB)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_0020_CXL_2568-02-13_102"
    Then should be display popup error message is "File_name_is_invalid"

  Scenario: TS002_001_008	ตรวจสอบการ Upload File โดยระบุoperation flagไม่ถูกต้อง (CLX)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_103"
    Then should be display popup error message is "invalid_feader_csv_file_name"

  Scenario: TS002_001_009	ตรวจสอบการ Upload File โดยระบุoperation flagไม่ถูกต้อง (CXL)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXLS_2568-02-13_104"
    Then should be display popup error message is "File_name_is_invalid"

  Scenario: TS002_001_010	ตรวจสอบการ Upload File โดยระบุวันที่มากกว่า หรือ น้อยกว่า ปัจจุบันไม่ถูกต้อง (YYYY-MM-DD)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file negative dark brown mule registry "BrownMule_Registry_V1.0_002_CXL_2568-02-10_105"
    Then should be display popup error message is "file_name_invali_date"

  Scenario: TS002_001_011	ตรวจสอบการ Upload File โดยระบุ Format ของวันที่ไม่ถูกต้อง (YYYY-MM-DD)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file negative dark brown mule registry "BrownMuleRegistry_V1.0_002_NEW_2568-02-13_106"
    Then should be display popup error message is "File_name_is_invalid"

  Scenario: TS002_001_012	ตรวจสอบการ Upload File โดยระบุ number of the day ซ้ำกับไฟล์ก่อนหน้า (XXX)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_107"
    Then cancel file
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_107"
    Then should be display popup error message is "File_name_duplicate"
    Given Deleted Query file Cancel

  Scenario: TS002_001_013	ตรวจสอบการ Upload File โดยระบุ number of the day ไม่ถูก Format (XXX)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file negative dark brown mule registry "BrownMule_Registry_V1.0_002_CXL_2568-02-13_1000"
    Then should be display popup error message is "File_name_is_invalid"

  Scenario: TS002_001_014	ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ผิด Format ทั้งหมด
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file negative dark brown mule registry "BrownMuleRegistryV1.0002CXL2568-02-13109"
    Then should be display popup error message is "File_name_is_invalid"

# ======================================================================================
  Scenario: TS002_003_008	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ รายการที่ ด้วยตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_108"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_008"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_008"
    Given Deleted Query file Cancel

  Scenario: TS002_003_009	ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีที่มี Special Character "#" "@" "!" "$" "?"
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_109"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_009"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_009"
    Given Deleted Query file Cancel

  Scenario: TS002_003_010	ตรวจสอบการ Upload File โดยระบุ Over Max Length ที่ Field Mandatory ทั้งหมด
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_110"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_010"
    And display show detail when upload dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_010" row 7
    Given Deleted Query file Cancel

  Scenario: TS002_003_011	ตรวจสอบการ Upload File โดยระบุค่าว่าง ที่ Field Mandatory และ Optional 
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_111"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_011"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_011"
    Given Deleted Query file Cancel

  Scenario: TS002_003_012	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ เลขบัญชี 9 ตัวอักษร และ เหตุผลของคำสั่งยกเลิกหรือปลด  เป็นค่าว่าง
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_112"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_012"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_003_012"
    Given Deleted Query file Cancel

# ======================================================================================
  Scenario: TS002_004_001	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ รายการที่ เริ่มต้นด้วยเลข2
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_113"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_001"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_001"
    Given Deleted Query file Cancel

  Scenario: TS002_004_002	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ ประเภทคำสั่ง เป็น "สร้าง"
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_114"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_002"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_002"
    Given Deleted Query file Cancel

  Scenario: TS002_004_003	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ ประเภทคำสั่ง เป็น "ABC"
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_115"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_003"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_003"
    Given Deleted Query file Cancel
 
  Scenario: TS002_004_004	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ รหัสธนาคารเจ้าของบัญชี (Auto) ไม่ตรงกับธนาคารที่ login
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_116"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_004"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_004"
    Given Deleted Query file Cancel

  Scenario: TS002_004_005	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ รหัสธนาคารเจ้าของบัญชี (Auto) ไม่ตรงกับ Field ธนาคารเจ้าของบัญชี
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_117"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_005"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_005"
    Given Deleted Query file Cancel

  Scenario: TS002_004_006	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ เหตุผลของคำสั่งยกเลิกหรือปลด เป็นค่าอื่นๆที่ไม่อยู่ใน dropdown
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_118"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_006"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_006"
    Given Deleted Query file Cancel

  Scenario: TS002_004_007	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ Field ผลการ EDD ของลูกค้าธนาคาร
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_119"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_007"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_007"
    Given Deleted Query file Cancel

  Scenario: TS002_004_008	ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ Field วันที่ได้รับการ EDD (YYYY-MM-DD)
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_120"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_008"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_008"
    Given Deleted Query file Cancel

  Scenario: TS002_004_009	ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด โดยมี Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี ซ้ำกันในไฟล์เดียว
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_121"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_009"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_009" row 2
    Given Deleted Query file Cancel

  Scenario: TS002_004_010	ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  ไม่ได้เป็นบัญชีม้าน้ำตาลเข้ม
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_122"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_010"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_010"
    Given Deleted Query file Cancel

  Scenario: TS002_004_011	ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  เป็นบัญชีม้าน้ำตาลเข้มของธนาคารอื่น
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_123"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_011"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_011"
    Given Deleted Query file Cancel

  Scenario: TS002_004_012	ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  เป็นบัญชีม้าน้ำตาลเข้มที่ถูกยกเลิกไปแล้วของธนาคารอื่น
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-13_124"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_012"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_012"
    Given Deleted Query file Cancel
  
  Scenario: TS002_004_013	ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  ถูกยกเลิกไปแล้วในรอบก่อนหน้า
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-14_126"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_013"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_013"
    Given Deleted Query file Cancel

  Scenario: TS002_004_014	ตรวจสอบการ Upload File โดยระบุ  Field ทั้งหมด โดย Field เลขบัญชี  ไม่ตรงกับ หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล ที่อยู่ในบัญชีม้าน้ำตาลเข้ม
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry cancel case update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-14_127"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_014"
    And display show detail when upload "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/TS002_004_014"
    Given Deleted Query file Cancel