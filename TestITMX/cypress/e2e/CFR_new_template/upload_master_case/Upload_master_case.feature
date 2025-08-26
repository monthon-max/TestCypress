Feature: Validate Upload Master Case MBs


    @optional   #@only
    Scenario: TC001_003 ตรวจสอบการ Upload MasterCase โดย File Name = 150 Digit
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "MasterCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/MasterCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "full"
      When upload file positive "/MasterCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/MasterCassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssE_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_006 'ตรวจสอบการ Upload MasterCase โดยระบุข้อมูล - All Field Valid Max Length - ธนาคารผู้เสียหายกับธนาคารผู้ต้องสงสัย ธนาคารเดียวกัน
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_006"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_006_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_006"
      When upload file positive "/TC001_006_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_006_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_007 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Invalid Missing Field - Field เลขที่บัญชีผู้ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_007"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_007_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_007"
      When upload file positive "/TC001_007_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_007_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_008 "ตรวจสอบ Display ข้อมูลของ Field P ดังนี้ 1. วันที่แจ้งความจากตำรวจ 2. เวลาแจ้งความจากตำรวจ 3. Case ID ตำรวจ  4. วันและเวลาที่อายัด 72 hrs 5. วันและเวลาที่ปลด 72 hrs 6. วันและเวลาที่แจ้งความ (ขยายจาก 72 ชม เป็น 7 วัน) 7. REF. Txn ก่อนหน้า"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_008"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_008_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_008"
      When upload file positive "/TC001_008_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_008_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @optional    #@only
    Scenario: TC001_013 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ในส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Invalid Format (Appendix 1.6) - Field เลขที่บัญชีผู้ต้องสงสัย
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_013"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_013_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_013"
      When upload file positive "/TC001_013_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_013_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"  
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_014 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชี Settlement"" - Valid Missing Field - Field บัญชี Settlement (บัญชีกลาง)"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_014"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_014_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_014"
      When upload file positive "/TC001_014_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_014_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_016 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลธุรกรรมประเภท Payment - Invalid Missing Field - Field หมายเลขอ้างอิงชำระบิล (Biller ID): ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 2 (REF2)
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_016"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_016_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_016"
      When upload file positive "/TC001_016_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_016_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      When should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_017 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลธุรกรรมประเภท Payment - Invalid Missing Field - Field หมายเลขอ้างอิงชำระบิล (Biller ID): ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 3 (REF3)
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_017"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_017_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_017"
      When upload file positive "/TC001_017_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_017_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    # @mandatory  @skip   @retest-error
    # Scenario: TC001_018 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Invalid Missing Field - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน
    #   Given login ITMX web portal by BBL user
    #   And go to menu create master case by excel file
    #   And should be copy download file "TC001_018"
    #   Then Query Data Financial Institution "2" By Shortname "SPP"
    #   Then PreparaData file excel folder is "positive/TC001_018_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_018"
    #   When upload file positive "/TC001_018_MasterCase_V16.2_MBs"
    #   Then Read file excel folder is "positive/TC001_018_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
    #   When should be display master case preview page of "new_template" with data "AllExcelData"
    #   Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
    #   Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
    #   Then confirm to create master case
    #   Then should be display bank case id in search page with data "AllExcelData"       
    #   Then deleted file
    @mandatory  #@only
    Scenario: TC001_019 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Valid Missing Field - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน <> “ถอนเงินสดผ่านเอทีเอ็ม” or “ถอนเงินสดที่สาขา” or “สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ”"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_019"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_019_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_019"
      When upload file positive "/TC001_019_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_019_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_026 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลธุรกรรมประเภท Payment - Valid Format - Field หมายเลขอ้างอิงชำระบิล (Biller ID)
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_026"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_026_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_026"
      When upload file positive "/TC001_026_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_026_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_044 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Valid Condition Field - Field ธนาคารเจ้าของบัญชี : ระบุข้อมูลที่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_044"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_044_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_044"
      When upload file positive "/TC001_044_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_044_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_046 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูลผู้เสียหาย (มาตรา 7) - Valid Condition Field - Field ธนาคารเจ้าของบัญชี : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_046"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_046_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_046"
      When upload file positive "/TC001_046_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_046_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_049 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ธนาคารผู้โอน : ระบุข้อมูลที่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_049"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_049_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_049"
      When upload file positive "/TC001_049_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_049_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_051 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ผู้โอน"" - Valid Condition Field - Field ธนาคารผู้โอน : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_051"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_051_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_051"
      When upload file positive "/TC001_051_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_051_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_054 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_054"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_054_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_054"
      When upload file positive "/TC001_054_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_054_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_056 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Valid Condition Field - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : มีอยู่ใน Master Data - Field Bank_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_056"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_056_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_056"
      When upload file positive "/TC001_056_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_056_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_059 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูลที่มีอยู่ใน Master Data - FI_code (auto) : ไม่ระบุข้อมูล
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_059"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_059_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_059"
      When upload file positive "/TC001_059_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_059_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_060 'ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้นในส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - FI_code (auto) : ระบุข้อมูลที่มีอยู่ใน Master Data
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_060"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_060_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_060"
      When upload file positive "/TC001_060_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_060_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_061 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Valid Condition Field - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : มีอยู่ใน Master Data - FI_code (auto) : ไม่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_061"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_061_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_061"
      When upload file positive "/TC001_061_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_061_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_065 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data "
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_065"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_065_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_065"
      When upload file positive "/TC001_065_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_065_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_066 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย - Field FI_code (auto) ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_066"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_066_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_066"
      When upload file positive "/TC001_066_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_066_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_067 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. FI_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_067"
      Then Query Data Financial Institution "2" By Shortname "SPP"
      Then PreparaData file excel folder is "positive/TC001_067_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_067"
      When upload file positive "/TC001_067_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_067_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_068 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. เลขที่บัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. FI_code (auto) 4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>  ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_068"
      Then Query Data Financial Institution "2" By Shortname "CRDX"
      Then PreparaData file excel folder is "positive/TC001_068_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_068"
      When upload file positive "/TC001_068_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_068_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_070 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้   1. เลขที่บัญชีผู้ต้องสงสัย   2. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย   3. Bank_code (auto)   4. เหตุผลของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลสำหรับการหยุดไล่เส้นเงิน"" - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน : ระบุข้อมูล ที่ <>   ถอนเงินสดผ่านเอทีเอ็ม ถอนเงินสดที่สาขา และ สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_070"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      Then PreparaData file excel folder is "positive/TC001_070_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_070"
      When upload file positive "/TC001_070_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_070_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_071 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field เลขที่บัญชีผู้ต้องสงสัย of bank และ เลขที่บัญชีผู้ต้องสงสัย of non-bank ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_071"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      Then PreparaData file excel folder is "positive/TC001_071_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_071"
      When upload file positive "/TC001_071_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_071_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_073 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ระบุข้อมูลที่มีอยู่ใน Master Data - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_073"
      Then Query Data Financial Institution "2" By Shortname "PLC"
      Then PreparaData file excel folder is "positive/TC001_073_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_073"
      When upload file positive "/TC001_073_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_073_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_077 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Valid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = เบอร์โทร - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_077"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      Then PreparaData file excel folder is "positive/TC001_077_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_077"
      When upload file positive "/TC001_077_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_077_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_079 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Valid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = หมายเลขบัตรประชาชน - Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  :ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_079"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      Then PreparaData file excel folder is "positive/TC001_079_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_079"
      When upload file positive "/TC001_079_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_079_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_080 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction - Invalid Condition Field ประเภทของ PromptPay (ถ้ามี) และ หมายเลขอ้างอิงชำระบิล (Biller ID) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ประเภทของ PromptPay (ถ้ามี) = e-wallet -  Field ระบุ เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID)  : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_080"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file excel folder is "positive/TC001_080_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_080"
      When upload file positive "/TC001_080_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_080_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_084 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดผ่านเอทีเอ็ม - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_084"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_084_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_084"
      When upload file positive "/TC001_084_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_084_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_085 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = ถอนเงินสดที่สาขา - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน :  ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_085"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_085_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_085"
      When upload file positive "/TC001_085_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_085_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_086 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย 2. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 3. เหตุผลของการเปลี่ยนสถานะเส้นเงิน 4. ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" -  Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล ส่วนของ ข้อมูลสำหรับการหยุดไล่เส้นเงิน - Field เหตุผลของการเปลี่ยนสถานะเส้นเงิน = สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ (Private Wallet) - Field ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_086"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_086_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_086"
      When upload file positive "/TC001_086_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_086_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"       
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_090 "ตรวจสอบการ Upload MasterCase New Field กรณี Look Up Data ของ Bank_code โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้    1. ประเภทของ PromptPay (ถ้ามี)   2. เบอร์ Promptpay (ถ้ามี)   3. เลขที่บัญชีผู้ต้องสงสัย   4. ธนาคารเจ้าของบัญชีผู้ต้องสงสัย   5. Bank_code (auto)    6. หมายเลขอ้างอิงชำระบิล (Biller ID)   7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data (Bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_090"
      Then Query Data Financial Institution "1" By Shortname "KBNK"
      Then PreparaData file excel folder is "positive/TC001_090_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_090"
      When upload file positive "/TC001_090_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_090_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_091 "ตรวจสอบการ Upload MasterCase New Field กรณี Look Up Data ของ FI_code โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data (Non-bank) ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) :ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_091"
      Then Query Data Financial Institution "2" By Shortname "WIP"
      Then PreparaData file excel folder is "positive/TC001_091_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_091"
      When upload file positive "/TC001_091_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_091_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_092 "ตรวจสอบการ Upload MasterCase New Field กรณีเป็น ธนาคารเดียวกัน (on-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) : ไม่ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field Bank_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_092"
      Then Query Data Financial Institution "1" By Shortname "BBL"
      Then PreparaData file excel folder is "positive/TC001_092_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_092"
      When upload file positive "/TC001_092_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_092_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_093 "ระบุข้อมูล ข้อมูลผู้ต้องสงสัย - ประเภทของ PromptPay (ถ้ามี) : ไม่มี - เบอร์ Promptpay (ถ้ามี) : Blank - เลขที่บัญชีผู้ต้องสงสัย : Blank - ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : Blank - Bank_code (auto) : Blank ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - เลขที่บัญชีผู้ต้องสงสัย : Blank - ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : Blank - FI_code (auto) : Blank ข้อมูลบัญชี Settlement - บัญชี Settlement (บัญชีกลาง) : Blank ข้อมูลธุรกรรมประเภท Payment - หมายเลขอ้างอิงชำระบิล (Biller ID) : 010555206135623 - หมายเลขชำระอ้างอิง 1 (REF1) : ABC-12345 - หมายเลขชำระอ้างอิง 2 (REF2) : Blank - หมายเลขชำระอ้างอิง 3 (REF3) : Blank ข้อมูลสำหรับการหยุดไล่เส้นเงิน - เหตุผลของการเปลี่ยนสถานะเส้นเงิน : Blank - ข้อมูลเพิ่มเติมของการเปลี่ยนสถานะเส้นเงิน : Blank"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_093"
      Then Query Data Financial Institution "2" By Shortname "TCTP"
      Then PreparaData file excel folder is "positive/TC001_093_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_093"
      When upload file positive "/TC001_093_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_093_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_096 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_096"
      Then Query Data Financial Institution "2" By Shortname "OTTS"
      Then PreparaData file excel folder is "positive/TC001_096_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_096"
      When upload file positive "/TC001_096_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_096_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_097 "ตรวจสอบการ Upload MasterCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ Bank_code (off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ธนาคารเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field Bank_code (auto) : ไม่ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_097"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_097_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_097"
      When upload file positive "/TC001_097_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_097_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData" for case "TC001_097"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_098 "ตรวจสอบการ Upload MasterCase New Field กรณีเป็น ต่างธนาคาร Look Up Data ของ FI_code (off-us) โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank) - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ข้อมูลธุรกรรมประเภท Payment - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_098"
      Then Query Data Financial Institution "" By Shortname ""
      Then PreparaData file excel folder is "positive/TC001_098_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_098"
      When upload file positive "/TC001_098_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_098_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData" for case "TC001_098"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_099 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_099"
      Then Query Data Financial Institution "2" By Shortname "BPTH"
      Then PreparaData file excel folder is "positive/TC001_099_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_099"
      When upload file positive "/TC001_099_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_099_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @mandatory  #@only
    Scenario: TC001_100 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = ไม่มี - Field เบอร์ Promptpay (ถ้ามี) = ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ระบุข้อมูล - Field FI_code (auto) : ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ระบุข้อมูลที่ไม่มีอยู่ใน Master Data  (Valid Format) - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_100"
      Then Query Data Financial Institution "2" By Shortname "MPAY"
      Then PreparaData file excel folder is "positive/TC001_100_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_100"
      When upload file positive "/TC001_100_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_100_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @optional  #@only
    Scenario: TC001_102 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ข้อมูล Transaction Valid Condition Field ดังนี้ 1. ประเภทของ PromptPay (ถ้ามี) 2. เบอร์ Promptpay (ถ้ามี) 3. เลขที่บัญชีผู้ต้องสงสัย 4. ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย 5. FI_code (auto) 6. หมายเลขอ้างอิงชำระบิล (Biller ID) 7. หมายเลขชำระอ้างอิง 1 (REF1) ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Field ประเภทของ PromptPay (ถ้ามี) = e-wallet - Field เบอร์ Promptpay (ถ้ามี) : ระบุข้อมูลที่มีอยู่ใน Master Data ส่วนของ ""ข้อมูลบัญชีผู้ต้องสงสัยที่ทำรายการกับผู้ให้บริการทางการเงิน (Non-bank)"" - Field เลขที่บัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ผู้ให้บริการทางการเงินของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field FI_code (auto) : ไม่ระบุข้อมูล ส่วนของ ""ข้อมูลธุรกรรมประเภท Payment"" - Field หมายเลขอ้างอิงชำระบิล (Biller ID) : ไม่ระบุข้อมูล - Field หมายเลขชำระอ้างอิง 1 (REF1) : ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_102"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file excel folder is "positive/TC001_102_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_102"
      When upload file positive "/TC001_102_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_102_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file
    @optional  #@only
    Scenario: TC001_106 "ตรวจสอบการ Upload MasterCase New Field โดยระบุข้อมูล ถูกต้อง All Field ยกเว้น ข้อมูล Transaction ส่วนของ ""ข้อมูลผู้ต้องสงสัย"" - Invalid Missing Field - Field เลขบัตรประชาชนหรือหนังสือเดินทางของผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ประเภทบุคคลของเจ้าของบัญชีผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field ชื่อผู้ต้องสงสัย : ไม่ระบุข้อมูล - Field นามสกุลผู้ต้องสงสัย : ไม่ระบุข้อมูล"
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "TC001_106"
      Then Query Data Financial Institution "2" By Shortname "TMN"
      Then PreparaData file excel folder is "positive/TC001_106_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_106"
      When upload file positive "/TC001_106_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/TC001_106_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When should be display master case preview page of "new_template" with data "AllExcelData"
      Then view detail sub trasition of "1" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้เสียหาย"
      Then view detail sub trasition of "2" master case page of "new_template" with data "AllExcelData" on "ข้อมูลผู้ต้องสงสัย"
      Then confirm to create master case
      Then should be display bank case id in search page with data "AllExcelData"
      Then deleted file

