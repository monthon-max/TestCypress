Feature: Upload Brown Mule EP3

  As a Upload criteria
  I want to validate case Brown Mule EP3

    Scenario: TS001_001_002 ตรวจสอบสิทธิ์การเข้าถึง Menu "Brown Mule Registry" ในกรณีมี Permission "CFR_BROWN_MULE_REG"
      Given login ITMX web portal by BBL user
      Then go to menu Dark Brown Mule Registry
      When I look for button Dark Brown Mule Registry V1

    Scenario: TS001_001_003 ตรวจสอบการ Download File Template
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      Then Download File Template Create Dark Brown Mule
      Then I should see the Dark Brown Mule Registry file in the downloads folder

    Scenario: TS001_001_004 ตรวจสอบการ Upload File โดยระบุนามสกุลไฟล์ที่เป็น .xlsx
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_001_004"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_001_004"
      And CheckDB Validate Dark Brown Mule Registry is Filename
      Given Deleted All Dark Brown Mule

    Scenario: TS001_001_006 ตรวจสอบการ Upload File ขนาดไม่เกิน 1 MB หรือ เท่ากับ 1 MB
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_001_006"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_001_006"
      And CheckDB Validate Dark Brown Mule Registry is Filename
      Given Deleted All Dark Brown Mule

    Scenario: TS001_001_008  ตรวจสอบการระบุข้อมูลในไฟล์ Upload File จำนวน 100 records
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_108" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_001_008"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB For 100 record "Brown_mule_EP3_Upload/Json/TS001_001_008"
      Given Deleted All Dark Brown Mule For Loop

    Scenario: TS001_002_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_002_001"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_002_001"
      And CheckDB Validate Dark Brown Mule Registry is Filename
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยหมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล รองรับการกรอกข้อมูล ที่มี " " หรือ "-" หรือ ตัวเลขทั้งหมด
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_301" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_001"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_001"
      And CheckDB Validate Dark Brown Mule Registry is Filename
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_002 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยจำนวน 256 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_302" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_002"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_002"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_003 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุชื่อ บัญชีที่ต้องสงสัยโดยมี Special Character "."   "~"   "!"   "@"   "#"   "$"   %"   "^"   "&"   "*"   "("   ")"   "_"   "+"   "="   "-"   "\"   "]"   "["   "{"   "}"   ":"   "/"   "?"   "."   ">"   "<"   ","   "'"   """   "|" 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_303" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_003"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_003"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_004 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัยจำนวน 256 ตัวอักษร
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_304" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_004"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_004"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_005 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุนามสกุล บัญชีที่ต้องสงสัย โดยมี Special Character"."   "~"   "!"   "@"   "#"   "$"   %"   "^"   "&"   "*"   "("   ")"   "_"   "+"   "="   "-"   "\"   "]"   "["   "{"   "}"   ":"   "/"   "?"   "."   ">"   "<"   ","   "'"   """   "|" 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_305" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_005"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_005"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_006 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 10 ตัวอักษร โดยมี Special Character "-"   " " 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_306" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_006"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_006"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_007 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุเลขบัญชีจำนวน 16 ตัวอักษร โดยมี Special Character "-"   " "
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_307" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_007"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_007"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_027 ตรวจสอบการ Upload File โดยระบุ Field Mandatory และ Optional ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_327" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_027"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_027"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_028 ตรวจสอบการ Upload File โดยระบุMax Length ที่ Field Mandatory และ Optional ทั้งหมด กรอกข้อมูลที่ถูกต้องทั้งหมดที่ระบบสามารถรองรับได้ 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_328" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_028"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_028"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_030 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field วันที่เปิดบัญชี (พ.ศ.) YYYY-MM-DD น้อยกว่าหรือเท่ากับวันปัจจุบัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_330" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_030"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_030"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_003_033 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field เบอร์มือถือ มากกว่า1เบอร์โดย 
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_333" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_033"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_003_033"
      And CheckDB Validate Dark Brown Mule Registry is Filename
      And CheckDB Validate Dark Brown Mule Registry is PhoneNumber "Brown_mule_EP3_Upload/Json/TS001_003_033"
      Given Deleted All Dark Brown Mule

    Scenario: TS001_004_001 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี รายการที่1และ2 ซ้ำกัน แต่คนละ ธนาคารเจ้าของบัญชี ในไฟล์เดียวกัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_401" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_004_001" for some cases not success is row "2"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry for success and fail "Brown_mule_EP3_Upload/Json/TS001_004_001"
      Given Deleted All Dark Brown Mule For Loop

    Scenario: TS001_004_002 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ ธนาคารเจ้าของบัญชี รายการที่1และ2 ซ้ำกัน แต่คนละ เลขบัญชี ในไฟล์เดียวกัน
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_402" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry find at detail id "Brown_mule_EP3_Upload/Json/TS001_004_002"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule For Loop

    Scenario: TS001_004_003 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ เลขบัญชี ไฟล์ที่1และ2 ซ้ำกัน แต่คนละ ธนาคารเจ้าของบัญชี (คนละไฟล์)
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_433" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then confirm data to dark brown mule registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_434" and input file extension is "xlsx" Second
      When upload file positive dark brown mule Second
      Then should be validate label Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_004_003" for some cases not success is row "1"
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_004_003" for senario4
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule For Loop
      Given Query And GET ID PersonalID Second
      Given Deleted All Dark Brown Mule For Loop Second

    Scenario: TS001_004_004 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด โดยระบุ Field หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล และ ธนาคารเจ้าของบัญชี ไฟล์ที่1และ2 ซ้ำกัน แต่คนละ เลขบัญชี (คนละไฟล์)
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_533" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then confirm data to dark brown mule registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_544" and input file extension is "xlsx" Second
      When upload file positive dark brown mule Second
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry "Brown_mule_EP3_Upload/Json/TS001_004_004" for senario4
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule For Loop
      Given Query And GET ID PersonalID Second
      Given Deleted All Dark Brown Mule For Loop Second
    
    Scenario: TS001_004_013 ตรวจสอบการ Upload File โดยระบุ Field Mandatory ทั้งหมด และ Optional ระบุ Field ประเภทบุคคลของเจ้าของบัญชี โดยระบุรายการที่เป็น บุคคลธรรมดา,นิติบุคคล,ชาวต่างชาติ
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_413" and input file extension is "xlsx"
      When upload file positive dark brown mule
      Then confirm data to dark brown mule registry
      Given Query And CheckDB Validate Dark Brown Mule Registry find at detail id "Brown_mule_EP3_Upload/Json/TS001_004_013"
      Given Query And GET ID PersonalID
      Given Deleted All Dark Brown Mule For Loop      