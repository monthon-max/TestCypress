Feature: Validate Upload Sub Case FI Negative
      
    Background: Prepara Mastercase API
      Then Query Data Financial Institution "2" By Shortname "WIP"
      And download file "Forsubcase"
      Then PreparaData file excel folder is "positive/Forsubcase_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "for_subcase_FI"
      Given Add Master Case "/Forsubcase_MasterCase_V16.2_MBs.xlsx"
      Then Read file excel folder is "positive/Forsubcase_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then deleted file only





    @optional  @skip
    Scenario: TC003_001 - ตรวจสอบสิทธิ์การเข้าถึง Menu  "Central Fraud Registry" ในกรณไม่มี Permission "CFR_SUB_CASE_CREATE"
      Given login ITMX web portal by non bank "" user

    @mandatory  #@only
    Scenario: TC003_018 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Invalid Missing Field - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_018"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_018_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_018"
      Then upload sub case "/TC003_018_AddSubCase_V16.2_Non-bank"
      Then should be display error message subcase is "invalid_condition_statusmoney"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_045 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัย (ผู้โอน) ที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field ผู้ให้บริการทางการเงิน (Non-bank) ผู้โอน : ไม่ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_045"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_045_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_045"
      Then upload sub case "/TC003_045_AddSubCase_V16.2_Non-bank"
      Then should be display error message subcase is "invalid_not_complate_sender"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_050 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ผู้ให้บริการทางการเงิน (Non-bank) ผู้โอน : ไม่ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_050"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_050_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_050"
      Then upload sub case "/TC003_050_AddSubCase_V16.2_Non-bank"
      Then should be display error message subcase is "invalid_sender"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_055 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_055"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_055_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_055"
      Then upload sub case "/TC003_055_AddSubCase_V16.2_Non-bank"
      Then should be display error message subcase is "invalid_none_bank_or_bank_v1"
      Then should be display error message subcase is "invalid_m2_bankname"
      Then deleted file only
    @mandatory  @only
    Scenario: TC003_081 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เลขที่บัญชีผู้ต้องสงสัย 3. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_081"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_081_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_081"
      Then upload sub case "/TC003_081_AddSubCase_V16.2_Non-bank"
      Then should be display error message subcase is "invalid_condition_reciever_account_and_reason"
      Then should be display error message subcase is "invalid_list_ref1"
      Then deleted file only