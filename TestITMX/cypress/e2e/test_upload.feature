Feature: upload file new new

    # @only
    # Scenario: Test excel new template sub case non bank
    # # 25680708BBL01230
    #   Given login ITMX web portal by non bank TBG user
    #   And search result with case id "25680708BBL01230" and clear date
    #   Then should be display web search preview page result
    #   Then view page for "non_bank" add subcase "TC001"
    # @only
    # Scenario: Test excel new template sub case MBs
    # # 25680708BBL09067
    #   Given login ITMX web portal by BBL user
    #   And search result with case id "25680708BBL09067" and clear date
    #   Then should be display web search preview page result
    #   Then view page for "bank" add subcase "TC001"


    @skip
    Scenario: TEST add excel 1 cell
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And should be copy download file "fix"
      Then Query Data Financial Institution "1" 
      Then PreparaData file excel folder is "positive/fix_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "fix"
      When upload file positive "/fix_MasterCase_V16.2_MBs"
      Then Read file excel folder is "positive/fix_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then deleted file
    @only
    Scenario: Test excel new template mastercase
      Then validate_test with "AllExcelData" 
      Given login ITMX web portal by BBL user
      And go to menu create master case by excel file
      And download file "testTemplateAddNewCase_V16.2_MBs"
      # Then Query Data Financial Institution "2"
      # Then PreparaData file excel folder is "positive/TC001_009_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase" and dataset for "TC001_009"
      Then Edit file excel folder is "positive/testTemplateAddNewCase_V16.2_MBs_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      Then Read file excel folder is "positive/testTemplateAddNewCase_V16.2_MBs_MasterCase_V16.2_MBs.xlsx" and sheetname is "CreateBankCase"
      When upload file positive "/testTemplateAddNewCase_V16.2_MBs_MasterCase_V16.2_MBs"
      # Then validate_test with "sender" 
      # Then deleted file

      
      @skip
    Scenario: Test excel file dark brown
      Given login ITMX web portal by BBL user
      And go to menu Dark Brown Mule Registry
      When upload file dark brown mule is "Positive" should be morify for newFilePath and this is old fileName is "BrownMule_Registry_V1.0_002_NEW_2568-02-11_101" and input file extension is "xlsx"
      When check file name and deleted old file before upload
      Then Read file excel folder is "Brown_mule_EP3_Upload" and sheetname is "นำเข้าข้อมูลม้าน้ำตาลเข้ม"
      Then Edit file excel folder is "Brown_mule_EP3_Upload" and sheetname is "นำเข้าข้อมูลม้าน้ำตาลเข้ม"
      Then Read file excel folder is "Brown_mule_EP3_Upload" and sheetname is "นำเข้าข้อมูลม้าน้ำตาลเข้ม"
      When upload file positive dark brown mule
      Then Read file excel folder is "Brown_mule_EP3_Upload" and sheetname is "นำเข้าข้อมูลม้าน้ำตาลเข้ม"
      Then deleted file "Brown_mule_EP3_Upload"
      Given Deleted All Dark Brown Mule

      @skip
    Scenario: Test excel file exchange acc
      Given login ITMX web portal by BBL user
      And go to menu Exchange Account Registry
      When upload file should be morify for newFilePath and this is old fileName is "ExchangeAccount_Registry_V1.0_002_NEW_2568-02-05_114" and input file extension is "xlsx"
      Then Read file excel folder is "ExchangeAccount_BBB_NEW" and sheetname is "นำเข้าข้อมูลบัญชี Crypto"
      # Then maxtest
      # Then Edit file excel folder is "ExchangeAccount_BBB_NEW" and sheetname is "นำเข้าข้อมูลบัญชี Crypto"
      # When upload file positive exchange account registry
      # Then Read file excel folder is "ExchangeAccount_BBB_NEW" and sheetname is "นำเข้าข้อมูลบัญชี Crypto"      
      # Given Query And CheckDB Validate Exchange Account Registry "ExchangeAccount_BBB_NEW_JSON/TS001_001_004"
      Then deleted file "ExchangeAccount_BBB_NEW"
      # Given Deleted Query All
