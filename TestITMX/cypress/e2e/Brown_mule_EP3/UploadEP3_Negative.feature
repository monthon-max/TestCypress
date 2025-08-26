Feature: Upload Brown Mule EP3 Negative

  As a Upload criteria
  I want to validate case Brown Mule EP3 Negative

    Scenario: TS001_001_001 ตรวจสอบสิทธิ์การเข้าถึง Menu  "Brown Mule Registry" ในกรณีมี Permission "CFR_BROWN_MULE_REG"
      Given login ITMX web portal by darkbrown user
      And frist go to menu Dark Brown Mule Registry
      When I Dont look for button Dark Brown Mule Registry

    Scenario: TS001_001_005 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่ไม่ใช่ .xlsx เช่น  .csv หรือ .pdf'
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "pdf"
      When upload file negative dark brown mule and morify file extension is "pdf"
      Then should be display popup error message is "file_name_extension"

    Scenario: TS001_001_007 ตรวจสอบการ Upload File ขนาดเกิน 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_007" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_fxceed_limit"

    Scenario: TS001_001_009 ตรวจสอบการระบุข้อมูลในไฟล์ Upload File จำนวน 101 records
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_109" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "list_in_limit"

    Scenario: TS001_001_010 'ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ไม่ถูกต้อง - ระบุชื่อไฟล์ XXXBrownMule_Registry_V1.0
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" and prefix is "XXX"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"
      
    Scenario: TS001_001_011 'ตรวจสอบ Condition field  ชื่อธนาคารไม่ตรงกับธนาคาร - login ธนาคาร KTB 006 - ชื่อไฟล์ BBL 002
      Given login ITMX web portal by KTB user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "File_name_invalid_bank_code"
      
    Scenario: TS001_001_012 'ตรวจสอบ Condition field ชื่อไฟล์รหัสธนาคารไม่ถูกต้อง ในกรณีข้อมูลข้างในถูกต้อง - ระบุเพิ่ม 002T
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" and bankcode is "002T"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"

    Scenario: TS001_001_013 'ตรวจสอบ Condition field ประเภทคำสั่งไม่ถูกต้อง ในกรณีข้อมูลข้างในถูกต้อง - NEW > NEWX
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" and filenametype is "NEWX"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"

    Scenario: TS001_001_014 ตรวจสอบ Condition field ในกรณี ชื่อไฟล์ Add เป็น CXL - ระบบ CXL
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" and filenametype is "CXL"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_format_invalid"

    Scenario: TS001_001_015 ตรวจสอบ Condition field ในกรณีข้อมูลข้างในถูกต้อง - ระบุ Format ของวันที่ไม่ถูกต้อง (YYYY-MM) เดือนไม่ตรงกับปัจจุบัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" and validate month is not current
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_invali_date"

    Scenario: TS001_001_016 'ตรวจสอบ Condition field รูปแบบหรือข้อมูลวันที่ไม่ถูกต้อง ในกรณีข้อมูลข้างในถูกต้อง - ระบุ DD-MM-YYYY
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" and fix date day is "DD" month is "MM" year is "YYYY"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"

    Scenario: TS001_001_017 ตรวจสอบการ Upload File โดยระบุ number of the day ซ้ำกับไฟล์ก่อนหน้า (XXX)
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_117" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then confirm data to dark brown mule registry
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "File_name_same_in_system"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_001_018 ตรวจสอบการ Upload File โดยระบุชื่อไฟล์ผิด Format ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx" format filename is "BrownMuleRegistryV1.0BBBCLXYYYY-MM-DDXXX.xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be display popup error message is "file_name_prefix"

    Scenario: TS001_003_008 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล กรอกข้อมูลที่ไม่รองรับ โดยเลือก ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_308" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_008" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_009 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยจำนวน 257 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_309" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_009" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_010 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัยจำนวน 257 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_310" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_010" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_011 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 9 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_311" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_011" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_012 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 17 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_312" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_012" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_013 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีที่มี Special Character "#"   "@"   "!"   "$"   "?"
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_313" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_013" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_014 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมดไม่ระบุ Field รายการที่
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_314" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_014" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_015 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field ประเภทคำสั่ง
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_315" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_015" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_016 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field ข้อเหตุอันควรสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_316" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_016" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_017 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_317" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_017" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_018 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field ชื่อ บัญชีที่ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_318" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_018" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_019 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field นามสกุล บัญชีที่ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry 
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_319" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_019" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_020 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field ธนาคารเจ้าของบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_320" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_020" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_021 **defect** ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด  ไม่ระบุ Field รหัสธนาคารเจ้าของบัญชี (Auto)
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_321" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_021" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_022 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field เลขบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_322" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_022" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule
      
    Scenario: TS001_003_023 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ Field รายการที่ และ เลขบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_323" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_023" and validate trasition row is "2"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_024 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด ไม่ระบุ  Field รายการที่ ผิด Fomat และ ไม่ระบุนามสกุล
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_324" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_024" and validate trasition row is "2"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_025 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด มี 2 รายการแรก ไม่ระบุ Field ข้อเหตุอันควรสงสัย รายการสอง ระบุ Feild รหัสธนาคารเจ้าของบัญชี (Auto) ผิด Fomat 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_325" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_025" and validate trasition row is "2"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_026 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด โดยมี Field ประเภทบุคคลเจ้าของบัญชี เป็นนิติบุคคล และ ระบุค่าใน Field นามสกุล บัญชีที่ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_326" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_026" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_029 ตรวจสอบการ Upload File โดยระบุ Over Max Length ที่ Field Mandatory และ Optional ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้ 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_329" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_029" and validate trasition row is "25"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_031 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่เปิดบัญชี (พ.ศ.) YYYY-MM-DD มากกว่าวันปัจจุบัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_331" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_031" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_032 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่เปิดบัญชี (พ.ศ.) YYYY-MM-DD ไม่ถูก Format
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_332" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_003_032" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_005 ตรวจสอบการ Upload File โดยระบุเลขลำดับ รายการที่ เรียงลำดับโดยเริ่มจาก2 กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_405" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_005" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_006 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field ขยายผลจาก (Case ID) ที่หมายเลขเคส (Bank Case ID) ไม่มีในระบบ
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_406" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_006" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_007 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด โดยมี Fieldหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี โดยระบุเป็นบุคคลธรรมดา ซ้ำกับข้อมูลที่เคย Upload แล้ว
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_407" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_007" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_008 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เหตุอันควรสงสัย ระบุข้อมูลที่ไม่อยู่ในตารางAppendix F
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_408" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_008" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_009 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เหตุอันควรสงสัย ระบุข้อมูลที่ไม่สอดคล้องกับ Field ข้อเหตุอันควรสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_409" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_009" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_010 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เหตุอันควรสงสัย เป็นค่าว่าง
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_410" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_010" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule
      
    Scenario: TS001_004_011 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมีรายการที่เป็นบัญชีม้าเทา, ม้าขาว, บุคคลเสี่ยง, บุคคลรายใหม่
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_411" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_011" and validate trasition row is "2"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry for success and fail "Brown_mule_EP3_Upload/Json/TS001_004_011"
      Given Deleted All Dark Brown Mule For Loop

    Scenario: TS001_004_012 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล ที่เป็นบัญชีม้าเทาเข้ม เงื่อนไข1 โดยที่เลขบัญชี และ ธนาคารเจ้าของบัญชี  ใหม่
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_412" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_012" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_014 ตรวจสอบการ Upload File โดยระบุ  Field Mandatory ทั้งหมด โดยมี Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี โดยระบุเป็น บุคคลธรรมดา  ซ้ำกันในไฟล์เดียว โดยระบุประเภทบุคคลเจ้าของบัญชีเหมือนกัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_414" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_014" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_015 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมี Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี โดยระบุเป็น บุคคลธรรมดา  ซ้ำกันในไฟล์เดียว โดยระบุประเภทบุคคลเจ้าของบัญชีต่างกัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Negative" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_415" and input file extension is "xlsx"
      When upload file negative dark brown mule and morify file extension is "xlsx"
      Then should be validate label dark brown mule and data not success "Brown_mule_EP3_Upload/Json/TS001_004_015" and validate trasition row is "1"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule






