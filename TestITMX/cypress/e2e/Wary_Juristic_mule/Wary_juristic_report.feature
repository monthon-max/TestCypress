Feature: 

  As a Upload criteria
  I want to validate case  

    Scenario: TC003_001 'ตรวจสอบสิทธิ์การเข้าถึง Menu "Wary Juristic Mule Report" ในกรณีที่ไม่มี Permission
      Given login ITMX web portal by LHB user
      Then go to menu Report
      When I Dont look for button Wary Juristic Mule Report

    Scenario: TC003_002 'ตรวจสอบสิทธิ์การเข้าถึง Menu "Wary Juristic Mule Report" ในกรณีที่มี Permission
      Given login ITMX web portal by BBL user
      Then go to menu Report
      When I look for button Wary Juristic Mule Report
      
    Scenario: TC003_003 Verify file on Web Protal, - Wary_Juristic_Mule_Report_YYYY-MM-DD_<Running_Number>.zip 
      Given login ITMX web portal by BBL user
      Then go to menu Report
      When Download File and Validate Label Wary Juristic Mule Report
      Then I should see the Wary Juristic Mule report file and downloads