Feature: Validate Upload Master Case MBs Negative
      
    Background: Prepara Mastercase API
      Then Query Data Financial Institution "1" By Shortname "BBL"
      And download file "Forsubcase"
      Then PreparaData file excel folder is "positive/Forsubcase_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "for_subcase_MBs"
      Given Add Master Case "/Forsubcase_MasterCase_V16.2_MBs.xlsx"
      Then Read file excel folder is "positive/Forsubcase_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then deleted file only


    @optional  #@only
    Scenario: TC002_001 ตรวจสอบการ Upload SubCase โดยใช้ template เก่า
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then upload sub case "/Horse2-From-CMBT-TO-BBL-25660505CMBT00006"
      Then should be display error message subcase is "template_version"
    @optional  #@only
    Scenario: TC002_002 ตรวจสอบการ Upload SubCase โดย File Name > 150 Digit
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "SubCasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE"
      Then PreparaData file subcase for "mbs" excel folder is "positive/SubCasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_002"
      Then upload sub case "/SubCasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_filename"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_006 "ตรวจสอบการ Upload Sub Case New Field โดย - Upload ต่อจาก Sub Case เดิมที่มีอยู่ในระบบ CFR - Bank Case ID (ธนาคารต้นทาง) : ระบุข้อมูลไม่ตรงกับ MasterCase"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_006"
      Then Query Data Financial Institution "1" By Shortname "BBL" and Data Subcase BankcaseID Now
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_006_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_006"
      Then upload sub case "/TC002_006_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_bankcaseID_v1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_009 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น รายละเอียดข้อมูลเคส - Invalid Missing Field เฉพาะ Field M1 - Field Bank Case ID (ธนาคารต้นทาง)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_009"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_009_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_009"
      Then upload sub case "/TC002_009_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_bankcase_and_list"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_010 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Invalid Missing Field เฉพาะ Field M1 - Field เลขบัตรประชาชนหรือหนังสือเดินทาง - Field ประเภทบุคคลของเจ้าของบัญชี - Field ชื่อผู้โอน - Field นามสกุลผู้โอน - Field เลขที่บัญชีผู้โอน - Field ธนาคารผู้โอน"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_010"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_010_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_010"
      Then upload sub case "/TC002_010_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_sender_not_complate"
      Then should be display error message subcase is "invalid_data_sender_condition"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_011 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Missing Field เฉพาะ Field M1 - Field ชื่อผู้โอน - Field นามสกุลผู้โอน - Field เลขที่บัญชีผู้โอน - Field ธนาคารผู้โอน"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_011"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_011_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_011"
      Then upload sub case "/TC002_011_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_sender_condition_account"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_012 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Missing Field เฉพาะ Field M1 - Field ชื่อผู้ต้องสงสัย - Field นามสกุลผู้ต้องสงสัย - Field ประเภทของ PromptPay (ถ้ามี) - Field เบอร์ Promptpay (ถ้ามี) - Field เลขที่บัญชีผู้ต้องสงสัย - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย - Field วันที่เสียหาย (วันที่เกิดรายการ) (2566-MM-DD) - Field เวลาที่เสียหาย (เวลาที่เกิดรายการ) (hh:mm:ss) - Field ยอดเงินที่เสียหาย"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_012"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_012_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_012"
      Then upload sub case "/TC002_012_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_none_bank_or_bank_v1"
      Then should be display error message subcase is "invalid_condition_receiver"
      Then should be display error message subcase is "invalid_condition_date_receiver"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_015 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Missing Field - Field หมายเลขอ้างอิงชำระบิล (Biller ID): ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_015"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_015_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_015"
      Then upload sub case "/TC002_015_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_reciever_condition_status_biller"
      Then should be display error message subcase is "invalid_condition_ref1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_018 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Valid Condition - Invalid Missing Field - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_018"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_018_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_018"
      Then upload sub case "/TC002_018_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_reciever_statusmoney"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_020 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น รายละเอียดข้อมูลเคส - Invalid Format Field - Field Bank Case ID (ธนาคารต้นทาง)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_020"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_020_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_020"
      Then upload sub case "/TC002_020_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_bankcase_and_list"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_021 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Invalid Format Field - Field เลขบัตรประชาชนหรือหนังสือเดินทาง - Field ประเภทบุคคลของเจ้าของบัญชี - Field ชื่อผู้โอน - Field นามสกุลผู้โอน - Field เลขที่บัญชีผู้โอน - Field ธนาคารผู้โอน - Field Bank_code (auto) - Field เบอร์โทรศัพท์ผู้โอน - Field วันและเวลาที่ระงับธุรกรรม (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลด (2566-MM-DD hh:mm) - Field ประเภทของการอายัดจากธนาคาร - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) - Field วันและเวลาที่อายัดจากตำรวจ (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลดจากตำรวจ (2566-MM-DD hh:mm) - Field ประเภทของหมายอายัดจากตำรวจ - Field ใส่หมายอายัดจากตำรวจ - Field จำนวนวงเงินที่อายัดจากตำรวจ - Field ใส่หมายปลดอายัดจากตำรวจ"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_021"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_021_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_021"
      Then upload sub case "/TC002_021_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_sender_m1_all"
      Then should be display error message subcase is "invalid_data_sender_condition_m1_all"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_022 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Invalid Format Field - Field เลขบัตรประชาชนหรือหนังสือเดินทาง - Field ประเภทบุคคลของเจ้าของบัญชี - Field ชื่อผู้โอน - Field นามสกุลผู้โอน - Field เลขที่บัญชีผู้โอน - Field ธนาคารผู้โอน - Field Bank_code (auto) - Field เบอร์โทรศัพท์ผู้โอน - Field วันและเวลาที่ระงับธุรกรรม (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลด (2566-MM-DD hh:mm) - Field ประเภทของการอายัดจากธนาคาร - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) - Field วันและเวลาที่อายัดจากตำรวจ (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลดจากตำรวจ (2566-MM-DD hh:mm) - Field ประเภทของหมายอายัดจากตำรวจ - Field ใส่หมายอายัดจากตำรวจ - Field จำนวนวงเงินที่อายัดจากตำรวจ - Field ใส่หมายปลดอายัดจากตำรวจ"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_022"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_022_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_022"
      Then upload sub case "/TC002_022_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_m1_condition_v1"
      Then should be display error message subcase is "invalid_data_m1_condition_v2"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_023 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Format Field - Field เลขบัตรประชาชนหรือหนังสือเดินทางของผู้ต้องสงสัย - Field ประเภทบุคคลของเจ้าของบัญชีผู้ต้องสงสัย - Field เบอร์โทรศัพท์ผู้ต้องสงสัย - Field ชื่อผู้ต้องสงสัย - Field นามสกุลผู้ต้องสงสัย - Field ประเภทของ PromptPay (ถ้ามี) - Field เบอร์ Promptpay (ถ้ามี) - Field เลขที่บัญชีผู้ต้องสงสัย - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย - Field Bank_code (auto) - Field วันที่เสียหาย (วันที่เกิดรายการ) (2566-MM-DD) - Field เวลาที่เสียหาย (เวลาที่เกิดรายการ) (hh:mm:ss) - Field Instruction ID(TXN ID) - Field ยอดเงินที่เสียหาย - Field วันและเวลาที่ระงับธุรกรรม (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลด (2566-MM-DD hh:mm) - Field ประเภทของการอายัดจากธนาคาร - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) - Field วันและเวลาที่อายัดจากตำรวจ (2566-MM-DD hh:mm) - Field วันและเวลาที่ปลดจากตำรวจ (2566-MM-DD hh:mm) - Field ประเภทของหมายอายัดจากตำรวจ - Field ใส่หมายอายัดจากตำรวจ - Field จำนวนวงเงินที่อายัดจากตำรวจ - Field ใส่หมายปลดอายัดจากตำรวจ"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_023"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_023_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_023"
      Then upload sub case "/TC002_023_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_none_bank_or_bank_v1"
      Then should be display error message subcase is "invalid_data_reciever_condition_m2_all"
      Then should be display error message subcase is "invalid_data_reciever_not_complate_m2_all"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_024 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Format (Appendix 1.6) - Field เลขที่บัญชีผู้ต้องสงสัย"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_024"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_024_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_024"
      Then upload sub case "/TC002_024_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_none_bank_account"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_025 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Invalid Format - Field บัญชี Settlement (บัญชีกลาง) Example - <Bank Abbreviate> + “:” + <Settlement account>"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_025"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_025_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_025"
      Then upload sub case "/TC002_025_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_none_bank_settlement"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_027 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Format (Appendix 1.3.3) - Field หมายเลขอ้างอิงชำระบิล (Biller ID) "
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_027"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_027_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_027"
      Then upload sub case "/TC002_027_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_biller"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_028 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Format (Appendix 1.7) - Field หมายเลขชำระอ้างอิง 1 (REF1)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_028"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_028_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_028"
      Then upload sub case "/TC002_028_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_ref1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_029 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Format (Appendix 1.7) - Field หมายเลขชำระอ้างอิง 2 (REF2)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_029"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_029_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_029"
      Then upload sub case "/TC002_029_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_ref2"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_030 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Format (Appendix 1.7) - Field หมายเลขชำระอ้างอิง 3 (REF3)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_030"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_030_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_030"
      Then upload sub case "/TC002_030_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_ref3"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_031 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Invalid Format (Appendix 1.7) - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน <> “ถอนเงินสดผ่านเอทีเอ็ม” or “ถอนเงินสดที่สาขา” or “สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ”"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_031"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_031_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_031"
      Then upload sub case "/TC002_031_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_changestatus_money"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_032 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น รายละเอียดข้อมูลเคส - Invalid Lenght - Field Bank Case ID (ธนาคารต้นทาง) มากกว่า > 17 Digit"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_032"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_032_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_032"
      Then upload sub case "/TC002_032_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_detail_bankcaseID"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_033 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Invalid Lenght - Field เลขบัตรประชาชนหรือหนังสือเดินทาง มากกว่า > 35 Digit - Field ชื่อผู้โอน มากกว่า > 256 Digit - Field นามสกุลผู้โอน มากกว่า > 256 Digit - Field เลขที่บัญชีผู้โอน มากกว่า > 16 Digit - Field เบอร์โทรศัพท์ผู้โอน มากกว่า > 35 Digit - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field ใส่หมายอายัดจากตำรวจ มากกว่า > 128 Digit - Field จำนวนวงเงินที่อายัดจากตำรวจ มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field ใส่หมายปลดอายัดจากตำรวจ มากกว่า > 128 Digit"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_033"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_033_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_033"
      Then upload sub case "/TC002_033_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_sender_not_complate_m1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_034 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Lenght - Field ชื่อผู้โอน มากกว่า > 256 Digit - Field นามสกุลผู้โอน มากกว่า > 256 Digit - Field เลขที่บัญชีผู้โอน มากกว่า > 16 Digit - Field IP Address ของผู้โอน มากกว่า > 50 Digit"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_034"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_034_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_034"
      Then upload sub case "/TC002_034_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_m1_condition_v1"
      Then should be display error message subcase is "invalid_data_m1_condition_v3"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_035 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Lenght - Field เลขบัตรประชาชนหรือหนังสือเดินทางของผู้ต้องสงสัย มากกว่า > 35 Digit - Field เบอร์โทรศัพท์ผู้ต้องสงสัย มากกว่า > 35 Digit - Field ชื่อผู้ต้องสงสัย มากกว่า > 256 Digit - Field นามสกุลผู้ต้องสงสัย มากกว่า > 256 Digit - Field เบอร์ Promptpay (ถ้ามี) มากกว่า > 15 Digit - Field เลขที่บัญชีผู้ต้องสงสัย มากกว่า > 16 Digit - Field Instruction ID(TXN ID) มากกว่า > 35 Digit - Field ยอดเงินที่เสียหาย มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field จำนวนเงินธุรกรรมที่ระงับ (ธนาคาร) มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field จำนวนเงินคงเหลือหลังอายัด (ธนาคาร) มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field ใส่หมายอายัดจากตำรวจ มากกว่า > 128 Digit - Field จำนวนวงเงินที่อายัดจากตำรวจ มากกว่า > 16 Digit + ทศนิยม 2 Digit รวมเป็น 18 Digit - Field ใส่หมายปลดอายัดจากตำรวจ มากกว่า > 128 Digit"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_035"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_035_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_035"
      Then upload sub case "/TC002_035_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_data_reciever_file1_m2_all"
      Then should be display error message subcase is "invalid_data_reciever_file2_m2_all"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_036 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Length มากกว่า > 50 Digit - Field เลขที่บัญชีผู้ต้องสงสัย"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_036"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_036_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_036"
      Then upload sub case "/TC002_036_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_reciever_personalID"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_037 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Invalid Length มากกว่า > 64 Digit - Field บัญชี Settlement (บัญชีกลาง) Example - <Bank Abbreviate> + “:” + <Settlement account>"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_037"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_037_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_037"
      Then upload sub case "/TC002_037_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_none_bank_settlement"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_038 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Length มากกว่า > 15 Digit - Field หมายเลขอ้างอิงชำระบิล (Biller ID)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_038"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_038_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_038"
      Then upload sub case "/TC002_038_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_biller"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_039 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Format แต่ Length ไม่ถูกต้อง - Invalid Length น้อยกว่า < 15 Digit - Field หมายเลขอ้างอิงชำระบิล (Biller ID)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_039"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_039_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_039"
      Then upload sub case "/TC002_039_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_biller"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_040 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Length มากกว่า > 20 Digit - Field หมายเลขชำระอ้างอิง 1 (REF1)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_040"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_040_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_040"
      Then upload sub case "/TC002_040_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_ref1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_041 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Lenght มากกว่า > 20 Digit - Field หมายเลขชำระอ้างอิง 2 (REF2)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_041"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_041_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_041"
      Then upload sub case "/TC002_041_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_ref2"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_042 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Invalid Lenght มากกว่า > 20 Digit - Field หมายเลขชำระอ้างอิง 3 (REF3)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_042"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_042_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_042"
      Then upload sub case "/TC002_042_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_ref3"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_043 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Invalid Lenght มากกว่า > 256 Digit - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_043"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_043_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_043"
      Then upload sub case "/TC002_043_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_changestatus_money"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_045 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field - Field ธนาคารผู้โอน : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_045"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_045_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_045"
      Then upload sub case "/TC002_045_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m1_bankname_reciever"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_047 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Invalid Condition Field - Field ธนาคารผู้โอน : ไม่มีอูย่ใน Master Data - Field Bank_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_047"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_047_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_047"
      Then upload sub case "/TC002_047_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m1_sender_condition_bankname"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_048 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Invalid Condition Field - Field ธนาคารผู้โอน : ไม่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_048"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_048_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_048"
      Then upload sub case "/TC002_048_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m1_sender_condition_bankname"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_050 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ธนาคารผู้โอน : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_050"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_050_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_050"
      Then upload sub case "/TC002_050_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m1_not_complate_bankname_v1"
      Then should be display error message subcase is "invalid_not_condition_bankname_reciver"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_052 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Condition Field - Field ธนาคารผู้โอน : ไม่มีอูย่ใน Master Data - Field Bank_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_052"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_052_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_052"
      Then upload sub case "/TC002_052_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m1_condition_bankname_v1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_053 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Invalid Condition Field - Field ธนาคารผู้โอน : ไม่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_053"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_053_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_053"
      Then upload sub case "/TC002_053_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m1_condition_bankname_v1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_055 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_055"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_055_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_055"
      Then upload sub case "/TC002_055_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_none_bank_or_bank"
      Then should be display error message subcase is "invalid_m1_condition_bankname_v1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_057 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่มีอูย่ใน Master Data - Field Bank_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_057"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_057_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_057"
      Then upload sub case "/TC002_057_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m2_bankname"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_058 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_058"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_058_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_058"
      Then upload sub case "/TC002_058_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_m2_bankname"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_062 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่มีอูย่ใน Master Data - FI_code (auto) : มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_062"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_062_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_062"
      Then upload sub case "/TC002_062_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_reciever_statusmoney_v1"
      Then deleted file only
    @optional  #@only
    Scenario: TC002_063 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Invalid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่มีอยู่ใน Master Data - FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_063"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_063_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_063"
      Then upload sub case "/TC002_063_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_o_reciever_statusmoney_v1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_081 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เลขที่บัญชีผู้ต้องสงสัย 3. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_081"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_081_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_081"
      Then upload sub case "/TC002_081_AddSubCase_V16.2_MBs"
      Then should be display error message subcase is "invalid_condition_reciever_account_and_reason"
      Then deleted file only

