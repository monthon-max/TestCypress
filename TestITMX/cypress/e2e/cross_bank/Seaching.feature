Feature: Validate Seaching Criteria

  As a Validate Result of Cross-Bank Case Searching
  I want to validate case 
    Background:
        Given Delete BankCaseIDArray "25660505CMBT00001,25670907BBL00001,25660505CMBT00010"
        Given Add Master Case "/Addmaster_max.xlsx"
        Given Add Master Case "/Addmaster_max2.xlsx"
        Given Add Master Case "/scenario1/AddMaster.xlsx"
        Given Add sub Case "/scenario1/AddSub1.xlsx" and "25670907BBL00001" and AccountID "19000000003" and BankCode "002"
      
    Scenario: TC001_002 กรณี Search Bank Case ID ที่มีในระบบ- กรณี Search ด้วย Bank ที่ไม่อยู่ในเส้นทางการเงิน - Bank Case ID: Exact match
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25660505CMBT00001"
      Then validate result cross bank csae searching with case "CrossBank/TC001_002"
      
    Scenario: TC001_003 กรณี Search Bank Case ID ที่มีในระบบ - กรณี Search ด้วย Bank ที่อยู่ในเส้นทางการเงิน - Bank Case ID: Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25660505CMBT00001"
      Then validate result cross bank csae searching with case "CrossBank/TC001_003"
      
    Scenario: TC001_006 กรณี Search Case ID ตำรวจ(หมายแจ้งความ H) ที่มีในระบบ - Case ID ตำรวจ(หมายแจ้งความ H): Exact match
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching with query is "POLICE_CASE_NUMBER"
      Then validate result cross bank csae searching is "valid police case id"

    Scenario: TC001_009 กรณี Search เลขบัตรประชาชนหรือหนังสือเดินทาง ที่มีในระบบ - เลขบัตรประชาชนหรือหนังสือเดินทาง: Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "1102002535679" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching with case "CrossBank/TC001_009"

    Scenario: TC001_012 กรณี Search ชื่อเจ้าของบัญชี นามสกุลเจ้าของบัญชี ผู้เสียหาย ที่มีในระบบ - ชื่อเจ้าของบัญชี ผู้เสียหาย: Exact match - นามสกุลเจ้าของบัญชี ผู้เสียหาย: Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "Max" "Test" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching with case "CrossBank/TC001_012"

    Scenario: TC001_013 กรณี Search ชื่อเจ้าของบัญชี นามสกุลเจ้าของบัญชี ผู้ต้องสงสัย ที่มีในระบบ - ชื่อเจ้าของบัญชี ผู้ต้องสงสัย: Exact match - นามสกุลเจ้าของบัญชี ผู้ต้องสงสัย: Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "MMM" "Test" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching with case "CrossBank/TC001_013"

    Scenario: TC001_016 กรณี Search เลขที่บัญชีผู้โอน ธนาคารผู้โอน ที่มีในระบบ - เลขที่บัญชีผู้โอน: Exact match - ธนาคารผู้โอน: Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "1000000022" "ธนาคารกรุงเทพ จำกัด (มหาชน)" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching with case "CrossBank/TC001_016"

    Scenario: TC001_019 กรณี Search เลขที่บัญชีผู้ต้องสงสัย ธนาคารผู้ต้องสงสัย ที่มีในระบบ - เลขที่บัญชีผู้ต้องสงสัย: Exact match - ธนาคารผู้ต้องสงสัย: Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "1000000039" "ธนาคารมิซูโฮ จำกัด" "" "" "" "" ""
      Then validate result cross bank csae searching with case "CrossBank/TC001_019"

    Scenario: TC001_023 กรณี Search วันที่เริ่มค้นหาของ วันที่นำเข้า Bank Case ID เข้าระบบ โดยระบุวันที่ตาม format date dd/MM/yyyy (B.E.) - ตั้งแต่วันที่: dd/MM/yyyy (B.E.)
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "" "clear" "" "" ""
      Then validate result cross bank csae searching is "have data for today searching"

    Scenario: TC001_025 กรณี Search วันที่สิ้นสุดของการค้นหาของ วันที่นำเข้า Bank Case ID เข้าระบบ โดยระบุวันที่ตาม format date dd/MM/yyyy (B.E.) - ถึงวันที่: dd/MM/yyyy (B.E.)
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "clear" "" "" "" ""
      Then validate result cross bank csae searching is "have data for today searching and click soft"

    Scenario: TC001_026 กรณี Search แบบ All field
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is QueryData All Field
      Then should be match with query data in table

    Scenario: TC001_027 กรณี Search แบบ All field กดยกเลิก
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25680416BBL00017" "W000000143|H|147817|ตช.0018(นม).(22)/143" "5759781171256" "ชนิสา" "สุขุมวิทยาพร" "6719795505" "ธนาคารกรุงเทพ จำกัด (มหาชน)" "3796402271" "ธนาคารกสิกรไทย จำกัด (มหาชน)" "clear" "" "skip" "" ""
      # skill validate for now  *** หลังกด ยกเลิก นะบบ ไม่เคลียร์ ค่า ฟิลด์  ธนาคารผู้โอน และ ธนาคารผู้ต้องสงสัย  Dev ยังไม่แก้  เนื่องจากยึดจากการทำงานหน้า Bank Case Registry
      # Then validate result cross bank csae searching is "click clear and should be searching clear all"

    Scenario: TC001_028 ตรวจสอบการแสดงผลหลังจากกดปุ่ม “ดูรายละเอียด” 
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25660505CMBT00001"
      Then Click Viewing ""
      Then should be display viewing cross bank case searching preview page

    Scenario: TC001_029 ตรวจสอบการแสดงผลหลังจากกดปุ่ม “ดูรายละเอียด”  ที่แท็บ Information
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25660505CMBT00001"
      Then Click Viewing ""
      Then should be display viewing cross bank case searching preview page
      Then validate result cross bank case viewing is "valid_data_information" and case is "CrossBank/TC001_029"

    Scenario: TC001_030 ตรวจสอบการแสดงผลหลังจากกดปุ่ม “ดูรายละเอียด”  ที่แท็บ Dashboard
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25660505CMBT00001"
      Then Click Viewing ""
      Then should be display viewing cross bank case searching preview page
      Then validate result cross bank case viewing is "valid_data_dashboard" and case is "CrossBank/TC001_030"

    Scenario: TC001_031 ตรวจสอบการแสดงผลส่วน รายละเอียดบัญชี (CSV) - กดปุ่ม Icon (ดูรายละเอียด)
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25660505CMBT00001"
      Then Click Viewing ""
      Then should be display viewing cross bank case searching preview page
      Then validate result cross bank case viewing is "valid_data_click_action_viewing" and case is "CrossBank/TC001_031"

    Scenario: TC001_032 กรณี Search ลักษณะเคส  ที่มีในระบบ - ลักษณะเคส : Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "" "" "" "หลอกลวงซื้อขายสินค้า หรือบริการ" ""
      Then validate result cross bank csae searching is "have value in table"

    Scenario: TC001_033 กรณี Search แถว ที่มีในระบบ - แถว : Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "" "" "" "" "1"
      Then validate result cross bank csae searching is "have value in table"

    Scenario: TC001_034 กรณี Search  ลักษณะเคส และ แถว ที่มีในระบบ - ลักษณะเคส : Exact match - แถว : Exact match
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "" "" "" "หลอกลวงซื้อขายสินค้า หรือบริการ" "1"
      Then validate result cross bank csae searching is "have value in table"

    Scenario: TC001_035 กรณี Search แถว ที่ไม่มีในระบบ - แถว : data not found
      Given login ITMX web portal by KTB user
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "" "" "" "" "10"
      Then validate result cross bank csae searching is "no records to display"

    Scenario: TC002_001 Sort field Bank Case ID
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "f.MASTER_CASE_ID"
      Then Query Check result after click soft more or less "ASC" and header to validate is "f.MASTER_CASE_ID"

    Scenario: TC002_002 Sort field แถว
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "b1.SUB_CASE_RANK"
      Then Query Check result after click soft more or less "ASC" and header to validate is "b1.SUB_CASE_RANK"

    Scenario: TC002_003 Sort field ธนาคารผู้โอน
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "b.SHORT_NAME"
      Then Query Check result after click soft more or less "ASC" and header to validate is "b.SHORT_NAME"

    Scenario: TC002_004 Sort field ธนาคารผู้ต้องสงสัย
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "Receiver_BankShortName" for receiver
      Then Query Check result after click soft more or less "ASC" and header to validate is "Receiver_BankShortName" for receiver

    Scenario: TC002_005 Sort field เวลาของ Transaction เริ่มต้น 
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "t.TRANSACTION_TIME" for transition_start_end transition_start_end max or min in row is "MIN"
      Then Query Check result after click soft more or less "ASC" and header to validate is "t.TRANSACTION_TIME" for transition_start_end transition_start_end max or min in row is "MIN"

    Scenario: TC002_006 Sort field เวลาของ Transaction สิ้นสุด
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "t.TRANSACTION_TIME" for transition_start_end transition_start_end max or min in row is "MAX"
      Then Query Check result after click soft more or less "ASC" and header to validate is "t.TRANSACTION_TIME" for transition_start_end transition_start_end max or min in row is "MAX"

    Scenario: TC002_007 Sort field ยอดเงิน
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "AMOUNT" for amount
      Then Query Check result after click soft more or less "ASC" and header to validate is "AMOUNT" for amount

    Scenario: TC002_008 Sort field วันที่เข้าระบบ
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "b2.CREATE_DATETIME"
      Then Query Check result after click soft more or less "ASC" and header to validate is "b2.CREATE_DATETIME"

    Scenario: TC002_009 Sort field หมายเลขเคสจากตำรวจ (Case ID ตำรวจ) 
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "f.POLICE_CASE_NUMBER"
      Then Query Check result after click soft more or less "ASC" and header to validate is "f.POLICE_CASE_NUMBER"


    Scenario: TC002_010 Sort field วันที่แจ้งความจากตำรวจ
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "click on searching"
      Given Query Check result after click soft more or less "DESC" and header to validate is "f.CASE_DATE_TIME"
      Then Query Check result after click soft more or less "ASC" and header to validate is "f.CASE_DATE_TIME"

