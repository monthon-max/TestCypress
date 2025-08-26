import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import ViewPage from './viewPage';
import CreateSubCasePage from './createSubCasePage';

When('click view description of the transaction',()=>{
  ViewPage.clickViewButtonFirst()
})
Then('should be display detail of creater bank case {string}',scenario =>{
  cy.fixture(scenario).then(testdata =>{
    ViewPage.displayCaseId(testdata.case_id)
    ViewPage.displayCaseDetect(testdata.case_type)
    ViewPage.displayCasePoliceCaseId(testdata.police_id)
    ViewPage.displaySenderName(testdata.master_case_account_owner)
    ViewPage.displaySenderSureName(testdata.master_case_surename)
    ViewPage.displaySerderPersonType(testdata.master_case_person_type)
    ViewPage.displaySenderPersonNo(testdata.master_case_person_id)
    ViewPage.displayCasePhoneNumber(testdata.contact_phone_no)
    ViewPage.displayCaseType(testdata.master_case_type)
  })
})
Then('should be display detail of all transaction of scenario1',() =>{
  cy.fixture('scenario1').then(testdata =>{
    ViewPage.displayTxnRow(2,0,testdata.master_case_name,testdata.master_case_surename,testdata.master_case_account_detail,
      testdata.master_case_account_owner,testdata.total_transaction_count,testdata.total_amount)
    ViewPage.displayTxnRow(3,1,testdata.horse1_mhcb_accout_name,testdata.horse1_mhcb_surename,testdata.horse1_mhcb_acc_no,
       testdata.horse1_mhcb_bank_short_name,testdata.horse1_mhcb_trx_cont,testdata.horse1_mhcb_amt_total)
    ViewPage.displayTxnRow(4,2,testdata.horse1_bbl_to_accout_name,testdata.horse1_bbl_to_surename,testdata.horse1_bbl_to_acc_no,
       testdata.horse1_bbl_to_bank_short_name,testdata.horse2_bbl_to_trx_cont,testdata.horse2_bbl_amt_total)
    ViewPage.displayTxnRow(5,3,testdata.horse3_kbnk_to_accout_name,testdata.horse3_kbnk_to_surename,testdata.horse3_kbnk_to_acc_no,
       testdata.horse3_kbnk_to_bank_short_name,testdata.horse3_kbnk_to_trx_cont,testdata.horse3_kbnk_amt_total)
    ViewPage.displayTxnRow(6,4,testdata.horse4_ktb_to_accout_name,testdata.horse4_ktb_to_surename,testdata.horse4_ktb_to_acc_no,
       testdata.horse4_ktb_to_bank_short_name,testdata.horse4_ktb_trx_cont,testdata.horse4_ktb_amt_total)
    ViewPage.displayTxnRow(7,5,testdata.horse5_bay_to_accout_name,testdata.horse5_bay_to_surename,testdata.horse5_bay_to_acc_no,
       testdata.horse5_bay_to_bank_short_name,testdata.horse5_bay_trx_cont,testdata.horse5_bay_amt_total)
    ViewPage.displayTxnRow(8,6,testdata.horse6_bay_to_accout_name,testdata.horse6_bay_to_surename,testdata.horse6_bay_to_acc_no,
       testdata.horse6_bay_to_bank_short_name,testdata.horse6_bay_trx_cont,testdata.horse6_bay_amt_total)
    ViewPage.displayTxnRow(9,7,testdata.horse6_bay_acc2_to_accout_name,testdata.horse6_bay_acc2_to_surename,testdata.horse6_bay_acc2_to_acc_no,
       testdata.horse6_bay_acc2_to_bank_short_name,"","")
    })
})

Then ('view sub case detail of the transaction horse2 mhcb to bbl {string} in row {int}',(horse,row) => {
  ViewPage.clickViewDetail(row)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse1_mhcb_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_mhcb_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse1_mhcb_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse1_mhcb_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse1_mhcb_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse1_mhcb_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_mhcb_acc_no)

    // ViewPage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_mhcb2bbl_freeze72hrs_bank_date)
    ViewPage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_mhcb2bbl_unfreeze72hrs_bank_date)
    ViewPage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_mhcb2bbl_date_report_police)
    ViewPage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_mhcb2bbl_freeze7day_date)
    ViewPage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_mhcb2bbl_unfreeze7day_date)   
    ViewPage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_freeze_by_police_date)
    ViewPage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_unfreeze_by_police_date)
    // ViewPage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_mhcb2bbl_type_freeze_by_bank)
    // ViewPage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_mhcb2bbl_amount_freeze_by_bank)
    ViewPage.subCaseBalanceDisplay(testdata.hosrs1_mhcb2bbl_balance)
    ViewPage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_type_freeze_by_police)
    ViewPage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_mhcb2bbl_police_freeze_num)
    // ViewPage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_police_freeze_amount)
    // ViewPage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_mhcb2bbl_unpolice_freeze_num)

    // CreateSubCasePage.subCaseTxn(testdata.hosrs1_mhcb2bbl_txn_time,testdata.hosrs1_mhcb2bbl_to_acc,testdata.hosrs1_mhcb2bbl_to_bank,testdata.hosrs1_mhcb2bbl_to_acc_name,testdata.hosrs1_mhcb2bbl_to_amt,testdata.hosrs1_mhcb2bbl_to_txn,testdata.hosrs1_mhcb2bbl_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then ('view sub case detail of the transaction horse3 kbnk to ktb {string} in row {int}',(horse,row) => {
  ViewPage.clickViewDetail(row)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse3_kbnk_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse3_kbnk_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse3_kbnk_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse3_kbnk_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse3_kbnk_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse3_kbnk_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_kbnk_to_acc_no)

    ViewPage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs3_kbnk2ktb_freeze72hrs_bank_date)
    ViewPage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_kbnk2ktb_unfreeze72hrs_bank_date)
    ViewPage.subCaseDateOfReportPoliceDisplay(testdata.hosrs3_kbnk2ktb_date_report_police)
    ViewPage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs3_kbnk2ktb_freeze7day_date)
    ViewPage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_kbnk2ktb_unfreeze7day_date)   
    ViewPage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_freeze_by_police_date)
    ViewPage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_unfreeze_by_police_date)
    ViewPage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs3_kbnk2ktb_type_freeze_by_bank)
    // ViewPage.subCaseAmountFreezeByBankDisplay(testdata.hosrs3_kbnk2ktb_amount_freeze_by_bank)
    ViewPage.subCaseBalanceDisplay(testdata.hosrs3_kbnk2ktb_balance)
    ViewPage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_type_freeze_by_police)
    ViewPage.subCasePoliceFreezeNumberDisplay(testdata.hosrs3_kbnk2ktb_police_freeze_num)
    // ViewPage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_police_freeze_amount)
    // ViewPage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs3_kbnk2ktb_unpolice_freeze_num)

    // CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk2ktbtxn_time,testdata.hosrs3_kbnk2ktb_to_acc,testdata.hosrs3_kbnk2ktb_to_bank,testdata.hosrs3_kbnk2ktb_to_acc_name,testdata.hosrs3_kbnk2ktb_to_amt,testdata.hosrs3_kbnk2ktb_to_txn,testdata.hosrs3_kbnk2ktb_ip)
    CreateSubCasePage.closeSubCaseViewDetail()  
  })
})

Then('view sub case detail of the transaction horse2 bbl to kbank {string} in row {int}',(horse,row) => {
  ViewPage.clickViewDetail(row)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse1_bbl_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_bbl_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse1_bbl_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse1_bbl_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse1_bbl_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse1_bbl_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_bbl_to_acc_no)

    ViewPage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_bbl2kbnk_freeze72hrs_bank_date)
    ViewPage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_bbl2kbnk_unfreeze72hrs_bank_date)
    ViewPage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_bbl2kbnk_date_report_police)
    ViewPage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_bbl2kbnk_freeze7day_date)
    ViewPage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_bbl2kbnk_unfreeze7day_date)   
    ViewPage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_freeze_by_police_date)
    ViewPage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_unfreeze_by_police_date)
    ViewPage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_bbl2kbnk_type_freeze_by_bank)
    // ViewPage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_bbl2kbnk_amount_freeze_by_bank)
    ViewPage.subCaseBalanceDisplay(testdata.hosrs2_bbl2kbnk_balance)
    ViewPage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_type_freeze_by_police)
    ViewPage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_bbl2kbnk_police_freeze_num)
    // ViewPage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_police_freeze_amount)
    // ViewPage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_bbl2kbnk_unpolice_freeze_num)

    // CreateSubCasePage.subCaseTxn(testdata.hosrs2_bbl2kbnk_txn_time,testdata.hosrs2_bbl2kbnk_to_acc,testdata.hosrs2_bbl2kbnk_to_bank,testdata.hosrs2_bbl2kbnk_to_acc_name,testdata.hosrs2_bbl2kbnk_to_amt,testdata.hosrs2_bbl2kbnk_to_txn,testdata.hosrs2_bbl2kbnk_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
