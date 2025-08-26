Feature: Dark Brown Mule Cancel positive

# ======================================================================================

  Scenario: TS002_001_001 ตรวจสอบสิทธิ์การเข้าถึง Menu "Brown Mule Registry" ในกรณีมี Permission "CFR_BROWN_MULE_REG"
    Given login ITMX web portal by BBL user
    And go to menu Brown Mule create
    When I look for button Exchange Account Registry

  Scenario: TS002_001_003 ตรวจสอบการ Download File Template
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    Then download template dark brown mule register
    Then I should see the dark brown mule registry file in the downloads folder

  Scenario: TS002_001_004 ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ถูกต้อง BrownMule_Registry_V1.0_BBB_CXL_YYYY-MM-DD_XXX.xlsx
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_301"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_004"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_004"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_301"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_004"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_004"
    Given Deleted query db file new and file cancel

  Scenario: TS002_001_016 ตรวจสอบการ Upload File ขนาดไม่เกิน 1 MB หรือ เท่ากับ 1 MB
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_360"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_016"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_016"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_360"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_016"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_016"
    Given Deleted query db file new and file cancel

  # Scenario:** data is wrong 2id TS002_001_018 ตรวจสอบการ Upload File จำนวน 100 records
  #   Given login ITMX web portal by BBL user
  #   And go to menu Dark brown mule registry cancel
  #   When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_362"
  #   Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_018"
  #   Then confirm data
  #   Given Query and checkDB for 100 record case cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_018"
  #   Then cancel file
  #   When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_362"
  #   Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_018"
  #   Then confirm data
  #   Given Query checkDB cancel calidate brown mule registry cancel 100_record "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_001_018"
  #   Given Deleted All Dark Brown Mule 100 record

  Scenario: TS002_002_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-17_302"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_002_001"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_002_001"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-17_302"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_002_001"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_002_001"
    Given Deleted query db file new and file cancel

  Scenario: TS002_003_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล รองรับการกรอกข้อมูล ที่มี " " หรือ "-" หรือ ตัวเลขทั้งหมด
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-17_303"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_001"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_001"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-17_303"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_001"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_001"
    Given Deleted query db file new and file cancel

  Scenario: TS002_003_002 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล โดยมี Special Character "." "~" "!" "@" "#" "$" %" "^" "&" "*" "(" ")" "_" "+" "=" "-" "\" "]" "[" "{" "}" ":" ";" "/" "?" "." ">" "<" "," " " "'"
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_304"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_002"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_002"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_304"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_002"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_002"
    Given Deleted query db file new and file cancel

  Scenario: TS002_003_003 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล จำนวน 13 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_305"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_003"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_003"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_305"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_003"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_003"
    Given Deleted query db file new and file cancel
    
  Scenario: TS002_003_004 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุ หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล จำนวน 35 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_306"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_004"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_004"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_306"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_004"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_004"
    Given Deleted query db file new and file cancel
   
  Scenario: TS002_003_005 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยเลขบัญชี รองรับการกรอกข้อมูล ที่มี " " หรือ "-" หรือ ตัวเลขทั้งหมด
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_307"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_005"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_005"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_307"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_005"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_005"
    Given Deleted query db file new and file cancel
    
  Scenario: TS002_003_006 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุเลขบัญชี  จำนวน 10 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_308"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_006"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_006"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_308"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_006"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_006"
    Given Deleted query db file new and file cancel

  Scenario: TS002_003_007 ตรวจสอบการ Upload File โดยระบุ Field ทั้งหมด โดยระบุเลขบัญชี  จำนวน 16 ตัวอักษร
    Given login ITMX web portal by BBL user
    And go to menu Dark brown mule registry cancel
    When upload file dark brown mule registry case add positive update day latest "BrownMule_Registry_V1.0_002_NEW_2568-02-18_309"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_007"
    Then confirm data
    Given Query checkDB validate add file dark brown mule registry "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_007"
    Then cancel file
    When upload file dark brown mule registry cancel case positive update day latest "BrownMule_Registry_V1.0_002_CXL_2568-02-18_309"
    Then should be display upload file dark brown mule registry data show detail cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_007"
    Then confirm data
    Given Query checkDB cancel calidate brown mule registry cancel "DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/TS002_003_007"
    Given Deleted query db file new and file cancel