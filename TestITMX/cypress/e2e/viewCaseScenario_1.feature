Feature: ดูข้อมูล ในกรณีผู้เสียหายมี 1 บัญชี โอนไปต่างธนาคาร โดยมีบัญชีม้า 4 แถว 

    Scenario: TS-CFR-VIEW-001 As a CMBT Bank, able to view detail of master case to horse1 MHCB
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00001" with to account number "1000000039" and from account number "1000000022"
      When click view description of the transaction
      Then should be display detail of creater bank case "scenario1"
      And should be display detail of all transaction of scenario1
      And view detail of the transaction "scenario1"
      And view sub case detail of the transaction horse2 mhcb to bbl "scenario1" in row 1
      And view sub case detail of the transaction horse2 bbl to kbank "scenario1" in row 2
      And view sub case detail of the transaction horse3 kbnk to ktb "scenario1" in row 3

