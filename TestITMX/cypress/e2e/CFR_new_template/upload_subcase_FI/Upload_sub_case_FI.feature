Feature: Validate Upload Sub Case FI

    Background: Prepara Mastercase API
      Then Query Data Financial Institution "2" By Shortname "WIP"
      And download file "ForsubcaseFI"
      Then PreparaData file excel folder is "positive/ForsubcaseFI_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "for_subcase_FI"
      Given Add Master Case "/ForsubcaseFI_MasterCase_V16.2_MBs.xlsx"
      Then Read file excel folder is "positive/ForsubcaseFI_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then deleted file only




    @mandatory  #@only
    Scenario: TC003_002 - ตรวจสอบสิทธิ์การเข้าถึง Menu  "Central Fraud Registry" ในกรณีมี Permission "CFR_SUB_CASE_CREATE"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase

    @mandatory  #@only
    Scenario: TC003_003 ตรวจสอบการ Upload SubCase โดย File Name = 150 Digit
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"
      Then PreparaData file subcase for "fi" excel folder is "positive/SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "full"
      Then upload sub case "/SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "WIP"
      Then Read file excel subcase folder is "positive/SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_006 "ตรวจสอบการ Upload SubCase โดยระบุข้อมูล - All Field Valid Max Length - ธนาคารผู้เสียหายกับธนาคารผู้ต้องสงสัย ธนาคารเดียวกัน"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_006"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_006_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_006"
      Then upload sub case "/TC003_006_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "WIP"
      Then Read file excel subcase folder is "positive/TC003_006_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file onl
    @mandatory  #@only
    Scenario: TC003_007 "ตรวจสอบการ Upload SubCase โดยระบุข้อมูล - All Field Valid Max Length - ธนาคารผู้เสียหายกับธนาคารผู้ต้องสงสัย ต่างธนาคารกัน"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_007"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_007_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_007"
      Then upload sub case "/TC003_007_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_007_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_016 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Valid Missing Field - Field หมายเลขชำระอ้างอิง 2 (REF2)"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_016"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_016_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_016"
      Then upload sub case "/TC003_016_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_016_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_017 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Valid Missing Field - Field หมายเลขชำระอ้างอิง 3 (REF3)"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_017"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_017_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_017"
      Then upload sub case "/TC003_017_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_017_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_019 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Valid Missing Field - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน <> “ถอนเงินสดผ่านเอทีเอ็ม” or “ถอนเงินสดที่สาขา” or “สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ”"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_019"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_019_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_019"
      Then upload sub case "/TC003_019_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_019_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_026 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Valid Format - Field หมายเลขอ้างอิงชำระบิล (Biller ID)"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_026"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_026_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_026"
      Then upload sub case "/TC003_026_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_026_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_044 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัย (ผู้โอน) ที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field ผู้ให้บริการทางการเงิน (Non-bank) ผู้โอน : ระบุข้อมูลที่มีอยู่ใน Master Data - Field FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_044"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_044_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_044"
      Then upload sub case "/TC003_044_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_044_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_046 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัย (ผู้โอน) ที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field ผู้ให้บริการทางการเงิน (Non-bank) ผู้โอน : มีอยู่ใน Master Data - Field FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_046"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_046_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_046"
      Then upload sub case "/TC003_046_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_046_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_049 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ผู้ให้บริการทางการเงิน (Non-bank) ผู้โอน : ระบุข้อมูลที่มีอยู่ใน Master Data - Field FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_049"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_049_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_049"
      Then upload sub case "/TC003_049_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_049_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_051 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ผู้ให้บริการทางการเงิน (Non-bank) ผู้โอน : มีอยู่ใน Master Data - Field FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_051"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_051_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_051"
      Then upload sub case "/TC003_051_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_051_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_054 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_054"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_054_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_054"
      Then upload sub case "/TC003_054_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_054_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_056 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_056"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_056_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_056"
      Then upload sub case "/TC003_056_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_056_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_059 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_059"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_059_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_059"
      Then upload sub case "/TC003_059_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then Read file excel subcase folder is "positive/TC003_059_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_060 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - FI_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_060"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_060_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_060"
      Then upload sub case "/TC003_060_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then Read file excel subcase folder is "positive/TC003_060_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_061 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : มีอยู่ใน Master Data - FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_061"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_061_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_061"
      Then upload sub case "/TC003_061_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then Read file excel subcase folder is "positive/TC003_061_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_065 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_065"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_065_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_065"
      Then upload sub case "/TC003_065_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then Read file excel subcase folder is "positive/TC003_065_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_066 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย - Field FI_code (auto) ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_066"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_066_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_066"
      Then upload sub case "/TC003_066_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "PLUS"
      Then Read file excel subcase folder is "positive/TC003_066_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_067 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. FI_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_067"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_067_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_067"
      Then upload sub case "/TC003_067_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "PLUS"
      Then Read file excel subcase folder is "positive/TC003_067_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_068 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. FI_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_068"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_068_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_068"
      Then upload sub case "/TC003_068_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "PLUS"
      Then Read file excel subcase folder is "positive/TC003_068_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_070 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 3. Bank_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>   ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_070"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_070_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_070"
      Then upload sub case "/TC003_070_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_070_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_071 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย of bank และ เลขที่บัญชีผู้ต้องสงสัย of non-bank ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_071"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_071_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_071"
      Then upload sub case "/TC003_071_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_071_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_073 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)  "" Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย  และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ระบุข้อมูลที่มีอยู่ใน Master Data  ระบุข้อมูลที่มีอยู่ใน Master Data  ระบุข้อมูลที่มีอยู่ใน Master Data แต่คนละธนาคารกับผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_073"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_073_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_073"
      Then upload sub case "/TC003_073_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "PLUS"
      Then Read file excel subcase folder is "positive/TC003_073_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_077 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Valid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = เบอร์โทร - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_077"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_077_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_077"
      Then upload sub case "/TC003_077_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_077_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_079 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น - Valid Condition  Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = หมายเลขบัตรประชาชน - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล" 
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_079"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_079_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_079"
      Then upload sub case "/TC003_079_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_079_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  @skip   @changeREQ_use_TC003_103
    Scenario: TC003_080 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_080"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_080_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_080"
      Then upload sub case "/TC003_080_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_080_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_084 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดผ่านเอทีเอ็ม - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน :ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_084"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_084_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_084"
      Then upload sub case "/TC003_084_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "" By Shortname ""
      Then Read file excel subcase folder is "positive/TC003_084_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_085 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดที่สาขา - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน :  ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_085"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_085_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_085"
      Then upload sub case "/TC003_085_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "" By Shortname ""
      Then Read file excel subcase folder is "positive/TC003_085_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_086 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ (Private Wallet) - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน : ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_086"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_086_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_086"
      Then upload sub case "/TC003_086_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "" By Shortname ""
      Then Read file excel subcase folder is "positive/TC003_086_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  @skip   @changeREQ_use_TC003_103
    Scenario: TC003_090 "ตรวจสอบการ Upload SubCase New Field กรณี Look Up Data ของ Bank_code โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 5. Bank_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data (Bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_090"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_090_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_090"
      Then upload sub case "/TC003_090_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "" By Shortname ""
      Then Read file excel subcase folder is "positive/TC003_090_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  @skip   @changeREQ_use_TC003_103
    Scenario: TC003_091 "ตรวจสอบการ Upload SubCase New Field กรณี Look Up Data ของ FI_code โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data (Non-bank) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
    @mandatory  #@only
    Scenario: TC003_092 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ธนาคารเดียวกัน (on-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) : ไม่ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_092"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_092_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_092"
      Then upload sub case "/TC003_092_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then Read file excel subcase folder is "positive/TC003_092_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_096 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_096"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_096_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_096"
      Then upload sub case "/TC003_096_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "BO"
      Then Read file excel subcase folder is "positive/TC003_096_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_097 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ Bank_code (off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_097"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_097_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_097"
      Then upload sub case "/TC003_097_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "" By Shortname ""
      Then Read file excel subcase folder is "positive/TC003_097_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1" for case "TC003_097"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_098 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ FI_code (off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_098"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_098_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_098"
      Then upload sub case "/TC003_098_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "" By Shortname ""
      Then Read file excel subcase folder is "positive/TC003_098_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1" for case "TC003_098"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_099 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_099"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_099_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_099"
      Then upload sub case "/TC003_099_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "MXC"
      Then Read file excel subcase folder is "positive/TC003_099_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC003_100 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by non bank "WIP" user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "non_bank" add subcase "TC003_100"
      Then PreparaData file subcase for "fi" excel folder is "positive/TC003_100_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase" and dataset for "TC003_100"
      Then upload sub case "/TC003_100_AddSubCase_V16.2_Non-bank"
      Then Query Data Financial Institution "2" By Shortname "MPAY"
      Then Read file excel subcase folder is "positive/TC003_100_AddSubCase_V16.2_Non-bank.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only