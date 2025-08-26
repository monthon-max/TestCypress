Feature: Upload Brown Mule

  As a Upload criteria
  I want to validate case Upload
# ======================================================================================

    Scenario: TS001_001_002  ตรวจสอบสิทธิ์การเข้าถึง Menu  "Brown Mule Registry" ในกรณีที่ไม่มี Permission "CFR_BROWN_MULE_REG"
      Given login ITMX web portal by KBNK user
      And go to menu Brown Mule create
      Then I should see button Brown Mule Registry on the page

    Scenario: TS001_001_005 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่ไม่ใช่ .xlsx เช่น  .csv หรือ .pdf'
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_001_005" pdf
      Then should be display popup subcase error message is "invalid_file_extension"

    Scenario: TS001_001_008 ตรวจสอบการ Upload File ขนาดเกิน 1 MB 
     Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_001_008"
      Then should be display popup subcase error message is "file_fxceed_limit"

    Scenario: TS001_001_011 ตรวจสอบการ Upload File จำนวน 101 records
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_001_011"
      Then should be display popup subcase error message is "record_exceed_limit"

# ======================================================================================
    Scenario: TS001_003_010 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล กรอกข้อมูลที่ไม่รองรับ โดยเลือก ประเภทบุคคลของเจ้าของบัญชี : บุคคลธรรมดา
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_010"
      Then should be display master upload file brown mule preview page of "TS001_003_010" with valid description
      Then should be display data success in file "TS001_003_010"
      And display show detail when upload "TS001_003_010"

    Scenario: TS001_003_011 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยจำนวน 257 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_011"
      Then should be display master upload file brown mule preview page of "TS001_003_011" with valid description
      Then should be display data success in file "TS001_003_011"
      And display show detail when upload "TS001_003_011"

    Scenario: TS001_003_012 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัยจำนวน 257 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_012"
      Then should be display master upload file brown mule preview page of "TS001_003_012" with valid description
      Then should be display data success in file "TS001_003_012"
      And display show detail when upload "TS001_003_012"

    Scenario: TS001_003_013 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 9 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_013"
      Then should be display master upload file brown mule preview page of "TS001_003_013" with valid description
      Then should be display data success in file "TS001_003_013"
      And display show detail when upload "TS001_003_013"

    Scenario: TS001_003_014 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 17 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_014"
      Then should be display master upload file brown mule preview page of "TS001_003_014" with valid description
      Then should be display data success in file "TS001_003_014"
      And display show detail when upload "TS001_003_014"

    Scenario: TS001_003_015 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีที่มี Special Character "#"   "@"   "!"   "$"   "?"
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_015"
      Then should be display master upload file brown mule preview page of "TS001_003_015" with valid description
      Then should be display data success in file "TS001_003_015"
      And display show detail when upload "TS001_003_015"

    Scenario: TS001_003_016 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมดไม่ระบุ Field รายการที่
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_016"
      Then should be display master upload file brown mule preview page of "TS001_003_016" with valid description
      Then should be display data success in file "TS001_003_016"
      And display show detail when upload "TS001_003_016"

    Scenario: TS001_003_017 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field ประเภทคำสั่ง
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_017"
      Then should be display master upload file brown mule preview page of "TS001_003_017" with valid description
      Then should be display data success in file "TS001_003_017"
      And display show detail when upload "TS001_003_017"

    Scenario: TS001_003_018 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field ข้อเหตุอันควรสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_018"
      Then should be display master upload file brown mule preview page of "TS001_003_018" with valid description
      Then should be display data success in file "TS001_003_018"
      And display show detail when upload "TS001_003_018"

    Scenario: TS001_003_019 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_019"
      Then should be display master upload file brown mule preview page of "TS001_003_019" with valid description
      Then should be display data success in file "TS001_003_019"
      And display show detail when upload "TS001_003_019"

    Scenario: TS001_003_020 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field ชื่อ บัญชีที่ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_020"
      Then should be display master upload file brown mule preview page of "TS001_003_020" with valid description
      Then should be display data success in file "TS001_003_020"
      And display show detail when upload "TS001_003_020"

    Scenario: TS001_003_021 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field นามสกุล บัญชีที่ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_021"
      Then should be display master upload file brown mule preview page of "TS001_003_021" with valid description
      Then should be display data success in file "TS001_003_021"
      And display show detail when upload "TS001_003_021"

    Scenario: TS001_003_022 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field ธนาคารเจ้าของบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_022"
      Then should be display master upload file brown mule preview page of "TS001_003_022" with valid description
      Then should be display data success in file "TS001_003_022"
      And display show detail when upload "TS001_003_022"

    Scenario: TS001_003_023 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field รหัสธนาคารเจ้าของบัญชี (Auto)
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_023"
      Then should be display master upload file brown mule preview page of "TS001_003_023" with valid description
      Then should be display data success in file "TS001_003_023"
      And display show detail when upload "TS001_003_023"

    Scenario: TS001_003_024 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field เลขบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_024"
      Then should be display master upload file brown mule preview page of "TS001_003_024" with valid description
      Then should be display data success in file "TS001_003_024"
      And display show detail when upload "TS001_003_024"

    Scenario: TS001_003_025 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด ไม่ระบุ Field รายการที่ และ เลขบัญชี
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_025"
      Then should be display master upload file brown mule preview page of "TS001_003_025" with valid description
      Then should be display data success in file "TS001_003_025"
      And display show detail when upload "TS001_003_025"

    Scenario: TS001_003_026 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และระบุ Field รายการที่ ผิด Fomat และ ไม่ระบุนามสกุล
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_026"
      Then should be display master upload file brown mule preview page of "TS001_003_026" with valid description
      Then should be display data success in file "TS001_003_026"
      And display show detail when upload "TS001_003_026"

    Scenario: TS001_003_027 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด มี 2 รายการ รายการแรก ไม่ระบุ Field ข้อเหตุอันควรสงสัย,รายการสอง ระบุ Feild รหัสธนาคารเจ้าของบัญชี (Auto) ผิด Fomat
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_027"
      Then should be display master upload file brown mule preview page of "TS001_003_027" with valid description
      Then should be display data success in file "TS001_003_027"
      And display show detail when upload "TS001_003_027" row 2

    Scenario: TS001_003_028 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมี Field ประเภทบุคคลเจ้าของบัญชี เป็นนิติบุคคล และ ระบุค่าใน Field นามสกุล บัญชีที่ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_028"
      Then should be display master upload file brown mule preview page of "TS001_003_028" with valid description
      Then should be display data success in file "TS001_003_028"
      And display show detail when upload "/TS001_003_028"

    Scenario: TS001_003_031 ตรวจสอบการ Upload File โดยระบุ Over Max Length ที่ Field Mandatory และ Optional ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_031"
      Then should be display master upload file brown mule preview page of "TS001_003_031" with valid description
      Then should be display data success in file "TS001_003_031"
      And display show detail when upload "/TS001_003_031" row 25

    Scenario: TS001_003_033 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่เปิดบัญชี (พ.ศ.) YYYY-MM-DD มากกว่าวันปัจจุบัน
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_033"
      Then should be display master upload file brown mule preview page of "TS001_003_033" with valid description
      Then should be display data success in file "TS001_003_033"
      And display show detail when upload "/TS001_003_033"

    Scenario: TS001_003_034 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่เปิดบัญชี (พ.ศ.) YYYY-MM-DD ไม่ถูก Format
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_003_034"
      Then should be display master upload file brown mule preview page of "TS001_003_034" with valid description
      Then should be display data success in file "TS001_003_034"
      And display show detail when upload "/TS001_003_034"

# ======================================================================================    
    Scenario: TS001_004_005 ตรวจสอบการ Upload File โดยระบุเลขลำดับ รายการที่ เรียงลำดับโดยเริ่มจาก2 กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_005"
      Then should be display master upload file brown mule preview page of "TS001_004_005" with valid description
      Then should be display data success in file "TS001_004_005"
      And display show detail when upload "/TS001_004_005"

    Scenario: TS001_004_006 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field ขยายผลจาก (Case ID) ที่หมายเลขเคส (Bank Case ID) ไม่มีในระบบ
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_006"
      Then should be display master upload file brown mule preview page of "TS001_004_006" with valid description
      Then should be display data success in file "TS001_004_006"
      And display show detail when upload "/TS001_004_006"

    Scenario: TS001_004_007 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมี Fieldหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี โดยระบุเป็นบุคคลธรรมดา ซ้ำกับข้อมูลที่เคย Upload แล้ว
      # Given login ITMX web portal by BBL user
      # And go to menu Brown Mule create master case by excel file
      # When upload file negative brown "/TS001_004_007"
      # Then confirm data
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_007"
      Then should be display master upload file brown mule preview page of "TS001_004_007" with valid description
      Then should be display data success in file "TS001_004_007"
      And display show detail when upload "/TS001_004_007"

    Scenario: TS001_004_008 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เหตุอันควรสงสัย ระบุข้อมูลที่ไม่อยู่ในตารางAppendix F
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_008"
      Then should be display master upload file brown mule preview page of "TS001_004_008" with valid description
      Then should be display data success in file "TS001_004_008"
      And display show detail when upload "/TS001_004_008"

    Scenario: TS001_004_009 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เหตุอันควรสงสัย ระบุข้อมูลที่ไม่สอดคล้องกับ Field ข้อเหตุอันควรสงสัย
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_009"
      Then should be display master upload file brown mule preview page of "TS001_004_009" with valid description
      Then should be display data success in file "TS001_004_009"
      And display show detail when upload "/TS001_004_009"

    Scenario: TS001_004_010 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เหตุอันควรสงสัย เป็นค่าว่าง
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_010"
      Then should be display master upload file brown mule preview page of "TS001_004_010" with valid description
      Then should be display data success in file "TS001_004_010"
      And display show detail when upload "/TS001_004_010"

    Scenario: TS001_004_011 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่ปลด ม้าน้ำตาล (พ.ศ.) YYYY-MM-DD ตาม Format
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_011"
      Then should be display master upload file brown mule preview page of "TS001_004_011" with valid description
      Then should be display data success in file "TS001_004_011"
      And display show detail when upload "/TS001_004_011"

    Scenario: TS001_004_012 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมีรายการที่เป็นบัญชีม้าเทา, ม้าขาว, บุคคลเสี่ยง, บุคคลรายใหม่
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_012"
      Then should be display master upload file brown mule preview page of "TS001_004_012" with valid description
      Then should be display data success in file "TS001_004_012"
      And display show detail when upload "/TS001_004_012" row 2

    Scenario: TS001_004_013 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล ที่เป็นบัญชีม้าเทาเข้ม เงื่อนไข1 โดยที่เลขบัญชี และ ธนาคารเจ้าของบัญชี  ใหม่
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_013"
      Then should be display master upload file brown mule preview page of "TS001_004_013" with valid description
      Then should be display data success in file "TS001_004_013"
      And display show detail when upload "/TS001_004_013"

    Scenario: TS001_004_015 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมี Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี โดยระบุเป็น บุคคลธรรมดา  ซ้ำกันในไฟล์เดียว โดยระบุประเภทบุคคลเจ้าของบัญชีเหมือนกัน
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_015"
      Then should be display master upload file brown mule preview page of "TS001_004_015" with valid description
      Then should be display data success in file "TS001_004_015"
      And display show detail when upload "/TS001_004_015"

    Scenario: TS001_004_016 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยมี Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี และ ธนาคารเจ้าของบัญชี โดยระบุเป็น บุคคลธรรมดา  ซ้ำกันในไฟล์เดียว โดยระบุประเภทบุคคลเจ้าของบัญชีต่างกัน
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file negative brown "/TS001_004_016"
      Then should be display master upload file brown mule preview page of "TS001_004_016" with valid description
      Then should be display data success in file "TS001_004_016"
      And display show detail when upload "/TS001_004_016"