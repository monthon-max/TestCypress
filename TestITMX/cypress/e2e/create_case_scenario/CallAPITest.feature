Feature: ในกรณีผู้เสียหายมี 1 บัญชี โอนไปต่างธนาคาร โดยมีบัญชีม้า 4 แถว 

  As a valid user
  I want to validate case of create master case
    Scenario: Call API Delete BankCaseID
          Given Delete BankCaseID "25670907BBL00001"
          Given Add Master Case "/scenario1/AddMaster.xlsx"
          # Given Add sub Case "/scenario1/AddSub1.xlsx" and "25670907BBL00001" and AccountID "19000000003"
          # Given Add sub Case "/scenario1/AddSub1-1.xlsx" and "25670907BBL00001" and AccountID "19000000004"