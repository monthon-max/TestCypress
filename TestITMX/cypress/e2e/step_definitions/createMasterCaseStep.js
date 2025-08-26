import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import LoginPage from './loginPage';
import CreateMasterCasePage from './createMasterCasePage';
// import excelReadFilePage from './excelReadFilePage';
// import { log } from 'cypress/lib/logger';
// const xlsx = require('xlsx');

Then('should be display master case preview page of {string} with valid description', scenario =>{
    CreateMasterCasePage.displayLable()
    CreateMasterCasePage.caseIdDisplay(scenario)
    CreateMasterCasePage.caseTypeDisplay(scenario)
    // CreateMasterCasePage.policeIdDisplay(scenario)
    CreateMasterCasePage.masterCaseNameDisplay(scenario)
    CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
    CreateMasterCasePage.masterCaseTypeDisplay(scenario)
    CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
    CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
    CreateMasterCasePage.masterAccountDetailDisplay(scenario)
    CreateMasterCasePage.TotalTransactionDisplay(scenario)
    CreateMasterCasePage.TotalAmountDisplay(scenario)
    CreateMasterCasePage.masterToAccountDetailDisplay(scenario)
    CreateMasterCasePage.transactionCountDisplay(scenario)
    CreateMasterCasePage.TotalAmountDisplay(scenario)
})
Then('should be display master case preview page of {string} to horse1 KKP and LHB with valid description', scenario =>{
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterAccountDetailDisplay(scenario)
  CreateMasterCasePage.TotalTransactionDisplay(scenario)
  CreateMasterCasePage.TotalAmountDisplay(scenario)
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(3,testdata.master_case_to_account_name,testdata.master_case_to_account_surename,testdata.master_case_to_account,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(3,testdata.transaction_count)
    CreateMasterCasePage.toAmountTxnDisplay(3,testdata.amount)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(4,testdata.master_case_to_account_name_lhb,testdata.master_case_to_account_surename_lhb,testdata.master_case_to_account_lh,testdata.master_case_to_account_owner_lh)
    CreateMasterCasePage.transactionCountTxnDisplay(4,testdata.transaction_count_lh)
    CreateMasterCasePage.toAmountTxnDisplay(4,testdata.amount_lh)
  })
})
Then('should be display master case preview page of {string} to horse1 SCB with valid description', scenario =>{
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterAccountDetailDisplay(scenario)
  CreateMasterCasePage.TotalTransactionDisplay(scenario)
  CreateMasterCasePage.TotalAmountDisplay(scenario)
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(2,testdata.master_case_to_account_name,testdata.master_case_to_account_surname,testdata.master_case_to_account,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(2,testdata.transaction_count)
    CreateMasterCasePage.toAmountTxnDisplay(2,testdata.amount)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(3,testdata.master_transaction_1_to_acc_bank,testdata.master_transaction_1_to_acc_name,testdata.master_transaction_1_to_acc_no,testdata.master_case_to_account_owner_to_Receipt)
    CreateMasterCasePage.transactionCountTxnDisplay(3,testdata.transaction_count)
    CreateMasterCasePage.toAmountTxnDisplay(3,testdata.amount)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(4,testdata.master_case_to_account_name,testdata.master_case_to_account_surname,testdata.master_case_to_account2,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(4,testdata.transaction_count2)
    CreateMasterCasePage.toAmountTxnDisplay(4,testdata.amount2)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(5,testdata.master_transaction_1_to_acc_bank,testdata.master_transaction_1_to_acc_name,testdata.master_transaction_1_to_acc_no,testdata.master_case_to_account_owner_to_Receipt)
    CreateMasterCasePage.transactionCountTxnDisplay(5,testdata.transaction_count2)
    CreateMasterCasePage.toAmountTxnDisplay(5,testdata.amount2)
  })
})

Then('should be display master case preview page of {string} to horse1 MEGA with valid description', scenario =>{
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterAccountDetailDisplay(scenario)
  CreateMasterCasePage.TotalTransactionDisplay(scenario)
  CreateMasterCasePage.TotalAmountDisplay(scenario)
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(2,testdata.master_case_to_account_name,testdata.master_case_to_account_surname,testdata.master_case_to_account,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(2,testdata.transaction_count)
    CreateMasterCasePage.toAmountTxnDisplay(2,testdata.amount)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(3,testdata.master_transaction_1_to_acc_bank,testdata.master_transaction_1_to_acc_name,testdata.master_transaction_1_to_acc_no,testdata.master_case_to_account_owner_to_Receipt)
    CreateMasterCasePage.transactionCountTxnDisplay(3,testdata.transaction_count)
    CreateMasterCasePage.toAmountTxnDisplay(3,testdata.amount)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(4,testdata.master_case_to_account_name,testdata.master_case_to_account_surname,testdata.master_case_to_account2,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(4,testdata.transaction_count2)
    CreateMasterCasePage.toAmountTxnDisplay(4,testdata.amount2)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(5,testdata.master_transaction_1_to_acc_bank,testdata.master_transaction_1_to_acc_name,testdata.master_transaction_1_to_acc_no,testdata.master_case_to_account_owner_to_Receipt)
    CreateMasterCasePage.transactionCountTxnDisplay(5,testdata.transaction_count2)
    CreateMasterCasePage.toAmountTxnDisplay(5,testdata.amount2)
  })
})

Then('view detail of the transaction {string}',scenario =>{
    CreateMasterCasePage.clickViewDetailFirst()
    // CreateMasterCasePage.displayLable()
    CreateMasterCasePage.caseIdDisplay(scenario)
    CreateMasterCasePage.caseTypeDisplay(scenario)
    // CreateMasterCasePage.policeIdDisplay(scenario)
    // CreateMasterCasePage.policeDateTimeDisplay(scenario)
    CreateMasterCasePage.masterCaseNameDisplay(scenario)
    CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
    CreateMasterCasePage.masterCaseTypeDisplay(scenario)
    CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
    CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
    CreateMasterCasePage.masterCaseDetailDisplay(scenario)
    CreateMasterCasePage.contactFullNameDisplay(scenario)
    CreateMasterCasePage.contactPhoneDisplay(scenario)
    CreateMasterCasePage.contactEmailDisplay(scenario)
    CreateMasterCasePage.contactRelationDisplay(scenario)
    CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
    CreateMasterCasePage.masterCaseAccNoOwnerDisplay(scenario)
    // Transaction
    CreateMasterCasePage.transactionRow1Display(scenario)
    CreateMasterCasePage.transactionRow2Display(scenario)
    CreateMasterCasePage.transactionRow3Display(scenario)
    CreateMasterCasePage.closeViewDetail()
})
Then('view detail of the transaction from tisco {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailFirst()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the transaction from bbl {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailFirst()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  CreateMasterCasePage.policeIdDisplay(scenario)
  CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the transaction from bbl CaseSt03_001 {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailFirst()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the transaction from mega CaseSt04_001 {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailFirst()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the transaction from bbl CaseSt03_002 {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailNextLevel2()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay2(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time2,testdata.master_acc2,testdata.master_to_bank2,testdata.master_to_acc_name2,testdata.master_to_amt2,testdata.master_to_txn2,testdata.master_ip2)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the transaction from mega CaseSt04_002 {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailNextLevel2()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay2(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time2,testdata.master_acc2,testdata.master_to_bank2,testdata.master_to_acc_name2,testdata.master_to_amt2,testdata.master_to_txn2,testdata.master_ip2)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 1 {string}',scenario => {
    CreateMasterCasePage.clickViewDetailNextLevel()
    CreateMasterCasePage.nameTransfereeDisplay(scenario)
    CreateMasterCasePage.sureNameTransfereeDisplay(scenario)
    CreateMasterCasePage.typeTransfereeDisplay(scenario)
    CreateMasterCasePage.promptPayTypeTransfereeDisplay(scenario)
    CreateMasterCasePage.promptPayNoTransfereeDisplay(scenario)
    CreateMasterCasePage.phoneNoTransfereeDisplay(scenario)
    CreateMasterCasePage.bankNameTransfereeDisplay(scenario)
    CreateMasterCasePage.accountTransfereeDisplay(scenario)
    CreateMasterCasePage.dateOfFreezeAcc72hrDisplay(scenario)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrDisplay(scenario)
    CreateMasterCasePage.dateOfReportPoliceDisplay(scenario)
    CreateMasterCasePage.dateOfFreezeAcc7dayDisplay(scenario)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayDisplay(scenario)   
    CreateMasterCasePage.dateOfFreezeByPoliceDisplay(scenario)
    CreateMasterCasePage.dateOfUnFreezeByPoliceDisplay(scenario)
    CreateMasterCasePage.typeOfFreezeByBankDisplay(scenario)
    CreateMasterCasePage.amountFreezeByBankDisplay(scenario)
    CreateMasterCasePage.balanceDisplay(scenario)
    CreateMasterCasePage.typeOfFreezeByPoliceDisplay(scenario)
    CreateMasterCasePage.policeFreezeNumberDisplay(scenario)
    CreateMasterCasePage.amountFreezeByPoliceDisplay(scenario)
    CreateMasterCasePage.policeUnFreezeNumberDisplay(scenario)
    CreateMasterCasePage.closeViewDetail()
})
Then('view detail of the sub transaction 1 kkp {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surename)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 1 SCB {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
      CreateMasterCasePage.closeViewDetail()
    })
    // CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 1 mega {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
      CreateMasterCasePage.closeViewDetail()
    })
    // CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 2 SCB {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel3()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time2,testdata.master_acc2,testdata.master_to_bank2,testdata.master_to_acc_name2,testdata.master_to_amt2,testdata.master_to_txn2,testdata.master_ip2)
      CreateMasterCasePage.closeViewDetail()
    })
    // CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 2 mega {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel3()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time2,testdata.master_acc2,testdata.master_to_bank2,testdata.master_to_acc_name2,testdata.master_to_amt2,testdata.master_to_txn2,testdata.master_ip2)
      CreateMasterCasePage.closeViewDetail()
    })
    // CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 2 lhb {string}',scenario => {
  CreateMasterCasePage.clickViewDetailWithRow(2)
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_lhb)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surename_lhb)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type_lh)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type_lh)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id_lh)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no_lh)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name_lh)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_lh)

    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date_lhb)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date_lhb)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police_lhb)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date_lhb)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date_lhb)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date_lhb)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date_lhb)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank_lhb)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank_lhb)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance_lhb)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police_lhb)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num_lhb)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount_lhb)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num_lhb)
    CreateMasterCasePage.closeViewDetail()
  })
})
Then('confirm to create master case',() => {
    CreateMasterCasePage.clickConfirmMasterCase()
    CreateMasterCasePage.clickFinalConfirmMasterCase()    
    cy.wait(2000)
})
Then('should be display bank case id {string} in search page',bankcaseid => {
  CreateMasterCasePage.searchResultwithCaseId(bankcaseid)
})

Given('remove master case of {string}', scenario =>{
  cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.removeCaseIdInExcel(testdata.case_id)
  }) 
})
Then('BBL create master case by excel file', () =>{
    CreateMasterCasePage.updateCaseIdInExcel()
    })

Given('readExcelFile {string} {string} {string} {string} {string}', (excelFilePath, sheetName, row, column, newValue) =>{
    log   (excelFilePath)
    log   (sheetName)
    log   (row)
    log   (column)
    log   (newValue)
    excelReadFilePage.getCellValue(excelFilePath, sheetName, row, column, newValue)
    })


Then('go to menu create master case',() => {
    LoginPage.clickCFRWebPortalDev()
})
Then('go to menu create master case by excel file',() => {
    LoginPage.clickCFRWebPortalDev()
    CreateMasterCasePage.clickAddMasterCase()
})
Then('go to menu web seach',() => {
    LoginPage.clickCFRWebPortalDev()
    cy.contains('Inquiry').click()
    cy.contains('Mule Search').click()
})
Then('go to menu cross-bank',() => {
    LoginPage.clickCFRWebPortalDev()
    cy.contains('Inquiry').click()
    cy.contains('Cross Bank Case Searching').click()
})
Then('go to menu cross-bank-viewing-history',() => {
    // LoginPage.clickCFRWebPortalDev()
    // cy.contains('Inquiry').click()
    cy.contains('Cross-Bank Case Viewing History').click()
})
Then('Logout 002cfr',() => {
  cy.get('.MuiBox-root > .MuiButtonBase-root').click({force:true})
    cy.contains('Logout').click({force:true})
    cy.contains('Logout',{timeout:3000}).click()
})
Then('go to menu and click on Inquiry',() => {
    LoginPage.clickCFRWebPortalDevByInquiry()
})

Then('go to menu web seach',() => {
    LoginPage.clickCFRWebPortalDev()
    cy.contains('Inquiry').click()
    cy.contains('Mule Search').click()
})
Then('Logout 002cfr',() => {
  cy.get('.MuiBox-root > .MuiButtonBase-root').click({force:true})
    cy.contains('Logout').click({force:true})
    cy.contains('Logout',{timeout:3000}).click()
})
Then('go to menu and click on Inquiry',() => {
    LoginPage.clickCFRWebPortalDevByInquiry()
})
Then('go to menu Brown Mule create master case by excel file',() => {
    LoginPage.clickCFRWebPortalDev()  
    cy.contains('Brown Mule Registry').click()  
})
Then('go to menu Exchange Account Registry',() => {
    LoginPage.clickCFRWebPortalDev()  
    cy.contains('Exchange Account Registry').click()  
})
Then('Check button exchange account registry permission',() => {
  LoginPage.checkbuttonExchangeAccountRegistryPermission()   
})
Then('go to menu Dark brown mule registry cancel',() => {
  LoginPage.clickCFRWebPortalDev()  
  cy.contains('Dark Brown Mule Registry').click()  
})
Then('go to menu Brown Mule create',() => {
  LoginPage.checkBrownMuleRegistry() 
})

When('I look for button Brown Mule Registry', function () {
 CreateMasterCasePage.IlookforbuttonBrownMuleRegistry()
})
When('I look for button Exchange Account Registry', function () {
 CreateMasterCasePage.IlookforbuttonExchangeAccountRegistry()
})
When('I look for button Dark Brown Mule Registry', function () {
  CreateMasterCasePage.IlookforbuttonDarkBrownMuleRegistry()
})
When('I Dont look for button Exchange Account Registry', function () {
 CreateMasterCasePage.IDontSeeforbuttonExchangeAccountRegistry()
})

Then('I should see button Brown Mule Registry on the page', function () {
  CreateMasterCasePage.IshouldseebuttonBrownMuleRegistryonthepage()
})

Then('I should see button Exchange Account Registry on the page', function () {
  CreateMasterCasePage.IshouldseebuttonExchangeAccountRegistryonthepage()
})
Then('I should see Menu Dark Brown Mule Registry on the page', function () {
  CreateMasterCasePage.IshouldseeMenuDarkBrownMuleRegistryonthepage()
})
Then('go to menu create master case by excel file DEV LOCAL',() => {
  LoginPage.clickCFRWebPortalDevLocal()
  CreateMasterCasePage.clickAddMasterCase()
})

Then('go to menu create master case by excel file NFT',() => {
  LoginPage.clickCFRWebPortalNFT()
  CreateMasterCasePage.clickAddMasterCase()
})

When('upload file negative {string}',fileName =>{
    CreateMasterCasePage.uploadFileMasterCase(fileName)
})
When('upload file positive {string}',fileName =>{
  CreateMasterCasePage.uploadFileMasterCasePositive(fileName)
})

When('upload file positive brown {string}',fileName =>{
  CreateMasterCasePage.uploadFileMasterCasePositiveBrown(fileName)
})
When('upload file positive brown male {string}',fileName =>{
  CreateMasterCasePage.uploadFileMasterCasePositiveBrownmale(fileName)
})
When('upload file positive exchange account registry',() =>{
  const updatedFileName =   Cypress.env("updatedFileName")
  cy.log(updatedFileName)
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadFileMasterCasePositiveExchangeAccount(updatedFileName)
})
When('upload file negative exchange account registry row2',() =>{
  const updatedFileName =   Cypress.env("updatedFileName2")
  cy.log(updatedFileName)
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadFileMasterCasePositiveExchangeAccount(updatedFileName)
})
When('upload file negative exchange account registry and morify file extension is {string}',fileexten =>{
  const updatedFileName =   Cypress.env("updatedFileName")
  cy.log(updatedFileName)
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadFileMasterCasePositiveExchangeAccount_Negative(updatedFileName,fileexten)
})
When('upload file negative exchange account registry filename is {string}',filename =>{
  const updatedFileName =  filename
  cy.log(updatedFileName)
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${filename}.xlsx`;
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${filename}.xlsx`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadFileMasterCasePositiveExchangeAccount(filename)
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string}',(fileName,fileextension)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  CreateMasterCasePage.Checkfilename(updatedFileName)
})
When('upload file upload file the one to day 1 should be morify for newFilePath and this is old fileName is {string}',(fileName)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  currentDate.setDate(currentDate.getDate() + 1)
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileName}.xlsx`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} format date',(fileName,fileextension)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `YYYY-MM-DD`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} And prefix file is {string}',(fileName,fileextension,prefix)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("ExchangeAccount", `${prefix}ExchangeAccount`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and fix running number {string}',(fileName,fileextension,running)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `2568-02-05`);
  let updatedFileNameagain = updatedFileName
  .replace("114", `${running}`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and fix running number for case TS001_004_015 {string}',(fileName,fileextension,running)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("415", `${running}`)
  Cypress.env("updatedFileName2", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} And bankcode is {string}',(fileName,fileextension,bankcode)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("002", `${bankcode}`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} And file add is {string}',(fileName,fileextension,fileadd)=>{
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("NEW", `${fileadd}`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload files should be morify for newFilePath and this is old fileName is {string} and input file extension is {string}',(fileName,fileextension)=>{
  const oldFilePath = `cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Positive/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Positive/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} test', (fileName, fileextension) => {
  const oldFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/mainFile/${fileName}.xlsx`;

  // ดึงวันที่ปัจจุบันและแปลงเป็นรูปแบบที่ต้องการ
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); 
  const day = String(currentDate.getDate()).padStart(2, '0');

  // อัปเดตชื่อไฟล์
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename", updatedFileName);

  const newFilePath = `cypress/fixtures/ExchangeAccount_BBB_NEW/${updatedFileName}.${fileextension}`;

  // โหลดไฟล์ที่อัปโหลดแล้ว
  let uploadedFiles = Cypress.env("uploadedFiles") || [];
  uploadedFiles.push(updatedFileName); // เพิ่มไฟล์ใหม่เข้าไป
  Cypress.env("uploadedFiles", uploadedFiles);
  cy.log("Updated uploaded files: ", Cypress.env("uploadedFiles"));

  // คัดลอกไฟล์ไปยังตำแหน่งใหม่
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
});


When('Click info page upload file exchange account registry',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
})
When('upload file negative brown {string}',fileName =>{
  CreateMasterCasePage.uploadFileMasterCaseNegativeBrown(fileName)
})
When('upload file negative brown {string} pdf',fileName =>{
  CreateMasterCasePage.uploadFileMasterCaseNegativeBrownpdf(fileName)
})
When('upload file negative exchange acct cancel {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfilenegativeexchangeacctcancel(fileName)
})
When('upload file negative dark brown mule registry {string}',fileName =>{
  CreateMasterCasePage.uploadfilenegativedarkbrownmuleregistry(fileName)
})

Then('cancel file' ,() => {
  cy.contains('ยกเลิก').click()
  cy.wait(3000)
})

When('upload file negative exchange acct cancel case update day latest {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfilenegativeexchangeacctcancelcaseupdatedaylatest(fileName)
})
When('upload file positive exchange acct cancel case update day latest {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfilepositiveexchangeacctcancelcaseupdatedaylatest(fileName)
})
When('upload file positive exchange acct cancel {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfilepositiveexchangeacctcancel(fileName)
})

When('upload file positive exchange acct add {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfilepositiveexchangeacctadd(fileName)
})
When('upload file negative exchange acct cancel {string} pdf',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfilenegativeexchangeacctcancelpdf(fileName)
})
When('upload file dark brown mule registry cancel case update day latest {string}',fileName =>{
  CreateMasterCasePage.uploadfiledarkbrownmuleregistrycancelcaseupdatedaylatest(fileName)
})
When('upload file dark brown mule registry cancel case positive update day latest {string}',fileName =>{
  CreateMasterCasePage.uploadfiledarkbrownmuleregistrycancelcasepositiveupdatedaylatest(fileName)
})
When('upload file dark brown mule registry case add positive update day latest {string}',fileName =>{
  CreateMasterCasePage.uploadfiledarkbrownmuleregistrycaseaddpositiveupdatedaylatest(fileName)
})

Then('should be display popup error message is {string}',errMsg =>{
    if (errMsg == "bankcase_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.bankcase_invalid)
        }) 
      }
      else if (errMsg == "police_date_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.police_date_invalid)
        }) 
      }  
      else if (errMsg == "police_time_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.police_time_invalid)
        }) 
      }
      else if (errMsg == "police_case_id_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.police_case_id_invalid)
        }) 
      }
      else if (errMsg == "detect_by_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.detect_by_invalid)
        }) 
      }
      else if (errMsg == "payer_natid_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.payer_natid_invalid)
        }) 
      }
      else if (errMsg == "payer_type_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.payer_type_invalid)
        }) 
      }
      else if (errMsg == "payer_name_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.payer_name_invalid)
        }) 
      }
      else if (errMsg == "payer_last_name_invalid") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.payer_last_name_invalid)
        }) 
      }
      else if (errMsg == "case_description_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.case_description_invalid)
        }) 
      }
      else if (errMsg == "account_no_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.account_no_invalid)
        }) 
      } 
      else if (errMsg == "bankname_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.bankname_invalid)
        }) 
      } 
      else if (errMsg == "bankcode_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.bankcode_invalid)
        }) 
      } 
      else if (errMsg == "phone_no_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.phone_no_invalid)
        }) 
      }  
      else if (errMsg == "contact_name_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.contact_name_invalid)
        }) 
      }   
      else if (errMsg == "contact_email_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.contact_email_invalid)
        }) 
      }   
      else if (errMsg == "contact_relation_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.contact_relation_invalid)
        }) 
      }   
      else if (errMsg == "txn_payer_name_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_name_invalid)
        }) 
      }
      else if (errMsg == "txn_payer_lastname_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_lastname_invalid)
        }) 
      }
      else if (errMsg == "txn_payer_accountNo_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_accountNo_invalid)
        }) 
      }
      else if (errMsg == "txn_payer_bankname_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_bankname_invalid)
        }) 
      }
      else if (errMsg == "txn_payer_bankcode_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_bankcode_invalid)
        }) 
      }
      else if (errMsg == "txn_ip_address_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_ip_address_invalid)
        }) 
      }
      else if (errMsg == "txn_natid_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_natid_invalid)
        }) 
      }
      else if (errMsg == "txn_payee_type") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_type)
        }) 
      }
      else if (errMsg == "txn_payee_name") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_name)
        }) 
      } 
      else if (errMsg == "txn_payee_account_no") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_account_no)
        }) 
      }
      else if (errMsg == "txn_payee_phone_no") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_phone_no)
        }) 
      }
      else if (errMsg == "payer_natid_invalid_m1") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.payer_natid_invalid_m1)
        }) 
      }
      else if (errMsg == "payer_name_length_invalid_m1") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.payer_name_length_invalid_m1)
        }) 
      }
      else if (errMsg == "payer_last_name_invalid_m1") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.payer_last_name_invalid_m1)
        }) 
      }
      else if (errMsg == "bankname_invalid_m1") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.bankname_invalid_m1)
        }) 
      }
      else if (errMsg == "txn_payer_account_invalid_m1") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_account_invalid_m1)
        }) 
      }
      else if (errMsg == "txn_freez_72hrs") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_freez_72hrs)
        }) 
      }
      else if (errMsg == "bank_not_permission_access") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.bank_not_permission_access)
        }) 
      }
      else if (errMsg == "txn_unfreez_72hrs") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_unfreez_72hrs)
        }) 
      }
      else if (errMsg == "txn_police_date") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_police_date)
        }) 
      }
      else if (errMsg == "txn_police_freez_date") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_police_freez_date)
        }) 
      }
      else if (errMsg == "txn_police_unfreez_date") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_police_unfreez_date)
        }) 
      }
      else if (errMsg == "txn_freez_amount") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_freez_amount)
        }) 
      }
      else if (errMsg == "txn_unfreez7day_date") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_unfreez7day_date)
        }) 
      }
      else if (errMsg == "txn_police_freez_amount") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_police_freez_amount)
        }) 
      }
      else if (errMsg == "sen_rc_se") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.sen_rc_se)
        }) 
      }
      // else if (errMsg == "txn_payee_name") {
      //   cy.fixture('error_message').then(error_message =>{
      //     CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_name)
      //   }) 
      // }
      else if (errMsg == "txn_payee_lastname_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_lastname_invalid)
        }) 
      }
      else if (errMsg == "txn_promptpay_type_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_promptpay_type_invalid)
        }) 
      }
      else if (errMsg == "txn_promptpay_no_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_promptpay_no_invalid)
        }) 
      }   
      else if (errMsg == "txn_payee_accountNo_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_accountNo_invalid)
        }) 
      }   
      else if (errMsg == "txn_payee_bankname_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_bankname_invalid)
        }) 
      }
      else if (errMsg == "txn_payee_bankcode_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_bankcode_invalid)
        }) 
      }
      else if (errMsg == "txn_trans_date_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_trans_date_invalid)
        }) 
      } 
      else if (errMsg == "txn_trans_time_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_trans_time_invalid)
        }) 
      } 
      else if (errMsg == "txn_instr_id_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_instr_id_invalid)
        }) 
      }  
      else if (errMsg == "file_name_extension") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_extension)
        }) 
      }  
      else if (errMsg == "file_fxceed_limit") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_fxceed_limit)
        }) 
      }  
      else if (errMsg == "list_in_limit") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.list_in_limit)
        }) 
      }  
      else if (errMsg == "file_name_prefix") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_prefix)
        }) 
      }  
      else if (errMsg == "txn_amount_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.txn_amount_invalid)
        }) 
      } 
      else if (errMsg == "File_name_the_file_name_contains_an_invalid_prefix") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_the_file_name_contains_an_invalid_prefix)
        }) 
      }
      else if (errMsg == "File_name_invalid_bank_code") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_invalid_bank_code)
        }) 
      }
      else if (errMsg == "file_format_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_format_invalid)
        }) 
      }
      else if (errMsg == "File_name_same_in_system") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_same_in_system)
        }) 
      }
      else if (errMsg == "File_name_invalid_command_type") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_invalid_command_type)
        }) 
      }
      else if (errMsg == "File_name_invalid_format_or_date_information") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_invalid_format_or_date_information)
        }) 
      }
    
      else if (errMsg == "File_name_duplicate_or_invalid_version_name_please_check_again") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_duplicate_or_invalid_version_name_please_check_again)
        }) 
      }
      else if (errMsg == "file_name_invalid_bank_code") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_invalid_bank_code)
        }) 
      }
      else if (errMsg == "File_name_duplicate_in_system") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_duplicate_in_system)
        })
      }
      else if (errMsg == "File_name_is_invalid") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_is_invalid)
        }) 
      }
      else if (errMsg == "invalid_file_extension") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.invalid_file_extension)
        }) 
      }
      else if (errMsg == "file_fxceed_limit") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_fxceed_limit)
        }) 
      }
      else if (errMsg == "file_name_bankcode") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_bankcode)
        }) 
      }
      else if (errMsg == "invalid_feader_csv_file_name") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.invalid_feader_csv_file_name)
        }) 
      }
      else if (errMsg == "file_name_same") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_same)
        }) 
      }
      else if (errMsg == "file_name_not_found") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_not_found)
        }) 
      }
      else if (errMsg == "file_name_invali_date") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.file_name_invali_date)
        }) 
      }
      else if (errMsg == "record_exceed_limit") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.record_exceed_limit)
        }) 
      }  
      else if (errMsg == "File_name_duplicate") {
        cy.fixture('error_message').then(error_message =>{
          CreateMasterCasePage.displayErrorMessage(error_message.File_name_duplicate)
        }) 
      }  

    })
    
    
Given('go to add master case',() => {
    CreateMasterCasePage.goToAddMasterCase()
})

Given('go to add master case Local',() => {
  CreateMasterCasePage.goToAddMasterCaseLocal()
})

Then('should be display master case preview page of {string} GHB to horse2 UOBT and BAY with valid description', scenario =>{
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterAccountDetailDisplay(scenario)
  CreateMasterCasePage.TotalTransactionDisplay(scenario)
  CreateMasterCasePage.TotalAmountDisplay(scenario)
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(2,testdata.master_case_to_account_name,testdata.master_case_to_account_surname,testdata.master_case_to_account,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(2,testdata.transaction_count)
    CreateMasterCasePage.toAmountTxnDisplay(2,testdata.amount)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(3,testdata.master_transaction_1_to_uobt_acc_no,testdata.master_transaction_1_to_uobt_acc_name,testdata.master_transaction_1_to_uobt_acc_no,testdata.master_case_to_account_owner_to_Receipt)
    CreateMasterCasePage.transactionCountTxnDisplay(3,testdata.transaction_count_sub)
    CreateMasterCasePage.toAmountTxnDisplay(3,testdata.amount_receipt_uobt)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(4,testdata.master_transaction_1_to_bay_acc_bank,testdata.master_transaction_1_to_bay_acc_name,testdata.master_transaction_1_to_bay_acc_no,testdata.master_case_to_account_owner_to_Receipt2)
    CreateMasterCasePage.transactionCountTxnDisplay(4,testdata.transaction_count_sub)
    CreateMasterCasePage.toAmountTxnDisplay(4,testdata.amount_receipt_bay)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(5,testdata.master_case_to_account_name,testdata.master_case_to_account_surname,testdata.master_case_to_account2,testdata.master_case_to_account_owner)
    CreateMasterCasePage.transactionCountTxnDisplay(5,testdata.transaction_count2)
    CreateMasterCasePage.toAmountTxnDisplay(5,testdata.amount2)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(6,testdata.master_transaction_1_to_uobt_acc_no,testdata.master_transaction_1_to_uobt_acc_name,testdata.master_transaction_1_to_uobt_acc_no,testdata.master_case_to_account_owner_to_Receipt)
    CreateMasterCasePage.transactionCountTxnDisplay(6,testdata.transaction_count_sub)
    CreateMasterCasePage.toAmountTxnDisplay(6,testdata.amount_receipt_uobt2)
    CreateMasterCasePage.masterToAccountDetailTxnDisplay(7,testdata.master_transaction_1_to_bay_acc_bank,testdata.master_transaction_1_to_bay_acc_name,testdata.master_transaction_1_to_bay_acc_no,testdata.master_case_to_account_owner_to_Receipt2)
    CreateMasterCasePage.transactionCountTxnDisplay(7,testdata.transaction_count_sub)
    CreateMasterCasePage.toAmountTxnDisplay(7,testdata.amount_receipt_bay2)
  })
})

Then('view detail of the transaction from ghb account 1 CaseSt05_001 {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailFirst()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
    CreateMasterCasePage.closeViewDetail()
  })
})
Then('view detail of the transaction from ghb account 2 CaseSt05_002 {string}',scenario =>{
  CreateMasterCasePage.clickViewDetailNextLevel3()
  CreateMasterCasePage.displayLable()
  CreateMasterCasePage.caseIdDisplay(scenario)
  CreateMasterCasePage.caseTypeDisplay(scenario)
  // CreateMasterCasePage.policeIdDisplay(scenario)
  // CreateMasterCasePage.policeDateTimeDisplay(scenario)
  CreateMasterCasePage.masterCaseNameDisplay(scenario)
  CreateMasterCasePage.masterCaseSureNameDisplay(scenario)
  CreateMasterCasePage.masterCaseTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonTypeDisplay(scenario)
  CreateMasterCasePage.masterCasePersonIdDisplay(scenario)
  CreateMasterCasePage.masterCaseDetailDisplay(scenario)
  CreateMasterCasePage.contactFullNameDisplay(scenario)
  CreateMasterCasePage.contactPhoneDisplay(scenario)
  CreateMasterCasePage.contactEmailDisplay(scenario)
  CreateMasterCasePage.contactRelationDisplay(scenario)
  CreateMasterCasePage.masterCaseBankOwnerDisplay(scenario)
  CreateMasterCasePage.masterCaseAccNoOwnerDisplay2(scenario)
  // Transaction
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.caseTransaction(testdata.master_txn_time3,testdata.master_acc3,testdata.master_to_bank3,testdata.master_to_acc_name3,testdata.master_to_amt3,testdata.master_to_txn3,testdata.master_ip3)
    CreateMasterCasePage.closeViewDetail()
  })
})

Then('view detail of the sub transaction 1 uobt {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time,testdata.master_acc,testdata.master_to_bank,testdata.master_to_acc_name,testdata.master_to_amt,testdata.master_to_txn,testdata.master_ip)
      CreateMasterCasePage.closeViewDetail()
    })
  })
})
Then('view detail of the sub transaction 1 bay {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel2()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver2)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id2)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no2)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name2)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver2)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time2,testdata.master_acc2,testdata.master_to_bank2,testdata.master_to_acc_name2,testdata.master_to_amt2,testdata.master_to_txn2,testdata.master_ip2)
      CreateMasterCasePage.closeViewDetail()
    })
  })
})
Then('view detail of the sub transaction 2 uobt {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel4()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      CreateMasterCasePage.caseTransaction(testdata.master_txn_time3,testdata.master_acc3,testdata.master_to_bank3,testdata.master_to_acc_name3,testdata.master_to_amt3,testdata.master_to_txn3,testdata.master_ip3)
      CreateMasterCasePage.closeViewDetail()
    })
  })
})
Then('view detail of the sub transaction 2 bay {string}',scenario => {
  CreateMasterCasePage.clickViewDetailNextLevel5()
  cy.fixture(scenario).then(testdata =>{
    CreateMasterCasePage.nameTransfereeTxnDisplay(testdata.master_case_to_account_name_receiver2)
    CreateMasterCasePage.sureNameTransfereeTxnDisplay(testdata.master_case_to_account_surname)
    CreateMasterCasePage.typeTransfereeTxnDisplay(testdata.master_case_to_person_type)
    CreateMasterCasePage.promptPayTypeTransfereeTxnDisplay(testdata.master_case_pp_type)
    CreateMasterCasePage.promptPayNoTransfereeTxnDisplay(testdata.master_case_pp_id2)
    CreateMasterCasePage.phoneNoTransfereeTxnDisplay(testdata.master_case_to_phone_no2)
    CreateMasterCasePage.bankNameTransfereeTxnDisplay(testdata.master_case_to_bank_name2)
    CreateMasterCasePage.accountTransfereeTxnDisplay(testdata.master_case_to_account_receiver2)
    CreateMasterCasePage.dateOfFreezeAcc72hrTxnDisplay(testdata.master_freeze72hrs_bank_date)
    CreateMasterCasePage.dateOfUnFreezeAcc72hrTxnDisplay(testdata.master_unfreeze72hrs_bank_date)
    // CreateMasterCasePage.dateOfReportPoliceTxnDisplay(testdata.master_date_report_police)
    CreateMasterCasePage.dateOfFreezeAcc7dayTxnDisplay(testdata.master_freeze7day_date)
    CreateMasterCasePage.dateOfUnFreezeAcc7dayTxnDisplay(testdata.master_unfreeze7day_date)   
    CreateMasterCasePage.dateOfFreezeByPoliceTxnDisplay(testdata.master_freeze_by_police_date)
    CreateMasterCasePage.dateOfUnFreezeByPoliceTxnDisplay(testdata.master_unfreeze_by_police_date)
    CreateMasterCasePage.typeOfFreezeByBankTxnDisplay(testdata.master_type_freeze_by_bank)
    CreateMasterCasePage.amountFreezeByBankTxnDisplay(testdata.master_amount_freeze_by_bank)
    CreateMasterCasePage.balanceTxnDisplay(testdata.master_balance)
    CreateMasterCasePage.typeOfFreezeByPoliceTxnDisplay(testdata.master_type_freeze_by_police)
    CreateMasterCasePage.policeFreezeNumberTxnDisplay(testdata.master_police_freeze_num)
    CreateMasterCasePage.amountFreezeByPoliceTxnDisplay(testdata.master_police_freeze_amount)
    CreateMasterCasePage.policeUnFreezeNumberTxnDisplay(testdata.master_unpolice_freeze_num)
    cy.fixture(scenario).then(testdata =>{
      // CreateMasterCasePage.caseTransaction(testdata.master_txn_time4,testdata.master_acc4,testdata.master_to_bank4,testdata.master_to_acc_name4,testdata.master_to_amt4,testdata.master_to_txn4,testdata.master_ip4)
      CreateMasterCasePage.closeViewDetail()
    })
  })
})
Then('should be display master upload file brown mule preview page of {string} with valid description', scenario =>{
  CreateMasterCasePage.displayLableAndData(scenario)
})

Then('should be display data success in file {string} and confirm data', scenario =>{
  CreateMasterCasePage.checkTotalDataSuccess(scenario)
  CreateMasterCasePage.ConfirmBrow()
})

Then('should be display data success in file {string}', scenario =>{
  CreateMasterCasePage.checkTotalDataSuccess(scenario)
})

let userPermission = null;
let menuAccess = false;

Given('a user with permission {string} logs in to system VV', function (permission) {
  userPermission = permission;
  console.log(`User logged in with permission "${permission}" in system VV.`);
})

When('the user checks the accessible menu items', function () {
  // สมมติว่า Permission "NN" ให้สิทธิ์เข้าถึงเมนู "BB"
  if (userPermission === 'CFR_BROWN_MULE_REG') {
    menuAccess = true;
  }
  console.log('User checks the accessible menu items.');
})

Then('the user should see Menu {string} as an accessible menu', function (menu) {
  assert.strictEqual(menuAccess, true, `Menu "${menu}" is not accessible for this user.`);
  console.log(`User sees Menu "${menu}" as an accessible menu.`);
})

Then('the user should be able to access Menu {string} without any issues', function (menu) {
  if (menuAccess) {
    console.log(`User successfully accessed Menu "${menu}" without any issues.`);
  } else {
    throw new Error(`User cannot access Menu "${menu}" due to lack of permission.`);
  }
})

Then('should be display master upload file exchange account registry preview page of {string} with valid description', scenario =>{
  CreateMasterCasePage.displayDataExchangeaccountregistry(scenario)
})
Then('should be display master upload file exchange account registry preview', scenario =>{
  CreateMasterCasePage.displayDataExchangeaccountregistry(scenario)
})

Then('should be display upload file dark brown mule registry data show detail cancel {string}', scenario =>{
  cy.wait(5000)
  CreateMasterCasePage.checkTotalDataSuccess(scenario)
  CreateMasterCasePage.displayLableAndData(scenario)
})

When('upload file exchange acct cancel case add positive update day latest {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfileexchangeacctcancelcaseaddpositiveupdatedaylatest(fileName)
})

When('upload file exchange acct cancel case cancel positive update day latest {string}',fileName =>{
  cy.contains('เพิ่มข้อมูลบัญชี Exchange').click()
  CreateMasterCasePage.uploadfileexchangeacctcancelcasecancelpositiveupdatedaylatest_cancel(fileName)
})
// Given('มีไฟล์ XLSX "{filename}"', (filename) => {
//   // โหลดไฟล์ XLSX
//   this.workbook = xlsx.readFile(filename);
// });

// When('ผู้ใช้แก้ไขข้อมูลในช่อง "{cell}" เป็น "{text}"', (cell, text) => {
//   // เข้าถึง Worksheet
//   const worksheet = this.workbook.Sheets['Sheet1'];

//   // แก้ไขข้อมูล
//   worksheet[cell].v = text;

//   // บันทึก Worksheet ที่แก้ไขแล้ว
//   xlsx.writeFile(this.workbook, 'updated-xlsx-file.xlsx');
// });

// Then('ข้อมูลในช่อง "{cell}" ควรเป็น "{text}"', (cell, text) => {
//   // ตรวจสอบข้อมูล
//   const actualText = this.workbook.Sheets['Sheet1'][cell].v;
//   expect(actualText).to.equal(text);
// });

// Then('เนื้อหา XLSX ควรแปลงเป็น Base64', () => {
//   // แปลง Worksheet เป็น Base64
//   const base64Data = xlsx.utils.sheet_to_json(this.workbook.Sheets['Sheet1'], {
//     header: 1,
//     raw: true,
//     cellDates: true,
//   });
//   const encodedBase64 = btoa(JSON.stringify(base64Data));

//   // บันทึก Base64 ไปยังไฟล์
//   cy.writeFile('base64-output.txt', encodedBase64);
// });

// ------------deleted file----------------------------------------------------------------------------------------------------------------------------------------------
// new template for master case

Then('should be copy download file {string}', fileName =>{
  CreateMasterCasePage.DownloadMastercase()
  CreateMasterCasePage.copyfileName(fileName)
})

Then('download file {string}', fileName =>{
  // CreateMasterCasePage.DownloadMastercase()
  CreateMasterCasePage.copyfileNametest(fileName)
})

Then('view detail sub trasition of {string} master case page of {string} with data {string} on {string}', (row,scenario,data,condition) =>{
  const non_bank  = Cypress.env('nonBankData');
  cy.log(non_bank[0][4])
  if( non_bank[0][4] == "ผู้ให้บริการทางการเงิน"){
    CreateMasterCasePage.DisplayValue_IN_Transition(row,scenario,data,condition)
  }else if( non_bank[0][4] == "ธนาคาร"){
    CreateMasterCasePage.DisplayValue_IN_Transition_for_bank(row,scenario,data,condition)
  }else if( non_bank[0][4] == ""){
    CreateMasterCasePage.DisplayValue_IN_Transition(row,scenario,data,condition)
  }
  else{
    throw new Error('Unknown data accout category : ' + non_bank[0][4])
  }
})

When('should be display master case preview page of {string} with data {string}', (scenario,data) =>{
  CreateMasterCasePage.displayLable_new(scenario)
  CreateMasterCasePage.DisplayValue(data)
})

When('should be display bank case id in search page with data {string}', (data) =>{
  CreateMasterCasePage.DisplayLableSearch()
  CreateMasterCasePage.DisplaySearch(data)
})
When('should be display bank case id in search page with data {string} for case {string}', (data,c) =>{
  CreateMasterCasePage.DisplayLableSearch()
  if(c == 'TC001_097'){
    cy.log('skip')
  }else if (c == 'TC001_098'){
    cy.log('skip')
  }else{
    CreateMasterCasePage.DisplaySearch(data)
  }
})

Then('should be display error message mastercase is {string}',errMsg =>{
    if (errMsg == "template_version") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.template_version)
        }) 
      }
      else if (errMsg == "invalid_bankcaseID") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_bankcaseID)
        }) 
      }
      else if (errMsg == "invalid_o_biller") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_biller)
        }) 
      }
      else if (errMsg == "invalid_o_ref1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_ref1)
        }) 
      }
      else if (errMsg == "invalid_o_ref2") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_ref2)
        }) 
      }
      else if (errMsg == "invalid_o_ref3") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_ref3)
        }) 
      }
      else if (errMsg == "invalid_o_reason") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_reason)
        }) 
      }
      else if (errMsg == "invalid_o_reciever_personalID") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_reciever_personalID)
        }) 
      }
      else if (errMsg == "invalid_o_changestatus_money") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_changestatus_money)
        }) 
      }
      else if (errMsg == "invalid_o_condition_changestatus_money") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_condition_changestatus_money)
        }) 
      }
      else if (errMsg == "invalid_o_biller_condition") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_biller_condition)
        }) 
      }
      else if (errMsg == "invalid_o_ref1_condition") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_ref1_condition)
        }) 
      }
      else if (errMsg == "invalid_o_not_complate_ref1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_not_complate_ref1)
        }) 
      }
      else if (errMsg == "invalid_filename") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_filename)
        }) 
      }
      else if (errMsg == "invalid_m1_bankname") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_bankname)
        }) 
      }
      else if (errMsg == "invalid_m1_condition_bankname") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_condition_bankname)
        }) 
      }
      else if (errMsg == "invalid_m1_condition_bankname_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_condition_bankname_v1)
        }) 
      }
      else if (errMsg == "invalid_m1_not_complate_bankname_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_not_complate_bankname_v1)
        }) 
      }
      else if (errMsg == "invalid_m1_bankname_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_bankname_v1)
        }) 
      }
      else if (errMsg == "invalid_none_bank_or_bank_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_or_bank_v1)
        }) 
      }
      else if (errMsg == "invalid_m2_bankname") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m2_bankname)
        }) 
      }
      else if (errMsg == "invalid_condition_reciever_account_and_reason") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_reciever_account_and_reason)
        }) 
      }
      else if (errMsg == "invalid_not_complate") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_not_complate)
        }) 
      }
      else if (errMsg == "invalid_bankcase_and_list") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_bankcase_and_list)
        }) 
      }
      else if (errMsg == "invalid_condition_m1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_m1)
        }) 
      }
      else if (errMsg == "invalid_condition_m1_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_m1_v1)
        }) 
      }
      else if (errMsg == "invalid_condition_accountnumber") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_accountnumber)
        }) 
      }
      else if (errMsg == "invalid_condition_receiver") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_receiver)
        }) 
      }
      else if (errMsg == "invalid_condition_date_receiver") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_date_receiver)
        }) 
      }
      else if (errMsg == "invalid_condition_biller") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_biller)
        }) 
      }
      else if (errMsg == "invalid_condition_ref1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_ref1)
        }) 
      }
      else if (errMsg == "invalid_detail_bankcaseID") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_detail_bankcaseID)
        }) 
      }
      else if (errMsg == "invalid_detail_list") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_detail_list)
        }) 
      }
      else if (errMsg == "invalid_data_m1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m1)
        }) 
      }
      else if (errMsg == "invalid_data_m1_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m1_v1)
        }) 
      }
      else if (errMsg == "invalid_data_m1_condition") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m1_condition)
        }) 
      }
      else if (errMsg == "invalid_data_m1_condition_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m1_condition_v1)
        }) 
      }
      else if (errMsg == "invalid_data_m1_condition_v2") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m1_condition_v2)
        }) 
      }
      else if (errMsg == "invalid_data_m2_condition") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m2_condition)
        }) 
      }
      else if (errMsg == "invalid_data_m2_not_complate") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m2_not_complate)
        }) 
      }
      else if (errMsg == "invalid_none_bank_account") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_account)
        }) 
      }
      else if (errMsg == "invalid_none_bank_settlement") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_settlement)
        }) 
      }
      else if (errMsg == "invalid_none_bank_condition_settlement") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_condition_settlement)
        }) 
      }
      else if (errMsg == "invalid_data_m2_not_complate_reciever") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m2_not_complate_reciever)
        }) 
      }
      else if (errMsg == "invalid_data_m2_not_condition_reciever") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m2_not_condition_reciever)
        }) 
      }
      else if (errMsg == "invalid_data_m2_not_condition_reciever_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m2_not_condition_reciever_v1)
        }) 
      }
      else if (errMsg == "invalid_o_reciever_statusmoney_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_reciever_statusmoney_v1)
        }) 
      }
      else if (errMsg == "invalid_list_ref1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_list_ref1)
        }) 
      }
      else if (errMsg == "invalid_not_complate_ref1_settlement") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_not_complate_ref1_settlement)
        }) 
      }
      else if (errMsg == "invalid_condition_statusmoney") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_statusmoney)
        }) 
      }else{
        throw new Error('Unknown text : ' + errMsg)
      }
    })