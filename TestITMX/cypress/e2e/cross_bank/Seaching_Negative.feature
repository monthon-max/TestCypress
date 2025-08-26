Feature: Validate Seaching Criteria

  As a Validate Result of Cross-Bank Case Searching
  I want to validate case 
    Background:
        Given Delete BankCaseIDArray "25660505CMBT00001"
        Given Add Master Case "/Addmaster_max.xlsx"

    Scenario: TC001_001 กรณี Search โดยไม่ระบุข้อมูล
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "have data for today searching"

    Scenario: TC001_004 กรณี Search Bank Case ID โดยมี Length > 35 Character - Bank Case ID: Length > 35 Character
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25680416BBL0001725680416BBL00017bbl1771" "" "" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "empty"

    Scenario: TC001_005 กรณี Search Bank Case ID ที่ไม่มีในระบบ - Bank Case ID: data not found
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "25680416BBL00032" "" "" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"

    Scenario: TC001_007 กรณี Search Case ID ตำรวจ(หมายแจ้งความ H) โดยมี Length > 128 Character - Case ID ตำรวจ(หมายแจ้งความ H): Length > 128 Character
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "W000000143|H|147817|ตช.0018(นม).(22)/143W000000143|H|147817|ตช.0018(นม).(22)/143W000000143|H|147817|ตช.0018(นม).(22)/143W0000001W000000143|H|147817|ตช.0018(นม).(22)/143W000000143|H|147817|ตช.0018(นม).(22)/143W000000143|H|147817|ตช.0018(นม).(22)/143W0000001" "" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"

    Scenario: TC001_008 กรณี Search Case ID ตำรวจ(หมายแจ้งความ H) ที่ไม่มีในระบบ - Case ID ตำรวจ(หมายแจ้งความ H): data not found
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "W000000143|H|888777|ตช.0018(นม).(22)/143" "" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"

    Scenario: TC001_010 กรณี Search เลขบัตรประชาชนหรือหนังสือเดินทาง โดยมี Length > 35 Character - เลขบัตรประชาชนหรือหนังสือเดินทาง: Length > 35 Character
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "776536333130777653633313077765363337889003456" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_011 กรณี Search เลขบัตรประชาชนหรือหนังสือเดินทาง ที่ไม่มีในระบบ - เลขบัตรประชาชนหรือหนังสือเดินทาง: data not found
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "7052056497813" "" "" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_014 กรณี Search ชื่อเจ้าของบัญชี นามสกุลเจ้าของบัญชี โดยมี Length > 256 Character - ชื่อเจ้าของบัญชี: Length > 256 Character - นามสกุลเจ้าของบัญชี: Length > 256 Character
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "ธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพลธนพล11114455566777788889999" "จันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพรจันทรพร11114455566777788889999" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_015 กรณี Search ชื่อเจ้าของบัญชี นามสกุลเจ้าของบัญชี ที่ไม่มีในระบบ - ชื่อเจ้าของบัญชี: data not found - นามสกุลเจ้าของบัญชี: data not found
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "ณเดช" "คิมิโนะโตะ" "" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_017 กรณี Search เลขที่บัญชีผู้โอน โดยมี Length > 16 Character - เลขที่บัญชีผู้โอน: Length > 16 Character
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "6719795505671979550567197955057778" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_018 กรณี Search เลขที่บัญชีผู้โอน ที่ไม่มีในระบบ - เลขที่บัญชีผู้โอน: data not found
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "6864212232" "" "" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_020 กรณี Search เลขที่บัญชีผู้ต้องสงสัย โดยมี Length > 16 Character - เลขที่บัญชีผู้ต้องสงสัย: Length > 16 Character
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "3796402271379640227137964022714444" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_021 กรณี Search เลขที่บัญชีผู้ต้องสงสัย ที่ไม่มีในระบบ - เลขที่บัญชีผู้ต้องสงสัย: data not found
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "7068737690" "" "" "" "" "" ""
      Then validate result cross bank csae searching is "no records to display"
      
    Scenario: TC001_022 กรณี Search โดยไม่ระบุวันที่ - ตั้งแต่วันที่: ค่าว่าง - ถึงวันที่: ค่าว่าง
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching is "" "" "" "" "" "" "" "" "" "clear" "clear" "" "" ""
      Then validate result cross bank csae searching is "error message searching"
      
    Scenario: TC001_024 กรณี Search วันที่สิ้นสุดของการค้นหา < วันที่เริ่มค้นหา ของวันที่นำเข้า Bank Case ID เข้าระบบ - ตั้งแต่วันที่: Today - ถึงวันที่: ถึงวันที่ < Today
      Given login by BBL 002
      And go to menu cross-bank
      Then should be display cross bank case searching preview page
      Then Searching with fix day startday today need yerterday
      Then validate result cross bank csae searching is "Start date cannot be after end date"
