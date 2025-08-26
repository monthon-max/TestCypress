Feature: Validate Upload Sub Case MBs

    Background: Prepara Mastercase API
      Then Query Data Financial Institution "1" By Shortname "BBL"
      And download file "Forsubcase"
      Then PreparaData file excel folder is "positive/Forsubcase_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "for_subcase_MBs"
      Given Add Master Case "/Forsubcase_MasterCase_V16.2_MBs.xlsx"
      Then Read file excel folder is "positive/Forsubcase_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then deleted file only




    @mandatory  #@only
    Scenario: TC002_002 'ตรวจสอบการ Upload MasterCase โดยระบุข้อมูล - All Field Valid Max Length - ธนาคารผู้เสียหายกับธนาคารผู้ต้องสงสัย ธนาคารเดียวกัน
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"
      Then PreparaData file subcase for "mbs" excel folder is "positive/SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_002"
      Then upload sub case "/SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/SubCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_004 "ตรวจสอบการ Upload Sub Case New Field โดย - Upload ต่อจาก Master Case เดิมที่มีอยู่ในระบบ CFR "
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_004"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_004_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "full"
      Then upload sub case "/TC002_004_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_004_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_005 "ตรวจสอบการ Upload Sub Case New Field โดย - Upload ต่อจาก Sub Case เดิมที่มีอยู่ในระบบ CFR "
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_005"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_005_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "full"
      Then upload sub case "/TC002_005_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_005_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_007 "ตรวจสอบการ Upload SubCase โดยระบุข้อมูล - All Field Valid Max Length - ธนาคารผู้เสียหายกับธนาคารผู้ต้องสงสัย ธนาคารเดียวกัน"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_007"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_007_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_007"
      Then upload sub case "/TC002_007_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_007_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_008 "ตรวจสอบการ Upload SubCase โดยระบุข้อมูล - All Field Valid Max Length - ธนาคารผู้เสียหายกับธนาคารผู้ต้องสงสัย ต่างธนาคารกัน"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_008"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_008_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_008"
      Then upload sub case "/TC002_008_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_008_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @optional  @only
    Scenario: TC002_013 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition - Invalid Missing Field - Field เลขที่บัญชีผู้ต้องสงสัย"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_013"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_013_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_013"
      Then upload sub case "/TC002_013_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_013_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_014 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Valid Missing Field - Field บัญชี Settlement (บัญชีกลาง)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_014"
      Then Query Data Financial Institution "2" By Shortname "INVX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_014_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_014"
      Then upload sub case "/TC002_014_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_014_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_016 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Valid Missing Field - Field หมายเลขชำระอ้างอิง 2 (REF2)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_016"
      Then Query Data Financial Institution "2" By Shortname "RDT"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_016_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_016"
      Then upload sub case "/TC002_016_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_016_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_017 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Valid Missing Field - Field หมายเลขชำระอ้างอิง 3 (REF3)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_017"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_017_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_017"
      Then upload sub case "/TC002_017_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_017_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_019 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Valid Missing Field - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน <> “ถอนเงินสดผ่านเอทีเอ็ม” or “ถอนเงินสดที่สาขา” or “สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ”"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_019"
      Then Query Data Financial Institution "2" By Shortname "COTH"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_019_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_019"
      Then upload sub case "/TC002_019_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_019_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_026 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Valid Format - Field หมายเลขอ้างอิงชำระบิล (Biller ID)"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_026"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_026_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_026"
      Then upload sub case "/TC002_026_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_026_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_044 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field - Field ธนาคารผู้โอน : ระบุข้อมูลที่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_044"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_044_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_044"
      Then upload sub case "/TC002_044_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_044_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_046 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field - Field ธนาคารผู้โอน : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_046"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_046_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_046"
      Then upload sub case "/TC002_046_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_046_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_049 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลของผู้ต้องสงสัย(ผู้โอน) - Valid Condition Field - Field ธนาคารผู้โอน : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_049"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_049_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_049"
      Then upload sub case "/TC002_049_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_049_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_051 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ธนาคารผู้โอน : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_051"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_051_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_051"
      Then upload sub case "/TC002_051_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_051_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_054 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_054"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_054_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_054"
      Then upload sub case "/TC002_054_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_054_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_056 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_056"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_056_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_056"
      Then upload sub case "/TC002_056_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_056_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_059 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_059"
      Then Query Data Financial Institution "2" By Shortname "INVX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_059_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_059"
      Then upload sub case "/TC002_059_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_059_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_060 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - FI_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_060"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_060_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_060"
      Then upload sub case "/TC002_060_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_060_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_061 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : มีอยู่ใน Master Data - FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_061"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_061_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_061"
      Then upload sub case "/TC002_061_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_061_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_065 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_065"
      Then Query Data Financial Institution "2" By Shortname "FSS"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_065_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_065"
      Then upload sub case "/TC002_065_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_065_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_066 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย - Field FI_code (auto) ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_066"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_066_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_066"
      Then upload sub case "/TC002_066_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_066_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_067 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. FI_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_067"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_067_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_067"
      Then upload sub case "/TC002_067_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_067_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_068 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. FI_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_068"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_068_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_068"
      Then upload sub case "/TC002_068_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_068_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_070 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 3. Bank_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>   ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_070"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_070_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_070"
      Then upload sub case "/TC002_070_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_070_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_071 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย of bank และ เลขที่บัญชีผู้ต้องสงสัย of non-bank ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_071"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_071_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_071"
      Then upload sub case "/TC002_071_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_071_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_073 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)  "" Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย  และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ระบุข้อมูลที่มีอยู่ใน Master Data  ระบุข้อมูลที่มีอยู่ใน Master Data แต่คนละธนาคารกับผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_073"
      Then Query Data Financial Institution "2" By Shortname "PLC"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_073_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_073"
      Then upload sub case "/TC002_073_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_073_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_077 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Valid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = เบอร์โทร - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_077"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_077_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_077"
      Then upload sub case "/TC002_077_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_077_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_079 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น - Valid Condition  Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = หมายเลขบัตรประชาชน - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_079"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_079_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_079"
      Then upload sub case "/TC002_079_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_079_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_080 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_080"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_080_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_080"
      Then upload sub case "/TC002_080_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_080_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_084 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดผ่านเอทีเอ็ม - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_084"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_084_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_084"
      Then upload sub case "/TC002_084_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_084_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_085 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดที่สาขา - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน :  ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_085"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_085_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_085"
      Then upload sub case "/TC002_085_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_085_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_086 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ (Private Wallet) - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_086"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_086_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_086"
      Then upload sub case "/TC002_086_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_086_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_090 "ตรวจสอบการ Upload SubCase New Field กรณี Look Up Data ของ Bank_code โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 5. Bank_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data (Bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_090"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_090_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_090"
      Then upload sub case "/TC002_090_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_090_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_091 "ตรวจสอบการ Upload SubCase New Field กรณี Look Up Data ของ FI_code โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data (Non-bank) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_091"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_091_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_091"
      Then upload sub case "/TC002_091_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_091_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_092 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ธนาคารเดียวกัน (on-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) : ไม่ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_092"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_092_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_092"
      Then upload sub case "/TC002_092_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_092_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_093 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ FI_code (Topup off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data (Non-bank) - Field หมายเลขชำระอ้างอิง 1 (REF1) :ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_093"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_093_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_093"
      Then upload sub case "/TC002_093_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_093_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_096 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_096"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_096_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_096"
      Then upload sub case "/TC002_096_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_096_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "2" By Shortname "OTTS"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_097 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ Bank_code (off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_097"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_097_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_097"
      Then upload sub case "/TC002_097_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_097_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "" By Shortname ""
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1" for case "TC002_097"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_098 "ตรวจสอบการ Upload SubCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ FI_code (off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_098"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_098_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_098"
      Then upload sub case "/TC002_098_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_098_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "" By Shortname ""
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1" for case "TC002_098"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_099 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_099"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_099_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_099"
      Then upload sub case "/TC002_099_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_099_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "2" By Shortname "BNTH"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only
    @mandatory  #@only
    Scenario: TC002_100 "ตรวจสอบการ Upload SubCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And search result from api add mastercase
      Then click add sub case first row
      Then view page for "bank" add subcase "TC002_100"
      Then PreparaData file subcase for "mbs" excel folder is "positive/TC002_100_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase" and dataset for "TC002_100"
      Then upload sub case "/TC002_100_AddSubCase_V16.2_MBs"
      Then Read file excel subcase folder is "positive/TC002_100_AddSubCase_V16.2_MBs.xlsx" and sheetname is "AddSubCase"
      Then Query Data Financial Institution "2" By Shortname "MPAY"
      When should be display sub case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "2" sub case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create sub case
      Then should be display web search preview page result "AllExcelData" trasition "1"
      Then deleted file only

