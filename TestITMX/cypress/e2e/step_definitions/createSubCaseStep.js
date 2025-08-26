import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import LoginPage from './loginPage';
import CreateSubCasePage from './createSubCasePage';
import CreateMasterCasePage from './createMasterCasePage';
import SearchPage from './searchPage';

When ('search bank case id {string}', bankcaseid =>{
  LoginPage.clickCFRWebPortalDev()
  SearchPage.searchBankCaseID(bankcaseid)
  SearchPage.clickScrollRight()
  
})
When ('search bank case id NFT {string}', bankcaseid =>{
  LoginPage.clickCFRWebPortalNFT()
  SearchPage.searchBankCaseID(bankcaseid)
  SearchPage.clickScrollRight()
  
})
When('add sub case by excel file {string}',filename => {
  CreateSubCasePage.uploadPositiveFileSubCase(filename)
})
Then ('click add sub case first row',() => {
  SearchPage.clickAddCaseFirst()
})
Given ('upload file sub case negative {string}',filename => {
  CreateSubCasePage.uploadFileSubCase(filename)
})
Then ('should be display popup subcase error message is {string}',errMsg => {
  if (errMsg == "bankcase_invalid") {
    cy.fixture('error_message').then(error_message =>{
        CreateMasterCasePage.displayErrorMessage(error_message.bankcase_invalid)
    }) 
  }
  else if (errMsg == "sub_payer_natid_invalid") {
    cy.fixture('error_message').then(error_message =>{
        CreateMasterCasePage.displayErrorMessage(error_message.sub_payer_natid_invalid)
    }) 
  }
  else if (errMsg == "sub_payer_name_invalid") {
    cy.fixture('error_message').then(error_message =>{
        CreateMasterCasePage.displayErrorMessage(error_message.sub_payer_name_invalid)
    }) 
  }
  else if (errMsg == "sub_bankname_invalid") {
    cy.fixture('error_message').then(error_message =>{
        CreateMasterCasePage.displayErrorMessage(error_message.sub_bankname_invalid)
    }) 
  }
  else if (errMsg == "sub_payer_last_name_invalid") {
    cy.fixture('error_message').then(error_message =>{
        CreateMasterCasePage.displayErrorMessage(error_message.sub_payer_last_name_invalid)
    }) 
  }
  else if (errMsg == "sub_account_no_invalid") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_account_no_invalid)
    }) 
  } 
  else if (errMsg == "sub_bankname_invalid") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_bankname_invalid)
    }) 
  } 
  else if (errMsg == "sub_phone_no_invalid") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_phone_no_invalid)
    }) 
  }   
  else if (errMsg == "sub_sendAccTxn_freez_72hrs") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_freez_72hrs)
    }) 
  }  
  else if (errMsg == "sub_sendAccTxn_police_date") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_police_date)
    }) 
  }  
  else if (errMsg == "sub_sendAccTxn_freez7day_date") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_freez7day_date)
    }) 
  }  
  else if (errMsg == "sub_sendAccTxn_unfreez7day_date") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_unfreez7day_date)
    }) 
  }  
  else if (errMsg == "sub_sendAccTxn_unfreez_72hrs") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_unfreez_72hrs)
    }) 
  }  
  else if (errMsg == "sub_sendAccTxn_police_freez_date") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_police_freez_date)
    }) 
  }  
  else if (errMsg == "sub_sendAccTxn_police_unfreez_date") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_police_unfreez_date)
    }) 
  } 
  else if (errMsg == "sub_sendAccTxn_freez_amount") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_freez_amount)
    }) 
  } 
  else if (errMsg == "sub_sendAccTxn_police_freez_amount") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_sendAccTxn_police_freez_amount)
    }) 
  } 
  else if (errMsg == "sub_txn_payer_name_invalid") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_txn_payer_name_invalid)
    }) 
  }
  else if (errMsg == "sub_txn_acc_not_match") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_txn_acc_not_match)
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
  else if (errMsg == "txn_payee_name") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.txn_payee_name)
    }) 
  }
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
  else if (errMsg == "txn_amount_invalid") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.txn_amount_invalid)
    }) 
  }  
  else if (errMsg == "sub_payer_natid_type_invalid") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_payer_natid_type_invalid)
    }) 
  }  
  else if (errMsg == "sub_payer_natid_type_invalid_m1") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_payer_natid_type_invalid_m1)
    }) 
  }  
  else if (errMsg == "sub_payer_natid_invalid_m1") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.sub_payer_natid_invalid_m1)
    }) 
  }
  else if (errMsg == "invalid_file_extension") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.invalid_file_extension)
    }) 
  } 
  
  else if (errMsg == "success") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.success)
    }) 
  } 

  else if (errMsg == "save") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.save)
    }) 
  }
  else if (errMsg == "file_fxceed_limit") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.file_fxceed_limit)
    }) 
  }
  else if (errMsg == "File_name_invalid_prefix") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.File_name_invalid_prefix)
    }) 
  }
  else if (errMsg == "file_fxceed_limit") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.file_fxceed_limit)
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
  else if (errMsg == "txn_payer_transition_same") {
    cy.fixture('error_message').then(error_message =>{
      CreateMasterCasePage.displayErrorMessage(error_message.txn_payer_transition_same)
    }) 
  }
})
Then('should be display sub case horse1 mhcb to bbl preview page of {string}',horse => {
  CreateSubCasePage.displayLableSubCase()
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse1_mhcb_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_mhcb_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse1_mhcb_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse1_mhcb_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse1_mhcb_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse1_mhcb_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse1_mhcb_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse1_mhcb_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse1_mhcb_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse1_mhcb_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse1_bbl_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse1_bbl_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse1_bbl_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse1_bbl_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse1_bbl_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse1_bbl_to_amt_total)

  }) 
})
Then('should be display sub case horse1 kkp to lhb and scb preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse1_kkp_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_kkp_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse1_kkp_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse1_kkp_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse1_kkp_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse1_kkp_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse1_kkp_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse1_kkp_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse1_kkp_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse1_kkp_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse1_lh_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse1_lh_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse1_lh_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse1_lh_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse1_lh_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse1_lh_to_amt_total)
    // Transaction 2
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(2, testdata.horse1_scb_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(2,testdata.horse1_scb_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(2,testdata.horse1_scb_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(2,testdata.horse1_scb_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(2,testdata.horse1_scb_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(2,testdata.horse1_scb_to_amt_total)
  }) 
})

Then('should be display sub case horse1 scb to kbnk 2 acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse1_scb_accout_name)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_scb_surname)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse1_scb_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse1_scb_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse1_scb_accout_name2)
    // CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse1_scb_surname)
    // CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse1_scb_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse1_scb_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse1_scb_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse1_scb_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse1_kbnk_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse1_kbnk_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse1_kbnk_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse1_kbnk_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse1_kbnk_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse1_kbnk_to_amt_total)
    // // Transaction 2
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(2, testdata.horse1_kbnk_2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(2,testdata.horse1_kbnk_2_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(2,testdata.horse1_kbnk_2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(2,testdata.horse1_kbnk_2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(2,testdata.horse1_kbnk_2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(2,testdata.horse1_kbnk_2_to_amt_total)
  }) 
})

Then('should be display sub case horse2 mega to mega acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_mega_accout_name)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_mega_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_mega_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_mega_accout_name2)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_mega_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_2mega_to_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_2mega_to_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse2_2kbnk2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse2_2kbnk2_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse2_2kbnk2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse2_2kbnk2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse2_2kbnk2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse2_2kbnk2_to_amt_total)
  }) 
})

Then('should be display sub case horse3 kbnk to bbl 1 acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_1kbnk_accout_name)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_1kbnk_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_1kbnk_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_1kbnk_accout_name2)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_1kbnk_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_1kbnk_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_1kbnk_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_bbl_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_bbl_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_bbl_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_bbl_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_bbl_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_bbl_to_amt_total)
  }) 
})


Then('should be display sub case horse3 kbnk to gsb 1 acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse3_1kbnk_accout_name)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse3_1kbnk_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse3_1kbnk_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse3_1kbnk_accout_name2)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse3_1kbnk_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse3_1kbnk_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse3_1kbnk_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_gsb_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_gsb_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_gsb_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_gsb_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_gsb_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_gsb_to_amt_total)
  }) 
})

Then('should be display sub case horse3 kbnk to bbl 2 acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_2kbnk_accout_name)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_2kbnk_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_2kbnk_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_2kbnk_accout_name2)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_2kbnk_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_2kbnk_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_2kbnk_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_bbl_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_bbl_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_bbl_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_bbl_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_bbl_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_bbl_to_amt_total)
  }) 
})

Then('should be display sub case horse1 lhb to kkp and tisco preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse1_lh_2_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_lh_2_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse1_lh_2_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse1_lh_2_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse1_lh_2_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse1_lh_2_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse1_lh_2_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse1_lh_2_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse1_lh_2_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse1_lh_2_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse1_kkp_2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse1_kkp_2_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse1_kkp_2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse1_kkp_2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse1_kkp_2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse1_kkp_2_to_amt_total)
    // Transaction 2
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(2, testdata.horse1_tsco_2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(2,testdata.horse1_tsco_2_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(2,testdata.horse1_tsco_2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(2,testdata.horse1_tsco_2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(2,testdata.horse1_tsco_2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(2,testdata.horse1_tsco_2_to_amt_total)
  }) 
})
Then('should be display sub case horse2 kkp to kkp difference account preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_kkp_2_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_kkp_2_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_kkp_2_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_kkp_2_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_kkp_2_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse2_kkp_2_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse2_kkp_2_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_kkp_2_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_kkp_2_to_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_kkp_2_to_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_kkp_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_kkp_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_kkp_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_kkp_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_kkp_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_kkp_to_amt_total)
  }) 
})
Then('should be display sub case horse2 bbl to kbank preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse1_bbl_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_bbl_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse1_bbl_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse1_bbl_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse1_bbl_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse2_bbl_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse1_bbl_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse1_bbl_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_bbl_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_bbl_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse2_kbnk_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse2_kbnk_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse2_kbnk_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse2_kbnk_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse2_kbnk_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse2_kbnk_to_amt_total)
  }) 
})
Then ('view sub case detail of the transaction horse2 mhcb to bbl {string}',horse => {
    CreateSubCasePage.clickSubCaseViewDetailFirst()
    cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
      CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse1_mhcb_accout_name)
      CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_mhcb_surename)
      CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse1_mhcb_person_type)
      CreateSubCasePage.subCasePersonIdDisplay(testdata.horse1_mhcb_person_id)
      CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse1_mhcb_phone_no)
      CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse1_mhcb_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_mhcb_acc_no)
      CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_mhcb2bbl_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_mhcb2bbl_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_mhcb2bbl_date_report_police)
      CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_mhcb2bbl_freeze7day_date)
      CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_mhcb2bbl_unfreeze7day_date)   
      CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_freeze_by_police_date)
      CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_unfreeze_by_police_date)
      CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_mhcb2bbl_type_freeze_by_bank)
      CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_mhcb2bbl_amount_freeze_by_bank)
      CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs1_mhcb2bbl_balance)
      CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_type_freeze_by_police)
      CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_mhcb2bbl_police_freeze_num)
      CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_mhcb2bbl_police_freeze_amount)
      CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_mhcb2bbl_unpolice_freeze_num)
      CreateSubCasePage.subCaseTxn(testdata.hosrs1_mhcb2bbl_txn_time,testdata.hosrs1_mhcb2bbl_to_acc,testdata.hosrs1_mhcb2bbl_to_bank,testdata.hosrs1_mhcb2bbl_to_acc_name,testdata.hosrs1_mhcb2bbl_to_amt,testdata.hosrs1_mhcb2bbl_to_txn,testdata.hosrs1_mhcb2bbl_ip)
      CreateSubCasePage.closeSubCaseViewDetail()
    })
})
Then('view sub case detail of the transaction horse2 kkp to kkp difference account {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_kkp_2_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_kkp_2_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_kkp_2_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_kkp_2_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_kkp_2_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_kkp_2_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_kkp_2_to_acc_no)

    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_kkp2kkp_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_kkp2kkp_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_kkp2kkp_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_kkp2kkp_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_kkp2kkp_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_kkp2kkp_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_kkp2kkp_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_kkp2kkp_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_kkp2kkp_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_kkp2kkp_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_kkp2kkp_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_kkp2kkp_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_kkp2kkp_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_kkp2kkp_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs2_kkp2kkp_txn_time,testdata.hosrs2_kkp2kkp_to_acc,testdata.hosrs2_kkp2kkp_to_bank,testdata.hosrs2_kkp2kkp_to_acc_name,testdata.hosrs2_kkp2kkp_to_amt,testdata.hosrs2_kkp2kkp_to_txn,testdata.hosrs2_kkp2kkp_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('should be display sub case horse3 kbnk to ktb preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse3_kbnk_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse3_kbnk_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse3_kbnk_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse3_kbnk_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse3_kbnk_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse3_kbnk_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse3_kbnk_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse3_kbnk_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse3_kbnk_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse3_kbnk_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_ktb_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_ktb_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_ktb_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_ktb_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_ktb_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_ktb_to_amt_total)
  }) 
})
Then('should be display sub case horse4 ktb to bay preview page of {string}',horse => {
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse4_ktb_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse4_ktb_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse4_ktb_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse4_ktb_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse4_ktb_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse4_ktb_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse4_ktb_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse4_ktb_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse4_ktb_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse4_ktb_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse4_bay_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse4_bay_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse4_bay_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse4_bay_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse4_bay_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse4_bay_to_amt_total)
  }) 
})
Then('should be display sub case horse5 bay to bay preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse5_bay_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse5_bay_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse5_bay_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse5_bay_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse5_bay_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse5_bay_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse5_bay_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse5_bay_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse5_bay_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse5_bay_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse5_bay_acc2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse5_bay_acc2_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse5_bay_acc2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse5_bay_acc2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse5_bay_acc2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse5_bay_acc2_to_amt_total)
  }) 
})
Then('should be display sub case horse6 bay to bay preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse6_bay_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse6_bay_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse6_bay_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse6_bay_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse6_bay_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse6_bay_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse6_bay_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse6_bay_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse6_bay_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse6_bay_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse6_bay_acc2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse6_bay_acc2_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse6_bay_acc2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse6_bay_acc2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse6_bay_acc2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse6_bay_acc2_to_amt_total)
  }) 
})
Then('should be display sub case horse2 lhb to tsco preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_lhb_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_lhb_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_lhb_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_lhb_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_lhb_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse2_lhb_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse2_lhb_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_lhb_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_lhb_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_lhb_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_tsco_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_tsco_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_tsco_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_tsco_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_tsco_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_tsco_to_amt_total)
  }) 
})
Then('should be display sub case horse2 scb to tsco preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_scb_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_scb_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_scb_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_scb_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_scb_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse2_scb_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse2_scb_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_scb_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_scb_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_scb_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_tsco_acc2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_tsco_acc2_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_tsco_acc2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_tsco_acc2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_tsco_acc2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_tsco_acc2_to_amt_total)
  }) 
})
Then('should be display sub case horse2 tisco to kkp preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_tisco_to_accout_name_surename)
    // CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_tisco_to_surename)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_tisco_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_tisco_to_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_tisco_to_accout_name)
    CreateSubCasePage.subCaseSenderTxnAccSureNameDisplay(testdata.horse2_tisco_to_surename)
    CreateSubCasePage.subCaseSenderTxnAccNoDisplay(testdata.horse2_tisco_to_acc_no)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_tisco_to_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_tisco_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_tisco_amt_total)
    // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_kkp_acc2_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_kkp_acc2_to_surename)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_kkp_acc2_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_kkp_acc2_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_kkp_acc2_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_kkp_acc2_to_amt_total)
  }) 
})

Then('view sub case detail of the transaction horse2 bbl to kbank {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_bbl_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_bbl_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_bbl_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_bbl_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_bbl_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_bbl_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_bbl_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_bbl2kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_bbl2kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_bbl2kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_bbl2kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_bbl2kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_bbl2kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_bbl2kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_bbl2kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_bbl2kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_bbl2kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_bbl2kbnk_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs2_bbl2kbnk_txn_time,testdata.hosrs2_bbl2kbnk_to_acc,testdata.hosrs2_bbl2kbnk_to_bank,testdata.hosrs2_bbl2kbnk_to_acc_name,testdata.hosrs2_bbl2kbnk_to_amt,testdata.hosrs2_bbl2kbnk_to_txn,testdata.hosrs2_bbl2kbnk_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
Then('view sub case detail of the transaction horse2 lhb to tsco {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_lhb_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_lhb_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_lhb_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_lhb_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_lhb_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_lhb_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_lhb_to_acc_no)

    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_lhb2tsco_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_lhb2tsco_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_lhb2tsco_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_lhb2tsco_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_lhb2tsco_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_lhb2tsco_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_lhb2tsco_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_lhb2tsco_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_lhb2tsco_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_lhb2tsco_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_lhb2tsco_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_lhb2tsco_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_lhb2tsco_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_lhb2tsco_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs2_lhb2tsco_txn_time,testdata.hosrs2_lhb2tsco_to_acc,testdata.hosrs2_lhb2tsco_to_bank,testdata.hosrs2_lhb2tsco_to_acc_name,testdata.hosrs2_lhb2tsco_to_amt,testdata.hosrs2_lhb2tsco_to_txn,testdata.hosrs2_lhb2tsco_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
Then('view sub case detail of the transaction horse2 scb to tsco {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_scb_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_scb_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_scb_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_scb_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_scb_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_scb_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_scb_to_acc_no)

    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_scb2tsco_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_scb2tsco_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_scb2tsco_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_scb2tsco_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_scb2tsco_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_scb2tsco_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_scb2tsco_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_scb2tsco_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_scb2tsco_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_scb2tsco_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_scb2tsco_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_scb2tsco_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_scb2tsco_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_scb2tsco_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs2_scb2tsco_txn_time,testdata.hosrs2_scb2tsco_to_acc,testdata.hosrs2_scb2tsco_to_bank,testdata.hosrs2_scb2tsco_to_acc_name,testdata.hosrs2_scb2tsco_to_amt,testdata.hosrs2_scb2tsco_to_txn,testdata.hosrs2_scb2tsco_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
Then('view sub case detail of the transaction horse2 tisco to kkp {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_tisco_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_tisco_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_tisco_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_tisco_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_tisco_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_tisco_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_tisco_to_acc_no)

    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_tisco2kkp_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_tisco2kkp_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_tisco2kkp_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_tisco2kkp_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_tisco2kkp_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_tisco2kkp_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_tisco2kkp_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_tisco2kkp_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_tisco2kkp_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_tisco2kkp_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_tisco2kkp_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_tisco2kkp_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_tisco2kkp_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_tisco2kkp_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs2_tisco2kkp_txn_time,testdata.hosrs2_tisco2kkp_to_acc,testdata.hosrs2_tisco2kkp_to_bank,testdata.hosrs2_tisco2kkp_to_acc_name,testdata.hosrs2_tisco2kkp_to_amt,testdata.hosrs2_tisco2kkp_to_txn,testdata.hosrs2_tisco2kkp_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail of the transaction horse3 kbnk to ktb {string}',horse =>{
    CreateSubCasePage.clickSubCaseViewDetailFirst()
    cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse3_kbnk_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse3_kbnk_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse3_kbnk_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse3_kbnk_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse3_kbnk_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse3_kbnk_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_kbnk_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs3_kbnk2ktb_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_kbnk2ktb_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs3_kbnk2ktb_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs3_kbnk2ktb_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_kbnk2ktb_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs3_kbnk2ktb_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs3_kbnk2ktb_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs3_kbnk2ktb_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs3_kbnk2ktb_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs3_kbnk2ktb_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs3_kbnk2ktb_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk2ktbtxn_time,testdata.hosrs3_kbnk2ktb_to_acc,testdata.hosrs3_kbnk2ktb_to_bank,testdata.hosrs3_kbnk2ktb_to_acc_name,testdata.hosrs3_kbnk2ktb_to_amt,testdata.hosrs3_kbnk2ktb_to_txn,testdata.hosrs3_kbnk2ktb_ip)
    CreateSubCasePage.closeSubCaseViewDetail()  
  })
})
Then('view sub case detail of the transaction horse4 ktb to bay {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse4_ktb_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse4_ktb_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse4_ktb_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse4_ktb_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse4_ktb_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse4_ktb_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse4_ktb_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs4_ktb2bay_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs4_ktb2bay_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs4_ktb2bay_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs4_ktb2bay_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs4_ktb2bay_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs4_ktb2bay_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs4_ktb2bay_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs4_ktb2bay_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs4_ktb2bay_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs4_ktb2bay_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs4_ktb2bay_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs4_ktb2bay_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs4_ktb2bay_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs4_ktb2bay_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs4_ktb2bay_txn_time,testdata.hosrs4_ktb2bay_to_acc,testdata.hosrs4_ktb2bay_to_bank,testdata.hosrs4_ktb2bay_to_acc_name,testdata.hosrs4_ktb2bay_to_amt,testdata.hosrs4_ktb2bay_to_txn,testdata.hosrs4_ktb2bay_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
Then('view sub case detail of the transaction horse5 bay to bay {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse5_bay_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse5_bay_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse5_bay_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse5_bay_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse5_bay_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse5_bay_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse5_bay_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs5_bay2bay_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs5_bay2bay_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs5_bay2bay_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs5_bay2bay_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs5_bay2bay_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs5_bay2bay_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs5_bay2bay_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs5_bay2bay_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs5_bay2bay_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs5_bay2bay_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs5_bay2bay_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs5_bay2bay_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs5_bay2bay_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs5_bay2bay_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs5_bay2bay_txn_time,testdata.hosrs5_bay2bay_to_acc,testdata.hosrs5_bay2bay_to_bank,testdata.hosrs5_bay2bay_to_acc_name,testdata.hosrs5_bay2bay_to_amt,testdata.hosrs5_bay2bay_to_txn,testdata.hosrs5_bay2bay_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
Then('view sub case detail of the transaction horse6 bay to bay {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse6_bay_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse6_bay_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse6_bay_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse6_bay_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse6_bay_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse6_bay_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse6_bay_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs6_bay2bay_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs6_bay2bay_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs6_bay2bay_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs6_bay2bay_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs6_bay2bay_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs6_bay2bay_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs6_bay2bay_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs6_bay2bay_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs6_bay2bay_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs6_bay2bay_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs6_bay2bay_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs6_bay2bay_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs6_bay2bay_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs6_bay2bay_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs6_bay2bay_txn_time,testdata.hosrs6_bay2bay_to_acc,testdata.hosrs6_bay2bay_to_bank,testdata.hosrs6_bay2bay_to_acc_name,testdata.hosrs6_bay2bay_to_amt,testdata.hosrs6_bay2bay_to_txn,testdata.hosrs6_bay2bay_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})
Then('view sub case detail of the transaction horse1 kkp to lhb and scb {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_kkp_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_kkp_to_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_kkp_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_kkp_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_kkp_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_kkp_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_kkp_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_kkp2lh_scb_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_kkp2lh_scb_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_kkp2lh_scb_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_kkp2lh_scb_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_kkp2lh_scb_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_kkp2lh_scb_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_kkp2lh_scb_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_kkp2lh_scb_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_kkp2lh_scb_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs1_kkp2lh_scb_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_kkp2lh_scb_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_kkp2lh_scb_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_kkp2lh_scb_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_kkp2lh_scb_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs1_kkp2lh_scb_txn_time,testdata.hosrs1_kkp2lh_scb_to_acc,testdata.hosrs1_kkp2lh_scb_to_bank,testdata.hosrs1_kkp2lh_scb_to_acc_name,testdata.hosrs1_kkp2lh_scb_to_amt,testdata.hosrs1_kkp2lh_scb_to_txn,testdata.hosrs1_kkp2lh_scb_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})


Then('view sub case detail of the transaction horse1 scb to kbnk 2 acc {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse1_scb_accout_name2)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_scb_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse1_scb_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse1_scb_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse1_scb_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse1_scb_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_scb_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_scb_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_scb_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_scb_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_scb_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_scb_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_scb_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_scb_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs1_scb_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_scb_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_scb_kbnk_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs1_scb_kbnk_txn_time,testdata.hosrs1_scb_kbnk_to_acc,testdata.hosrs1_scb_kbnk_to_bank,testdata.hosrs1_scb_kbnk_to_acc_name,testdata.hosrs1_scb_kbnk_to_amt,testdata.hosrs1_scb_kbnk_to_txn,testdata.hosrs1_scb_kbnk_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail of the transaction horse3 mega to kbnk 1 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_mega_accout_name2)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_mega_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_mega_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_mega_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_mega_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_mega_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_mega_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_mega_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_mega_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs1_mega_kbnk_txn_time,testdata.hosrs1_mega_kbnk_to_acc,testdata.hosrs1_mega_kbnk_to_bank,testdata.hosrs1_mega_kbnk_to_acc_name,testdata.hosrs1_mega_kbnk_to_amt,testdata.hosrs1_mega_kbnk_to_txn,testdata.hosrs1_mega_kbnk_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail of the transaction horse3 kbnk to gsb 1 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_kbnk_to_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_kbnk_to_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_kbnk_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_kbnk_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_kbnk_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_kbnk_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_kbnk_to_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_mega_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_mega_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk_gsb_txn_time,testdata.hosrs3_kbnk_gsb_to_acc,testdata.hosrs3_kbnk_gsb_to_bank,testdata.hosrs3_kbnk_gsb_to_acc_name,testdata.hosrs3_kbnk_gsb_to_amt,testdata.hosrs3_kbnk_gsb_to_txn,testdata.hosrs3_kbnk_gsb_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail of the transaction horse2 kbnk to bbl 1 acc 1 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_1kbnk_accout_name2)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_1kbnk_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_1kbnk_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_1kbnk_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_1kbnk_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_1kbnk_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_1kbnk_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_scb_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_scb_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_scb_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_scb_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_scb_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_scb_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_scb_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs1_scb_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_scb_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_scb_kbnk_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk_bbl_txn_time,testdata.hosrs3_kbnk_bbl_to_acc,testdata.hosrs3_kbnk_bbl_to_bank,testdata.hosrs3_kbnk_bbl_to_acc_name,testdata.hosrs3_kbnk_bbl_to_amt,testdata.hosrs3_kbnk_bbl_to_txn,testdata.hosrs3_kbnk_bbl_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail of the transaction horse2 kbnk to bbl 1 acc 2 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_1kbnk_accout_name2)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_1kbnk_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_1kbnk_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_1kbnk_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_1kbnk_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_1kbnk_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_2kbnk_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_scb_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_scb_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_scb_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_scb_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_scb_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_scb_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_scb_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs1_scb_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_scb_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_scb_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_scb_kbnk_unpolice_freeze_num)
    CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk_bbl_txn_time,testdata.hosrs3_kbnk_bbl_to_acc,testdata.hosrs3_kbnk_bbl_to_bank,testdata.hosrs3_kbnk_bbl_to_acc_name,testdata.hosrs3_kbnk_bbl_to_amt,testdata.hosrs3_kbnk_bbl_to_txn,testdata.hosrs3_kbnk_bbl_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail of the transaction horse1 lhb to kkp and tisco {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse1_lh_2_accout_name)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse1_lh_2_surename)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse1_lh_2_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse1_lh_2_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse1_lh_2_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse1_lh_2_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_lh_2_acc_no)

    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs1_lh2kkp_tsco_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs1_lh2kkp_tsco_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs1_lh2kkp_tsco_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs1_lh2kkp_tsco_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs1_lh2kkp_tsco_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs1_lh2kkp_tsco_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs1_lh2kkp_tsco_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs1_lh2kkp_tsco_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs1_lh2kkp_tsco_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs1_lh2kkp_tsco_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs1_lh2kkp_tsco_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs1_lh2kkp_tsco_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs1_lh2kkp_tsco_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs1_lh2kkp_tsco_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs1_lh2kkp_tsco_txn_time,testdata.hosrs1_lh2kkp_tsco_to_acc,testdata.hosrs1_lh2kkp_tsco_to_bank,testdata.hosrs1_lh2kkp_tsco_to_acc_name,testdata.hosrs1_lh2kkp_tsco_to_amt,testdata.hosrs1_lh2kkp_tsco_to_txn,testdata.hosrs1_lh2kkp_tsco_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail the transaction of horse3 bbl {string}',horse =>{
      CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_bbl_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_bbl_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_bbl_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_bbl_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_bbl_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_bbl_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_bbl_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_bbl_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_bbl_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_bbl_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_bbl_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_bbl_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_bbl_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_bbl_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_bbl_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_bbl_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_bbl_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_bbl_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_bbl_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_bbl_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_bbl_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse3 tsco {string}',horse =>{
      CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_tsco_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_tsco_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_tsco_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_tsco_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_tsco_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_tsco_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_tsco_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs3_tsco_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_tsco_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs3_tsco_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs3_tsco_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_tsco_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs3_tsco_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_tsco_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs3_tsco_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs3_tsco_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs3_tsco_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs3_tsco_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs3_tsco_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs3_tsco_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs3_tsco_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse3 kkp acccout 2 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_kkp_acc2_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_kkp_acc2_to_surename)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_kkp_acc2_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_kkp_acc2_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_kkp_acc2_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_kkp_acc2_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_kkp_acc2_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs3_kkp_acc2_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_kkp_acc2_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs3_kkp_acc2_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs3_kkp_acc2_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_kkp_acc2_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs3_kkp_acc2_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_kkp_acc2_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs3_kkp_acc2_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs3_kkp_acc2_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs3_kkp_acc2_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs3_kkp_acc2_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs3_kkp_acc2_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs3_kkp_acc2_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs3_kkp_acc2_unpolice_freeze_num)
  CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail the transaction of horse3 kkp {string}',horse =>{
      CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_kkp_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_kkp_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_kkp_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_kkp_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_kkp_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_kkp_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_kkp_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs3_kkp_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_kkp_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs3_kkp_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs3_kkp_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_kkp_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs3_kkp_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_kkp_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs3_kkp_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs3_kkp_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs3_kkp_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs3_kkp_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs3_kkp_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs3_kkp_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs3_kkp_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse2 lhb {string}', horse =>{
      CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_lh_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_lh_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_lh_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_lh_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_lh_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_lh_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_lh_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_lh_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_lh_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_lh_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_lh_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_lh_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_lh_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_lh_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_lh_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_lh_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_lh_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_lh_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_lh_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_lh_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_lh_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })  
})

Then('view sub case detail the transaction of horse2 lkbnk {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_kbnk_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_kbnk_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_kbnk_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_kbnk_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_kbnk_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_kbnk_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_kbnk_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_kbnk_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_kbnk_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_kbnk_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_kbnk_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_kbnk_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_kbnk_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_kbnk_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_kbnk_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs1_scb_1kbnk_txn_time,testdata.hosrs1_scb_1kbnk_to_acc,testdata.hosrs1_scb_1kbnk_to_bank,testdata.hosrs1_scb_1kbnk_to_acc_name,testdata.hosrs1_scb_1kbnk_to_amt,testdata.hosrs1_scb_1kbnk_to_txn,testdata.hosrs1_scb_1kbnk_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})


Then('view sub case detail the transaction of horse3 kbnk {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse2_kbnk_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse2_kbnk_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse2_kbnk_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse2_kbnk_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse2_kbnk_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse2_kbnk_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_kbnk_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_kbnk_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_kbnk_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_kbnk_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_kbnk_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_kbnk_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_kbnk_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_kbnk_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_kbnk_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs1_mega_kbnk_txn_time,testdata.hosrs1_mega_kbnk_to_acc,testdata.hosrs1_mega_kbnk_to_bank,testdata.hosrs1_mega_kbnk_to_acc_name,testdata.hosrs1_mega_kbnk_to_amt,testdata.hosrs1_mega_kbnk_to_txn,testdata.hosrs1_mega_kbnk_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})

Then('view sub case detail the transaction of horse3 gsb {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_gsb_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_gsb_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_gsb_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_gsb_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_gsb_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_gsb_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_gsb_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_kbnk_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_kbnk_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_kbnk_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_kbnk_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_kbnk_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_kbnk_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_kbnk_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_kbnk_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk_gsb_txn_time,testdata.hosrs3_kbnk_gsb_to_acc,testdata.hosrs3_kbnk_gsb_to_bank,testdata.hosrs3_kbnk_gsb_to_acc_name,testdata.hosrs3_kbnk_gsb_to_amt,testdata.hosrs3_kbnk_gsb_to_txn,testdata.hosrs3_kbnk_gsb_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})

Then('view sub case detail the transaction of horse3 1bbl {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_bbl_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_bbl_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_bbl_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_bbl_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_bbl_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_bbl_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_bbl_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs3_bbl_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_bbl_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs3_bbl_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs3_bbl_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_bbl_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs3_bbl_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_bbl_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs3_bbl_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs3_bbl_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs3_bbl_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs3_bbl_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs3_bbl_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs3_bbl_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs3_bbl_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk_bbl_txn_time,testdata.hosrs3_kbnk_bbl_to_acc,testdata.hosrs3_kbnk_bbl_to_bank,testdata.hosrs3_kbnk_bbl_to_acc_name,testdata.hosrs3_kbnk_bbl_to_amt,testdata.hosrs3_kbnk_bbl_to_txn,testdata.hosrs3_kbnk_bbl_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})

Then('view sub case detail the transaction of horse3 2bbl {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_bbl_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_bbl_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_bbl_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_bbl_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_bbl_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_bbl_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_bbl_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs3_bbl_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_bbl_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs3_bbl_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs3_bbl_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_bbl_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs3_bbl_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_bbl_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs3_bbl_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs3_bbl_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs3_bbl_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs3_bbl_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs3_bbl_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs3_bbl_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs3_bbl_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs3_kbnk_bbl_txn_time,testdata.hosrs3_kbnk_bbl_to_acc,testdata.hosrs3_kbnk_bbl_to_bank,testdata.hosrs3_kbnk_bbl_to_acc_name,testdata.hosrs3_kbnk_bbl_to_amt,testdata.hosrs3_kbnk_bbl_to_txn,testdata.hosrs3_kbnk_bbl_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})

Then('view sub case detail the transaction of horse2 2kbnk {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(2)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_kbnk_2_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_kbnk_2_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_kbnk_2_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_kbnk_2_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_kbnk_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_kbnk_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_kbnk_2_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_kbnk_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_kbnk_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_kbnk_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_kbnk_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_kbnk_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_kbnk_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_kbnk_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_kbnk_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_kbnk_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_kbnk_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_kbnk_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs1_scb_2kbnk_txn_time,testdata.hosrs1_scb_2kbnk_to_acc,testdata.hosrs1_scb_2kbnk_to_bank,testdata.hosrs1_scb_2kbnk_to_acc_name,testdata.hosrs1_scb_2kbnk_to_amt,testdata.hosrs1_scb_2kbnk_to_txn,testdata.hosrs1_scb_2kbnk_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})

Then('view sub case detail the transaction of horse2 kkp {string}', horse =>{
    CreateSubCasePage.clickSubCaseViewDetail(1)
    cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_kkp_2_to_accout_name)
    CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_kkp_2_to_surename)
    CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_kkp_2_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_kkp_2_person_id)
    CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_kkp_2_phone_no)
    CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_kkp_2_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_kkp_2_to_acc_no)

    CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_kkp_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_kkp_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_kkp_date_report_police)
    CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_kkp_freeze7day_date)
    CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_kkp_unfreeze7day_date)   
    CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_kkp_freeze_by_police_date)
    CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_kkp_unfreeze_by_police_date)
    CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_kkp_type_freeze_by_bank)
    CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_kkp_amount_freeze_by_bank)
    CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_kkp_balance)
    CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_kkp_type_freeze_by_police)
    CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_kkp_police_freeze_num)
    CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_kkp_police_freeze_amount)
    CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_kkp_unpolice_freeze_num)
    CreateSubCasePage.closeSubCaseViewDetail()
  })  
})
Then('view sub case detail the transaction of horse2 tisco {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(2)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_tsco_2_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_tsco_2_to_surename)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_tsco_2_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_tsco_2_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_tsco_2_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_tsco_2_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_tsco_2_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_tsco_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_tsco_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_tsco_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_tsco_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_tsco_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_tsco_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_tsco_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_tsco_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_tsco_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_tsco_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_tsco_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_tsco_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_tsco_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_tsco_unpolice_freeze_num)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})
Then('view sub case detail the transaction of horse3 tsco acccout 2 {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_tsco_acc2_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_tsco_acc2_to_surename)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_tsco_acc2_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_tsco_acc2_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_tsco_acc2_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_tsco_acc2_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_tsco_acc2_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_tsco_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_tsco_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_tsco_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_tsco_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_tsco_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_tsco_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_tsco_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_tsco_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_tsco_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_tsco_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_tsco_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_tsco_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_tsco_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_tsco_unpolice_freeze_num)
  CreateSubCasePage.closeSubCaseViewDetail()
  })  
})

Then('view sub case detail the transaction of horse2 scb {string}',horse =>{
      CreateSubCasePage.clickSubCaseViewDetail(2)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse1_scb_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse1_scb_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse1_scb_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse1_scb_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse1_scb_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse1_scb_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse1_scb_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_scb_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_scb_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_scb_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_scb_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_scb_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_scb_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_scb_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_scb_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_scb_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_scb_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_scb_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_scb_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_scb_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_scb_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })   
})
Then('view sub case detail the transaction of horse3 kbank {string}', horse =>{
        CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse2_kbnk_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse2_kbnk_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse2_kbnk_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse2_kbnk_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse2_kbnk_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse2_kbnk_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_kbnk_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs3_kbnk_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs3_kbnk_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs3_kbnk_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs3_kbnk_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs3_kbnk_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs3_kbnk_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs3_kbnk_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs3_kbnk_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs3_kbnk_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs3_kbnk_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs3_kbnk_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs3_kbnk_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs3_kbnk_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs3_kbnk_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse4 ktb {string}',horse =>{
      CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_ktb_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_ktb_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_ktb_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_ktb_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_ktb_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_ktb_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_ktb_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs4_ktb_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs4_ktb_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs4_ktb_date_report_police)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs4_ktb_freeze7day_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs4_ktb_unfreeze7day_date)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs4_ktb_freeze_by_police_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs4_ktb_unfreeze_by_police_date)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs4_ktb_type_freeze_by_bank)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs4_ktb_amount_freeze_by_bank)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs4_ktb_balance)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs4_ktb_type_freeze_by_police)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs4_ktb_police_freeze_num)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs4_ktb_police_freeze_amount)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs4_ktb_unpolice_freeze_num)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse5 bay {string}',horse => {
        CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse4_bay_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse4_bay_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse4_bay_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse4_bay_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse4_bay_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse4_bay_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse4_bay_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs5_bay_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs5_bay_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs5_bay_date_report_polices)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs5_bay_freeze7day_dates)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs5_bay_unfreeze7day_dates)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs5_bay_freeze_by_police_dates)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs5_bay_unfreeze_by_police_dates)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs5_bay_type_freeze_by_banks)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs5_bay_amount_freeze_by_banks)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs5_bay_balances)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs5_bay_type_freeze_by_polices)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs5_bay_police_freeze_nums)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs5_bay_police_freeze_amounts)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs5_bay_unpolice_freeze_nums)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse6 bay {string}',horse =>{
        CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse5_bay_acc2_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse5_bay_acc2_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse5_bay_acc2_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse5_bay_acc2_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse5_bay_acc2_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse5_bay_acc2_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse5_bay_acc2_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs6_bay_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs6_bay_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs6_bay_date_report_polices)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs6_bay_freeze7day_dates)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs6_bay_unfreeze7day_dates)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs6_bay_freeze_by_police_dates)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs6_bay_unfreeze_by_police_dates)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs6_bay_type_freeze_by_banks)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs6_bay_amount_freeze_by_banks)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs6_bay_balances)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs6_bay_type_freeze_by_polices)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs6_bay_police_freeze_nums)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs6_bay_police_freeze_amounts)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs6_bay_unpolice_freeze_nums)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('view sub case detail the transaction of horse7 bay {string}',horse =>{
        CreateSubCasePage.clickSubCaseViewDetail(1)
      cy.fixture(horse).then(testdata =>{
      CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse6_bay_acc2_to_accout_name)
      CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse6_bay_acc2_to_surename)
      CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse6_bay_acc2_person_type)
      CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse6_bay_acc2_person_id)
      CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse6_bay_acc2_phone_no)
      CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse6_bay_acc2_bankname)
      CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse6_bay_acc2_to_acc_no)

      CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs7_bay_freeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs7_bay_unfreeze72hrs_bank_date)
      CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs7_bay_date_report_polices)
      CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs7_bay_freeze7day_dates)
      CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs7_bay_unfreeze7day_dates)   
      CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs7_bay_freeze_by_police_dates)
      CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs7_bay_unfreeze_by_police_dates)
      CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs7_bay_type_freeze_by_banks)
      CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs7_bay_amount_freeze_by_banks)
      CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs7_bay_balances)
      CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs7_bay_type_freeze_by_polices)
      CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs7_bay_police_freeze_nums)
      CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs7_bay_police_freeze_amounts)
      CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs7_bay_unpolice_freeze_nums)
      CreateSubCasePage.closeSubCaseViewDetail()
      })
})
Then('confirm to create sub case',() =>{
    CreateSubCasePage.clickConfirmSubCase()
})
Then('click to create sub case',() =>{
    CreateSubCasePage.clickSubCaseViewDetail()
})
Then('should be display sub case horse2 uobt to kbnk acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_uobt_accout_name)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_uobt_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_uobt_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_uobt_accout_name2)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_uobt_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_uobt_to_trx_cont)
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_uobt_to_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse2_1kbnk1_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse2_1kbnk1_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse2_1kbnk1_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse2_1kbnk1_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse2_1kbnk1_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse2_1kbnk1_to_amt_total)
  }) 
})

Then('view sub case detail of the transaction horse3 uobt to kbnk 1 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_uobt_accout_name2)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_uobt_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_uobt_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_uobt_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_uobt_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_uobt_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_uobt_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_mega_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_mega_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs2_uobt_kbnk_txn_time,testdata.hosrs2_uobt_kbnk_to_acc,testdata.hosrs2_uobt_kbnk_to_bank,testdata.hosrs2_uobt_kbnk_to_acc_name,testdata.hosrs2_uobt_kbnk_to_amt,testdata.hosrs2_uobt_kbnk_to_txn,testdata.hosrs2_uobt_kbnk_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail the transaction of horse2 kbnk1 {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse2_kbnk_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse2_kbnk_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse2_kbnk_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse2_kbnk_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse2_kbnk_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse2_kbnk_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_kbnk_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_mega_kbnk_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_mega_kbnk_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs2_uobt_kbnk_txn_time,testdata.hosrs2_uobt_kbnk_to_acc,testdata.hosrs2_uobt_kbnk_to_bank,testdata.hosrs2_uobt_kbnk_to_acc_name,testdata.hosrs2_uobt_kbnk_to_amt,testdata.hosrs2_uobt_kbnk_to_txn,testdata.hosrs2_uobt_kbnk_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('should be display sub case horse Bay to ghb acc preview page of {string}',horse =>{
  CreateSubCasePage.caseIdOnSubCaseDisplay(horse)
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseNameDisplay(testdata.horse2_bay_accout_name)
    CreateSubCasePage.subCaseBankSenderNameDisplay(testdata.horse2_bay_bankname)
    CreateSubCasePage.subCaseSenderAccountDisplay(testdata.horse2_bay_acc_no)
    CreateSubCasePage.subCaseSenderTxnAccNameDisplay(testdata.horse2_bay_accout_name2)
    CreateSubCasePage.subCaseSenderBankShortNameDisplay(testdata.horse2_bay_bank_short_name)
    CreateSubCasePage.subCaseSenderTxnCountDisplay(testdata.horse2_bay_to_trx_cont) 
    CreateSubCasePage.subCaseSenderTxnAmtDisplay(testdata.horse2_bay_to_amt_total)
    // // Transaction 1
    CreateSubCasePage.subCaseRecvTxnAccNameDisplay(1, testdata.horse3_ghb_to_accout_name)
    CreateSubCasePage.subCaseRecvTxnAccSureNameDisplay(1,testdata.horse3_ghb_to_surname)
    CreateSubCasePage.subCaseRecvTxnAccNoDisplay(1,testdata.horse3_ghb_to_acc_no)
    CreateSubCasePage.subCaseRecvBankShortNameDisplay(1,testdata.horse3_ghb_to_bank_short_name)
    CreateSubCasePage.subCaseRecvTxnCountDisplay(1,testdata.horse3_ghb_to_trx_cont)
    CreateSubCasePage.subCaseRecvTxnAmtDisplay(1,testdata.horse3_ghb_to_amt_total)
  }) 
})


Then('view sub case detail of the transaction horse3 bay to ghb 1 {string}',horse =>{
  CreateSubCasePage.clickSubCaseViewDetailFirst()
  cy.fixture(horse).then(testdata =>{
    CreateSubCasePage.subCaseIdDisplay(testdata.case_id)
    CreateSubCasePage.subCaseNameDetailDisplay(testdata.horse2_bay_accout_name2)
    CreateSubCasePage.subCaseSureNameDisplay(testdata.horse2_uobt_surname)
    CreateSubCasePage.subCasePersonTypeDisplay(testdata.horse2_uobt_person_type)
    CreateSubCasePage.subCasePersonIdDisplay(testdata.horse2_uobt_person_id)
    CreateSubCasePage.subCasePersonPhoneNoDisplay(testdata.horse2_bay_phone_no)
    CreateSubCasePage.subCaseBankNameOwnerDisplay(testdata.horse2_bay_bankname)
    CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse2_bay_acc_no)
    CreateSubCasePage.subCaseDateOfFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_freeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_unfreeze72hrs_bank_date)
    CreateSubCasePage.subCaseDateOfReportPoliceDisplay(testdata.hosrs2_mega_kbnk_date_report_police)
    CreateSubCasePage.subCaseDateOfFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_freeze7day_date)
    CreateSubCasePage.subCaseDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_unfreeze7day_date)   
    CreateSubCasePage.subCaseDateOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_freeze_by_police_date)
    CreateSubCasePage.subCaseDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_unfreeze_by_police_date)
    CreateSubCasePage.subCaseTypeOfFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_bank)
    CreateSubCasePage.subCaseAmountFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_amount_freeze_by_bank)
    CreateSubCasePage.subCaseBalanceDisplay(testdata.hosrs2_mega_kbnk_balance)
    CreateSubCasePage.subCaseTypeOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_police)
    CreateSubCasePage.subCasePoliceFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_police_freeze_num)
    CreateSubCasePage.subCaseAmountFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_police_freeze_amount)
    CreateSubCasePage.subCasePoliceUnFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_unpolice_freeze_num)

    CreateSubCasePage.subCaseTxn(testdata.hosrs3_bay_kbnk_txn_time,testdata.hosrs3_bay_kbnk_to_acc,testdata.hosrs3_bay_kbnk_to_bank,testdata.hosrs3_bay_kbnk_to_acc_name,testdata.hosrs3_bay_kbnk_to_amt,testdata.hosrs3_bay_kbnk_to_txn,testdata.hosrs3_bay_kbnk_ip)
    CreateSubCasePage.closeSubCaseViewDetail()
  })
})

Then('view sub case detail the transaction of horse2 ghb1 {string}', horse =>{
  CreateSubCasePage.clickSubCaseViewDetail(1)
  cy.fixture(horse).then(testdata =>{
  CreateSubCasePage.subCaseToNameDetailDisplay(testdata.horse3_ghb_to_accout_name)
  CreateSubCasePage.subCaseToSureNameDisplay(testdata.horse3_ghb_to_surname)
  CreateSubCasePage.subCaseToPersonTypeDisplay(testdata.horse3_ghb_person_type)
  CreateSubCasePage.subCaseToPersonIdDisplay(testdata.horse3_ghb_person_id)
  CreateSubCasePage.subCaseToPersonPhoneNoDisplay(testdata.horse3_ghb_phone_no)
  CreateSubCasePage.subCaseToBankNameOwnerDisplay(testdata.horse3_ghb_bankname)
  CreateSubCasePage.subCaseBankAccNoDisplay(testdata.horse3_ghb_to_acc_no)

  CreateSubCasePage.subCaseToDateOfFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_freeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc72hrDisplay(testdata.hosrs2_mega_kbnk_unfreeze72hrs_bank_date)
  CreateSubCasePage.subCaseToDateOfReportPoliceDisplay(testdata.hosrs2_mega_kbnk_date_report_police)
  CreateSubCasePage.subCaseToDateOfFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_freeze7day_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeAcc7dayDisplay(testdata.hosrs2_mega_kbnk_unfreeze7day_date)   
  CreateSubCasePage.subCaseToDateOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_freeze_by_police_date)
  CreateSubCasePage.subCaseToDateOfUnFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_unfreeze_by_police_date)
  CreateSubCasePage.subCaseToTypeOfFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_bank)
  CreateSubCasePage.subCaseToAmountFreezeByBankDisplay(testdata.hosrs2_mega_kbnk_amount_freeze_by_bank)
  CreateSubCasePage.subCaseToBalanceDisplay(testdata.hosrs2_mega_kbnk_balance)
  CreateSubCasePage.subCaseToTypeOfFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_type_freeze_by_police)
  CreateSubCasePage.subCaseToPoliceFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_police_freeze_num)
  CreateSubCasePage.subCaseToAmountFreezeByPoliceDisplay(testdata.hosrs2_mega_kbnk_police_freeze_amount)
  CreateSubCasePage.subCaseToPoliceUnFreezeNumberDisplay(testdata.hosrs2_mega_kbnk_unpolice_freeze_num)
  CreateSubCasePage.subCaseTxn(testdata.hosrs3_ghb_kbnk_txn_time,testdata.hosrs3_ghb_kbnk_to_acc,testdata.hosrs3_ghb_kbnk_to_bank,testdata.hosrs3_ghb_kbnk_to_acc_name,testdata.hosrs3_ghb_kbnk_to_amt,testdata.hosrs3_ghb_kbnk_to_txn,testdata.hosrs3_ghb_kbnk_ip)
  CreateSubCasePage.closeSubCaseViewDetail()
  })
})

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// new template for sub case

Then('view page for {string} add subcase {string}',(bank,fileName) =>{
  cy.wait(2000)
  CreateSubCasePage.DisplayPageAddsub()
  CreateSubCasePage.DownloadtemplateSubcase(bank)
  CreateSubCasePage.subcasecopyFilename(bank,fileName)
})
Then('upload sub case {string}',(filename) =>{
  CreateSubCasePage.uploadPositiveFileSubCase(filename)
})

When('should be display sub case preview page of {string} with data {string}', (scenario,data) =>{
  CreateSubCasePage.DisplayValue_sub(data)
})

Then('view detail sub trasition of {string} sub case page of {string} with data {string} on {string}', (row,scenario,data,condition) =>{
  const non_bank  = Cypress.env('nonBankData');
  cy.log(non_bank[0][4])
  if( non_bank[0][4] == "ผู้ให้บริการทางการเงิน"){
    CreateSubCasePage.DisplayValue_IN_Transition_sub(row,scenario,data,condition)
  }else if( non_bank[0][4] == "ธนาคาร"){
    CreateSubCasePage.DisplayValue_IN_Transition_for_bank_sub(row,scenario,data,condition)
  }else if( non_bank[0][4] == ""){
    CreateSubCasePage.DisplayValue_IN_Transition_for_bank_sub(row,scenario,data,condition)
  }
  else{
    throw new Error('Unknown data accout category : ' + non_bank[0][4])
  }
})

Then('should be display error message subcase is {string}',errMsg =>{
    if (errMsg == "template_version") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.template_version)
        }) 
      }
      else if (errMsg == "invalid_m1_bankname") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_bankname)
        }) 
      }
      else if (errMsg == "invalid_m1_bankname_reciever") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_bankname_reciever)
        }) 
      }
      else if (errMsg == "invalid_not_condition_bankname_reciver") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_not_condition_bankname_reciver)
        }) 
      }
      else if (errMsg == "invalid_m1_not_complate_bankname_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_not_complate_bankname_v1)
        }) 
      }
      else if (errMsg == "invalid_none_bank_or_bank") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_or_bank)
        }) 
      }
      else if (errMsg == "invalid_o_reciever_statusmoney") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_reciever_statusmoney)
        }) 
      }
      else if (errMsg == "invalid_condition_statusmoney") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_statusmoney)
        }) 
      }
      else if (errMsg == "invalid_not_complate_sender") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_not_complate_sender)
        }) 
      }
      else if (errMsg == "invalid_condition_reciever_account_and_reason") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_condition_reciever_account_and_reason)
        }) 
      }
      else if (errMsg == "invalid_sender") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_sender)
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
      else if (errMsg == "invalid_list_ref1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_list_ref1)
        }) 
      }
      else if (errMsg == "invalid_filename") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_filename)
        }) 
      }
      else if (errMsg == "invalid_bankcaseID_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_bankcaseID_v1)
        }) 
      }
      else if (errMsg == "invalid_bankcase_and_list") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_bankcase_and_list)
        }) 
      }
      else if (errMsg == "invalid_data_sender_not_complate") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_sender_not_complate)
        }) 
      }
      else if (errMsg == "invalid_data_sender_condition") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_sender_condition)
        }) 
      }
      else if (errMsg == "invalid_data_sender_condition_account") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_sender_condition_account)
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
      else if (errMsg == "invalid_o_reciever_statusmoney_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_reciever_statusmoney_v1)
        }) 
      }
      else if (errMsg == "invalid_o_not_complate_ref1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_not_complate_ref1)
        }) 
      }
      else if (errMsg == "invalid_o_biller_condition") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_biller_condition)
        }) 
      }
      else if (errMsg == "invalid_data_reciever_condition_status_biller") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_reciever_condition_status_biller)
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
      else if (errMsg == "invalid_data_sender_m1_all") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_sender_m1_all)
        }) 
      }
      else if (errMsg == "invalid_data_sender_condition_m1_all") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_sender_condition_m1_all)
        }) 
      }
      else if (errMsg == "invalid_none_bank_account") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_account)
        }) 
      }
      else if (errMsg == "invalid_data_reciever_condition_m2_all") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_reciever_condition_m2_all)
        }) 
      }
      else if (errMsg == "invalid_data_m2_not_complate") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m2_not_complate)
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
      else if (errMsg == "invalid_data_m1_condition_v3") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_m1_condition_v3)
        }) 
      }
      else if (errMsg == "invalid_data_reciever_not_complate_m2_all") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_reciever_not_complate_m2_all)
        }) 
      }
      else if (errMsg == "invalid_none_bank_settlement") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_none_bank_settlement)
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
      else if (errMsg == "invalid_o_biller") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_biller)
        }) 
      }
      else if (errMsg == "invalid_o_changestatus_money") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_changestatus_money)
        }) 
      }
      else if (errMsg == "invalid_data_sender_not_complate_m1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_sender_not_complate_m1)
        }) 
      }
      else if (errMsg == "invalid_o_reciever_personalID") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_o_reciever_personalID)
        }) 
      }
      else if (errMsg == "invalid_data_reciever_file1_m2_all") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_reciever_file1_m2_all)
        }) 
      }
      else if (errMsg == "invalid_data_reciever_file2_m2_all") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_data_reciever_file2_m2_all)
        }) 
      }
      else if (errMsg == "invalid_m1_condition_bankname_v1") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_condition_bankname_v1)
        }) 
      }
      else if (errMsg == "invalid_m1_sender_condition_bankname") {
        cy.fixture('error_message').then(error_message =>{
            CreateMasterCasePage.displayErrorMessage(error_message.invalid_m1_sender_condition_bankname)
        }) 
      }else{
        throw new Error('Unknown text : ' + errMsg)
      }

    })
