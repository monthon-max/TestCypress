Feature: Validate Upload Sub Case MBs Negative
      
    @optional    #@only
    Scenario: TC001_001 ตรวจสอบการ Upload MasterCase โดยระบุ Bank Case Id ที่มีอยู่ในระบบ
      Given login ITMX web portal by CMBT user
      And go to menu create master case by excel file
      And should be copy download file "TC001_001"
      Then Query Data Financial Institution "1" By Shortname "BBL" and Data BankcaseID Now
      Then PreparaData file excel folder is "positive/TC001_001_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_001"
      When upload file positive "/TC001_001_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_001_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_bankcaseID"
      Then deleted file
    @optional    #@only
    Scenario: TC001_002 'ตรวจสอบการ Upload MasterCase โดยใช้ template เก่า
      Given login ITMX web portal by CMBT user
      And go to menu create master case by excel file
      When upload file positive "/scenario1/Horse1-NewCase-From-CMBT"
      Then should be display error message mastercase is "template_version"
    @optional    #@only
    Scenario: TC001_004 ตรวจสอบการ Upload MasterCase โดย File Name > 150 Digit
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "MasterCassssssssssssssssssssssssSssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/MasterCassssssssssssssssssssssssSssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "full"
      When upload file positive "/MasterCassssssssssssssssssssssssSssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/MasterCassssssssssssssssssssssssSssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_filename"    
      Then deleted file
    @optional    #@only
    Scenario: TC001_005 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล 1 Field - Invalid Condition - Field Bank Case ID (ธนาคารต้นทาง)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_005"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_005_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_005"
      When upload file positive "/TC001_005_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_005_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_not_complate"    
      Then deleted file
    @optional    #@only
    Scenario: TC001_009 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น รายละเอียดข้อมูลเคส - Invalid Missing Field เฉพาะ Field M1 - Field Bank Case ID (ธนาคารต้นทาง) - Field การตรวจพบรายการ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_009"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_009_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_009"
      When upload file positive "/TC001_009_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_009_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_bankcase_and_list"    
      Then deleted file
    @optional    #@only
    Scenario: TC001_010 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Invalid Missing Field เฉพาะ Field M1 - Field เลขบัตรประชาชนหรือหนังสือเดินทาง - Field ประเภทบุคคลของเจ้าของบัญชี - Field ชื่อ - Field นามสกุล - Field ลักษณะเคส - Field เลขที่บัญชีผู้เสียหาย - Field ธนาคารเจ้าของบัญชี"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_010"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_010_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_010"
      When upload file positive "/TC001_010_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_010_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_not_complate"    
      Then should be display error message mastercase is "invalid_condition_m1"    
      Then deleted file
    @optional    #@only
    Scenario: TC001_011 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Missing Field เฉพาะ Field M1 - Field ชื่อผู้โอน - Field นามสกุลผู้โอน - Field เลขที่บัญชีผู้โอน - Field ธนาคารผู้โอน"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_011"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_011_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_011"
      When upload file positive "/TC001_011_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_011_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_condition_accountnumber"    
      Then deleted file
    @optional    #@only
    Scenario: TC001_012 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Missing Field เฉพาะ Field M1 - Field ชื่อผู้ต้องสงสัย - Field นามสกุลผู้ต้องสงสัย - Field ประเภทของ PromptPay (ถ้ามี) - Field เบอร์ Promptpay (ถ้ามี) - Field เลขที่บัญชีผู้ต้องสงสัย - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย - Field วันที่เสียหาย (วันที่เกิดรายการ) (2566-MM-DD) - Field เวลาที่เสียหาย (เวลาที่เกิดรายการ) (hh:mm:ss) - Field ยอดเงินที่เสียหาย"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_012"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_012_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_012"
      When upload file positive "/TC001_012_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_012_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_condition_receiver"    
      Then should be display error message mastercase is "invalid_condition_date_receiver"    
      Then deleted file
    @optional    #@only
    Scenario: TC001_015 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Missing Field - Field หมายเลขอ้างอิงชำระบิล (Biller ID): ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_015"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_015_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_015"
      When upload file positive "/TC001_015_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_015_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_condition_biller"
      Then should be display error message mastercase is "invalid_condition_ref1"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_018 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Invalid Missing Field - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_018"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_018_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_018"
      When upload file positive "/TC001_018_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_018_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_condition_statusmoney"       
      Then deleted file
    @optional  #@only
    Scenario: TC001_020 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น รายละเอียดข้อมูลเคส - Invalid Format Field - Field Bank Case ID (ธนาคารต้นทาง) - Field การตรวจพบรายการ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_020"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_020_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_020"
      When upload file positive "/TC001_020_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_020_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_detail_bankcaseID"
      Then should be display error message mastercase is "invalid_detail_list"
      Then deleted file
    @optional  #@only
    Scenario: TC001_021 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Invalid Format Field - Field เลขบัตรประชาชนหรือหนังสือเดินทาง - Field ประเภทบุคคลของเจ้าของบัญชี - Field ชื่อ - Field นามสกุล - Field ลักษณะเคส - Field รายละเอียดเคส (1024 ตัวอักษร) - Field เลขที่บัญชีผู้เสียหาย - Field ธนาคารเจ้าของบัญชี - Field Bank_code (auto) - Field เบอร์โทรศัพท์ผู้เสียหาย - Field ชื่อ-นามสกุล ผู้ติดต่อ - Field เบอร์ผู้ติดต่อ - Field อีเมลผู้ติดต่อ - Field ความสัมพันธ์กับผู้เสียหาย"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_021"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_021_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_021"
      When upload file positive "/TC001_021_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_021_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_data_m1"
      Then should be display error message mastercase is "invalid_data_m1_condition"
      Then deleted file
    @optional  #@only
    Scenario: TC001_022 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Format Field - Field ชื่อผู้โอน - Field นามสกุลผู้โอน - Field เลขที่บัญชีผู้โอน - Field ธนาคารผู้โอน - Field Bank_code (auto) - Field IP Address ของผู้โอน"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_022"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_022_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_022"
      When upload file positive "/TC001_022_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_022_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_data_m1_condition_v1"
      Then should be display error message mastercase is "invalid_data_m1_condition_v2"
      Then deleted file
    @optional  #@only
    Scenario: TC001_023 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Format Field - Field เลขบัตรประชาชนหรือหนังสือเดินทางของผู้ต้องสงสัย - Field ประเภทบุคคลของเจ้าของบัญชีผู้ต้องสงสัย - Field เบอร์โทรศัพท์ผู้ต้องสงสัย - Field ชื่อผู้ต้องสงสัย - Field นามสกุลผู้ต้องสงสัย - Field ประเภทของ PromptPay (ถ้ามี) - Field เบอร์ Promptpay (ถ้ามี) - Field เลขที่บัญชีผู้ต้องสงสัย - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย - Field Bank_code (auto) - Field วันที่เสียหาย (วันที่เกิดรายการ) (2566-MM-DD) - Field เวลาที่เสียหาย (เวลาที่เกิดรายการ) (hh:mm:ss) - Field Instruction ID(TXN ID) - Field ยอดเงินที่เสียหาย - Field วันและเวลาที่ระงับธุรกรรม (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลด (2566-MM-DD hh:mm) - Field ประเภทของการอายัดจากธนาคาร - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) - Field วันและเวลาที่อายัดจากตำรวจ (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลดจากตำรวจ (2566-MM-DD hh:mm) - Field ประเภทของหมายอายัดจากตำรวจ - Field ใส่หมายอายัดจากตำรวจ - Field จำนวนวงเงินที่อายัดจากตำรวจ - Field ใส่หมายปลดอายัดจากตำรวจ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_023"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_023_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_023"
      When upload file positive "/TC001_023_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_023_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then should be display error message mastercase is "invalid_data_m2_condition"
      Then should be display error message mastercase is "invalid_data_m2_not_complate"
      Then deleted file
    @optional  #@only
    Scenario: TC001_024 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Format (Appendix 1.6) - Field เลขที่บัญชีผู้ต้องสงสัย"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_024"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_024_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_024"
      When upload file positive "/TC001_024_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_024_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_none_bank_account"
      Then deleted file
    @optional  #@only
    Scenario: TC001_025 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Invalid Format - Field บัญชี Settlement (บัญชีกลาง) Example - <Bank Abbreviate> + “:” + <Settlement account>"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_025"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_025_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_025"
      When upload file positive "/TC001_025_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_025_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_none_bank_settlement"
      Then deleted file
    @optional    #@only
    Scenario: TC001_027 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ในส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Invalid Format (Appendix 1.6) - Field Biiler
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_027"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_027_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_027"
      When upload file positive "/TC001_027_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_027_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_o_biller"
      Then deleted file
    @optional    #@only
    Scenario: TC001_028 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลธุรกรรมประเภท Payment - Invalid Format (Appendix 1.7) - Field หมายเลขชำระอ้างอิง 1 (REF1)
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_028"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_028_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_028"
      When upload file positive "/TC001_028_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_028_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_o_ref1"
      Then deleted file
    @optional    #@only
    Scenario: TC001_029 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลธุรกรรมประเภท Payment - Invalid Format (Appendix 1.7) - Field หมายเลขชำระอ้างอิง 2 (REF2)
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_029"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_029_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_029"
      When upload file positive "/TC001_029_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_029_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_o_ref2"
      Then deleted file
    @optional    #@only
    Scenario: TC001_030 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลธุรกรรมประเภท Payment - Invalid Format (Appendix 1.7) - Field หมายเลขชำระอ้างอิง 3 (REF3)
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_030"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_030_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_030"
      When upload file positive "/TC001_030_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_030_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_o_ref3"
      Then deleted file
    @optional    #@only
    Scenario: TC001_031 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ "ระบุข้อมูล - ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน กรณี ถอนเงินสดให้ระบุ ATM: 12345||| Branch: สาขาถนนรัชดา-ห้วยขวาง|||"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_031"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_031_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_031"
      When upload file positive "/TC001_031_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_031_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_o_changestatus_money"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_032 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น รายละเอียดข้อมูลเคส - Invalid Lenght - Field Bank Case ID (ธนาคารต้นทาง) มากกว่า > 15 Digit"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_032"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_032_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_032"
      When upload file positive "/TC001_032_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_032_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_detail_bankcaseID"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_033 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Invalid Lenght - Field เลขบัตรประชาชนหรือหนังสือเดินทาง มากกว่า > 35 Digit - Field ชื่อ มากกว่า > 256 Digit - Field นามสกุล มากกว่า > 256 Digit - Field รายละเอียดเคส (1024 ตัวอักษร) มากกว่า > 1024 Digit - Field เลขที่บัญชีผู้เสียหาย มากกว่า > 16 Digit - Field เบอร์โทรศัพท์ผู้เสียหาย มากกว่า > 35 Digit - Field ชื่อ-นามสกุล ผู้ติดต่อ มากกว่า > 256 Digit - Field เบอร์ผู้ติดต่อ มากกว่า > 35 Digit - Field อีเมลผู้ติดต่อ มากกว่า > 256 Digit"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_033"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_033_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_033"
      When upload file positive "/TC001_033_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_033_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_data_m1_v1"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_034 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Lenght - Field ชื่อผู้โอน มากกว่า > 256 Digit - Field นามสกุลผู้โอน มากกว่า > 256 Digit - Field เลขที่บัญชีผู้โอน มากกว่า > 16 Digit - Field IP Address ของผู้โอน มากกว่า > 50 Digit"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_034"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_034_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_034"
      When upload file positive "/TC001_034_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_034_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_data_m1_condition_v1"
      Then should be display error message mastercase is "invalid_condition_m1_v1"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_035 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Lenght - Field เลขบัตรประชาชนหรือหนังสือเดินทางของผู้ต้องสงสัย มากกว่า > 35 Digit - Field เบอร์โทรศัพท์ผู้ต้องสงสัย มากกว่า > 35 Digit - Field ชื่อผู้ต้องสงสัย มากกว่า > 256 Digit - Field นามสกุลผู้ต้องสงสัย มากกว่า > 256 Digit - Field เบอร์ Promptpay (ถ้ามี) มากกว่า > 15 Digit - Field เลขที่บัญชีผู้ต้องสงสัย มากกว่า > 16 Digit - Field Instruction ID(TXN ID) มากกว่า > 35 Digit - Field ยอดเงินที่เสียหาย มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field ใส่หมายอายัดจากตำรวจ มากกว่า > 128 Digit - Field จำนวนวงเงินที่อายัดจากตำรวจ มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field ใส่หมายปลดอายัดจากตำรวจ มากกว่า > 128 Digit"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_035"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_035_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_035"
      When upload file positive "/TC001_035_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_035_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_data_m2_not_complate_reciever"
      Then should be display error message mastercase is "invalid_data_m2_not_condition_reciever"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_036 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Length มากกว่า > 50 Digit - Field เลขที่บัญชีผู้ต้องสงสัย"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_036"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_036_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_036"
      When upload file positive "/TC001_036_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_036_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_o_reciever_personalID"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_037 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Invalid Length มากกว่า > 64 Digit - Field บัญชี Settlement (บัญชีกลาง) Example - <Bank Abbreviate> + “:” + <Settlement account>"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_037"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_037_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_037"
      When upload file positive "/TC001_037_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_037_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      Then should be display error message mastercase is "invalid_none_bank_settlement"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_038 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Length มากกว่า > 15 Digit - Field หมายเลขอ้างอิงชำระบิล (Biller ID)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_038"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_038_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_038"
      When upload file positive "/TC001_038_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_biller"
      Then deleted file    
    @optional    #@only
    Scenario: TC001_039 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Format แต่ Length ไม่ถูกต้อง - Invalid Length น้อยกว่า < 15 Digit - Field หมายเลขอ้างอิงชำระบิล (Biller ID)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_039"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_039_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_039"
      When upload file positive "/TC001_039_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_biller"
      Then deleted file
    @optional    #@only
    Scenario: TC001_040 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Length มากกว่า > 20 Digit - Field หมายเลขชำระอ้างอิง 1 (REF1)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_040"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_040_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_040"
      When upload file positive "/TC001_040_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_ref1"
      Then deleted file
    @optional    #@only
    Scenario: TC001_041 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Lenght มากกว่า > 20 Digit - Field หมายเลขชำระอ้างอิง 2 (REF2)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_041"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_041_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_041"
      When upload file positive "/TC001_041_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_ref2"
      Then deleted file
    @optional    #@only
    Scenario: TC001_042 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Length มากกว่า > 20 Digit - Field หมายเลขชำระอ้างอิง 3 (REF3)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_042"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_042_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_042"
      When upload file positive "/TC001_042_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_ref3"
      Then deleted file
    @optional    #@only
    Scenario: TC001_043 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Invalid Lenght มากกว่า > 256 Digit - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_043"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_043_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_043"
      When upload file positive "/TC001_043_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_changestatus_money"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_045 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Valid Condition Field - Field ธนาคารเจ้าของบัญชี : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_045"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_045_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_045"
      When upload file positive "/TC001_045_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m1_bankname_v1"
      Then deleted file
    @optional    #@only
    Scenario: TC001_047 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Invalid Condition Field - Field ธนาคารเจ้าของบัญชี : ไม่มีอูย่ใน Master Data - Field Bank_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_047"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_047_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_047"
      When upload file positive "/TC001_047_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m1_bankname"
      Then deleted file
    @optional    #@only
    Scenario: TC001_048 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Invalid Condition Field - Field ธนาคารเจ้าของบัญชี : ไม่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_048"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_048_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_048"
      When upload file positive "/TC001_048_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m1_bankname"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_050 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ธนาคารผู้โอน : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_050"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_050_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_050"
      When upload file positive "/TC001_050_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m1_condition_bankname_v1"
      Then should be display error message mastercase is "invalid_m1_not_complate_bankname_v1"
      Then deleted file
    @optional   #@only   
    Scenario: TC001_052 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Condition Field - Field ธนาคารผู้โอน : ไม่มีอูย่ใน Master Data - Field Bank_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_052"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_052_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_052"
      When upload file positive "/TC001_052_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m1_condition_bankname_v1"
      Then deleted file
    @optional   #@only   
    Scenario: TC001_053 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Condition Field - Field ธนาคารผู้โอน : ไม่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_053"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_053_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_053"
      When upload file positive "/TC001_053_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m1_condition_bankname_v1"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_055 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_055"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_055_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_055"
      When upload file positive "/TC001_055_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then should be display error message mastercase is "invalid_m2_bankname"
    @optional  #@only
    Scenario: TC001_057 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่มีอูย่ใน Master Data - Field Bank_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_057"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_057_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_057"
      When upload file positive "/TC001_057_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m2_bankname"
      Then deleted file
    @optional  #@only
    Scenario: TC001_058 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_058"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_058_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_058"
      When upload file positive "/TC001_058_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_m2_bankname"
      Then deleted file
    @optional  #@only
    Scenario: TC001_062 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่มีอูย่ใน Master Data - FI_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_062"
      Then Query Data Financial Institution "2" By Shortname "MXC"
      Then PreparaData file excel folder is "positive/TC001_062_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_062"
      When upload file positive "/TC001_062_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_reciever_statusmoney_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_063 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่มีอยู่ใน Master Data - FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_063"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_063_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_063"
      When upload file positive "/TC001_063_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_o_reciever_statusmoney_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_064 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Invalid Condition Field - Invalid Bank Abbreviate - <Bank Abbreviate>must be listed in the appendix A1 - Field บัญชี Settlement Example <Bank Abbreviate> + “:” + <Settlement account>"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_064"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_064_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_064"
      When upload file positive "/TC001_064_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_condition_settlement"
      Then deleted file
    @optional  #@only
    Scenario: TC001_069 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 3. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_069"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_069_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_069"
      When upload file positive "/TC001_069_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_072 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Invalid Condition Field เลขที่บัญชีผู้ต้องสงสัย of bank และ เลขที่บัญชีผู้ต้องสงสัย of non-bank ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field เบอร์ Promptpay (ถ้ามี) : e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_072"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_072_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_072"
      When upload file positive "/TC001_072_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_074 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Invalid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ระบุข้อมูลที่มีอยู่ใน Master Data - Field หมายเลขชำระอ้างอิง 1 (REF1) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_074"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_074_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_074"
      When upload file positive "/TC001_074_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_condition_biller"
      Then should be display error message mastercase is "invalid_list_ref1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_075 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" Field ประเภทของ PromptPay (ถ้ามี) และหมายเลขอ้างอิงชำระบิล (Biller ID) กรณีไม่ระบุข้อมูล MBs ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_075"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_075_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_075"
      When upload file positive "/TC001_075_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_076 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Invalid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = เบอร์โทร - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ระบุข้อมูลที่มีอยู่ใน Master Data - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล "
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_076"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_076_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_076"
      When upload file positive "/TC001_076_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_078 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = หมายเลขบัตรประชาชน - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ระบุข้อมูลที่มีอยู่ใน Master Data - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_078"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_078_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_078"
      When upload file positive "/TC001_078_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_081 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เลขที่บัญชีผู้ต้องสงสัย 3. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_081"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_081_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_081"
      When upload file positive "/TC001_081_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_081_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then should be display error message mastercase is "invalid_condition_reciever_account_and_reason"
      Then deleted file
    @optional  #@only
    Scenario: TC001_082 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เลขที่บัญชีผู้ต้องสงสัย 3. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_082"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_082_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_082"
      When upload file positive "/TC001_082_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_list_ref1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_083 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เลขที่บัญชีผู้ต้องสงสัย 3. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 4. หมายเลขอ้างอิงชำระบิล (Biller ID) 5. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_083"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file excel folder is "positive/TC001_083_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_083"
      When upload file positive "/TC001_083_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_087 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดผ่านเอทีเอ็ม"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_087"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_087_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_087"
      When upload file positive "/TC001_087_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then should be display error message mastercase is "invalid_o_condition_changestatus_money"
      Then deleted file
    @optional  #@only
    Scenario: TC001_088 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดที่สาขา"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_088"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file excel folder is "positive/TC001_088_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_088"
      When upload file positive "/TC001_088_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then should be display error message mastercase is "invalid_o_condition_changestatus_money"
      Then deleted file
    @optional  #@only
    Scenario: TC001_089 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น Invalid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ (Private Wallet)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_089"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file excel folder is "positive/TC001_089_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_089"
      When upload file positive "/TC001_089_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then should be display error message mastercase is "invalid_o_condition_changestatus_money"
      Then deleted file
    @optional  #@only
    Scenario: TC001_094 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_094"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file excel folder is "positive/TC001_094_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_094"
      When upload file positive "/TC001_094_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_data_m2_not_condition_reciever_v1"
      Then should be display error message mastercase is "invalid_condition_ref1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_095 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_095"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_095_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_095"
      When upload file positive "/TC001_095_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_condition_reciever_account_and_reason"
      Then should be display error message mastercase is "invalid_condition_ref1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_101 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Invalid Condition Field - <Bank Abbreviate>must be listed in the appendix A1 In case of “ประเภทของ PromptPay (ถ้ามี)” = “ e-wallet”, this field is required - Field บัญชี Settlement Example <Bank Abbreviate> + “:” + <Settlement account>"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_101"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_101_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_101"
      When upload file positive "/TC001_101_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_not_complate_ref1_settlement"
      Then deleted file
    @optional  #@only
    Scenario: TC001_103 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_103"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_103_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_103"
      When upload file positive "/TC001_103_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_condition_ref1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_104 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_104"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_104_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_104"
      When upload file positive "/TC001_104_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then deleted file
    @optional  #@only
    Scenario: TC001_105 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_105"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_105_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_105"
      When upload file positive "/TC001_105_MasterCase_V16.2_MBs"
      Then should be display error message mastercase is "invalid_none_bank_or_bank_v1"
      Then should be display error message mastercase is "invalid_condition_biller"
      Then deleted file