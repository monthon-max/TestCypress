Feature: Upload Brown Mule

  As a Upload criteria
  I want to validate case Upload

# ======================================================================================
    Scenario: TS001_001_001 ตรวจสอบสิทธิ์การเข้าถึง Menu  "Brown Mule Registry" ในกรณีมี Permission "CFR_BROWN_MULE_REG"
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create
      When I look for button Brown Mule Registry

    Scenario: TS001_001_003 ตรวจสอบการ Download File Template
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      Then Download File Template
      Then I should see the Brown Mule file in the downloads folder

    Scenario: TS001_001_004 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่เป็น .xlsx
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_001_004"
      Then brown horse data import results "TS001_001_004"
      Then confirm data
      Then PreParaData Personal_ID is "0000000000173"
      Then decry and query db verify
      Then Query and validate for "TS001_001_004"

    Scenario: TS001_001_006 ตรวจสอบการ Upload File ขนาดไม่เกิน 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_001_006"
      Then brown horse data import results "TS001_001_006"
      Then confirm data
      Then PreParaData Personal_ID is "9900000100012"
      Then decry and query db verify
      Then Query and validate for "TS001_001_006"

    Scenario: TS001_001_007 ตรวจสอบการ Upload File ขนาด 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_001_007"
      Then brown horse data import results "TS001_001_007"
      Then confirm data
      Then PreParaData Personal_ID is "0900009900010"
      Then decry and query db verify
      Then Query and validate for "TS001_001_007"
  
    Scenario: TS001_001_009 ตรวจสอบการ Upload File จำนวน 99 records
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_001_009"
      Then brown horse data import results "TS001_001_009"
      Then confirm data
      Then PreParaData Personal_ID is "0900000100124"
      Then decry and query db verify
      Then Query and validate for "TS001_001_009"

    Scenario: TS001_001_010 ตรวจสอบการ Upload File จำนวน 100 records
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_001_010"
      Then brown horse data import results "TS001_001_010"
      Then confirm data
      Then PreParaData Personal_ID is "0900000200222"
      Then decry and query db verify
      Then Query and validate for "TS001_001_010"
    
    # ======================================================================================
    Scenario: TS001_002_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_002_001"
      Then brown horse data import results "TS001_002_001"
      Then confirm data
      Then PreParaData Personal_ID is "2000000100002"
      Then decry and query db verify
      Then Query and validate for "TS001_002_001"
    
    # # ======================================================================================
    Scenario: TS001_003_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล รองรับการกรอกข้อมูล ที่มี " " หรือ "-" หรือ ตัวเลขทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_001"
      Then brown horse data import results "TS001_003_001"
      Then confirm data
      Then PreParaData Personal_ID is "3000000010003"
      Then decry and query db verify
      Then Query and validate for "TS001_003_001"   

    Scenario: TS001_003_002 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยจำนวน 255 ตัวอักษร 
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_002"
      Then brown horse data import results "TS001_003_002"
      Then confirm data
      Then PreParaData Personal_ID is "3000000110001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_002"   

    Scenario: TS001_003_003 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยจำนวน 256 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_003"
      Then brown horse data import results "TS001_003_003"
      Then confirm data
      Then PreParaData Personal_ID is "3000001110002"
      Then decry and query db verify
      Then Query and validate for "TS001_003_003"   
    
    Scenario: TS001_003_004 รวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยโดยมี Special Character "."   "~"   "!"   "@"   "#"   "$"   %"   "^"   "&"   "*"   "("   ")"   "_"   "+"   "="   "-"   "\"   "]"   "["   "{"   "}"   ":"   "/"   "?"   "."   ">"   "<"   ","   "'"   """   "|"
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_004"
      Then brown horse data import results "TS001_003_004"
      Then confirm data
      Then PreParaData Personal_ID is "3000011110006"
      Then decry and query db verify
      Then Query and validate for "TS001_003_004" 

    Scenario: TS001_003_005 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัยจำนวน 255 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_005"
      Then brown horse data import results "TS001_003_005"
      Then confirm data
      Then PreParaData Personal_ID is "3000111110011"
      Then decry and query db verify
      Then Query and validate for "TS001_003_005"
    
    Scenario: TS001_003_006 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัยจำนวน 256 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_006"
      Then brown horse data import results "TS001_003_006"
      Then confirm data
      Then PreParaData Personal_ID is "3000000020002"
      Then decry and query db verify
      Then Query and validate for "TS001_003_006"

    Scenario: TS001_003_007 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัย โดยมี Special Character"."   "~"   "!"   "@"   "#"   "$"   %"   "^"   "&"   "*"   "("   ")"   "_"   "+"   "="   "-"   "\"   "]"   "["   "{"   "}"   ":"   "/"   "?"   "."   ">"   "<"   ","   "'"   """   "|"
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_007"
      Then brown horse data import results "TS001_003_007"
      Then confirm data
      Then PreParaData Personal_ID is "2000002100001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_007"

    Scenario: TS001_003_008 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 10 ตัวอักษร โดยมี Special Character "-"   " "
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_008"
      Then brown horse data import results "TS001_003_008"
      Then confirm data
      Then PreParaData Personal_ID is "2000032100001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_008"

    Scenario: TS001_003_009 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 16 ตัวอักษร โดยมี Special Character "-"   " "
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_009"
      Then brown horse data import results "TS001_003_009"
      Then confirm data
      Then PreParaData Personal_ID is "2000432100001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_009"

    Scenario: TS001_003_029 ตรวจสอบการ Upload File โดยระบุ Field Mandatory และ Optional ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_029"
      Then brown horse data import results "TS001_003_029"
      Then confirm data
      Then PreParaData Personal_ID is "2000432100001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_029"

    Scenario: TS001_003_030 ตรวจสอบการ Upload File โดยระบุMax Length ที่ Field Mandatory และ Optional ทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_030"
      Then brown horse data import results "TS001_003_030"
      Then confirm data
      Then PreParaData Personal_ID is "2005432100001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_030"

    Scenario: TS001_003_032 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่เปิดบัญชี (พ.ศ.) YYYY-MM-DD น้อยกว่าหรือเท่ากับวันปัจจุบัน
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_032"
      Then brown horse data import results "TS001_003_032"
      Then confirm data
      Then PreParaData Personal_ID is "2005412100001"
      Then decry and query db verify
      Then Query and validate for "TS001_003_032"
    
    Scenario: TS001_003_035 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เบอร์มือถือ มากกว่า1เบอร์โดย
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_003_035"
      Then brown horse data import results "TS001_003_035"
      Then confirm data
      Then PreParaData Personal_ID is "2005412100002"
      Then decry and query db verify
      Then Query and validate for "TS001_003_035"
    
    # ======================================================================================
    Scenario: TS001_004_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี รายการที่1และ2 ซ้ำกัน แต่คนละ ธนาคารเจ้าของบัญชี ในไฟล์เดียวกัน
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_004_001"
      Then brown horse data import results "TS001_004_001"
      Then confirm data
      Then PreParaData Personal_ID is "2005412100002"
      Then decry and query db verify
      Then Query and validate for "TS001_003_035"
    
    Scenario: TS001_004_002 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ ธนาคารเจ้าของบัญชี รายการที่1และ2 ซ้ำกัน แต่คนละ เลขบัญชี ในไฟล์เดียวกัน
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_004_002"
      Then brown horse data import results "TS001_004_002"
      Then confirm data
      Then PreParaData Personal_ID is "2065412100002"
      Then decry and query db verify
      Then Query and validate for "TS001_004_002"
    
    Scenario: TS001_004_003 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี ไฟล์ที่1และ2 ซ้ำกัน แต่คนละ ธนาคารเจ้าของบัญชี (คนละไฟล์)
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_004_003"
      Then brown horse data import results "TS001_004_003"
      Then confirm data
      Then PreParaData Personal_ID is "2765412100001"
      Then decry and query db verify
      Then Query and validate for "TS001_004_003"

    Scenario: TS001_004_004 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ ธนาคารเจ้าของบัญชี ไฟล์ที่1และ2 ซ้ำกัน แต่คนละ เลขบัญชี (คนละไฟล์)
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_004_004"
      Then brown horse data import results "TS001_004_004"
      Then confirm data
      Then PreParaData Personal_ID is "2765412100011"
      Then decry and query db verify
      Then Query and validate for "TS001_004_004"

    Scenario: TS001_004_014 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field ประเภทบุคคลของเจ้าของบัญชี โดยระบุรายการที่เป็น บุคคลธรรมดา,นิติบุคคล,ชาวต่างชาติ
      Given login ITMX web portal by BBL user
      And go to menu Brown Mule create master case by excel file
      When upload file positive brown male "/TS001_004_014"
      Then brown horse data import results "TS001_004_014"
      Then confirm data
      Then PreParaData Personal_ID is "2865412900001"
      Then decry and query db verify
      Then Query and validate for "TS001_004_014"