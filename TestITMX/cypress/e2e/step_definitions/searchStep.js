import { Given, Then, When, And } from '@badeball/cypress-cucumber-preprocessor';
import LoginPage from './loginPage';
import SearchPage from './searchPage';
import { WebsearchPage } from './websearchPage';
import UpdatePage from './updatePage';
import { CrossBankCasePage } from './CrossBankCasePage';
import CreateMasterCasePage from './createMasterCasePage';

Given('search result with case id {string} and to account number {string}',(case_id,to_acc_no) =>{
    LoginPage.clickCFRWebPortalDev()
    SearchPage.searchByCaseIdAndToAccNumber(case_id,to_acc_no)
    SearchPage.clickScrollRight()
})
Given('add sub case first record',() =>{
    SearchPage.clickAddCaseFirst()
})
Given('search result with case id {string} with to account number {string} and from account number {string}',(case_id,to_acc_no,from_acc_no) =>{
    LoginPage.clickCFRWebPortalDev()
    SearchPage.searchByCaseIdAndToAccNumberFromAccNumber(case_id,to_acc_no,from_acc_no)
    SearchPage.clickScrollRight()
})
Given('search result with case id {string} with from account number {string}',(case_id,from_acc_no) =>{
    LoginPage.clickCFRWebPortalDev()
    SearchPage.searchByCaseIdAndFromAccNumber(case_id,from_acc_no)
    SearchPage.clickScrollRight()
})
When('search result with case id {string}',caseId =>{
    LoginPage.clickCFRWebPortalDev()
    SearchPage.searchByCaseId(caseId)
})
When('search result from api add mastercase',() =>{
    LoginPage.clickCFRWebPortalDev()
    const caseID = Cypress.env('bankcaseID')
    cy.log('Search by case ID: ' + caseID)
    SearchPage.searchByCaseId(caseID)
})
Then('should be displsy result only case id {string}',case_id =>{
    SearchPage.displaySearchResultByCaseId(case_id)
})

Given('search result with case id NFT {string} and to account number {string}',(case_id,to_acc_no) =>{
    LoginPage.clickCFRWebPortalNFT()
    SearchPage.searchByCaseIdAndToAccNumber(case_id,to_acc_no)
    SearchPage.clickScrollRight()
})
Given('add sub case first record NFT ',() =>{
    SearchPage.clickAddCaseFirst()
})
Given('search result with case id NFT {string} with to account number {string} and from account number {string}',(case_id,to_acc_no,from_acc_no) =>{
    LoginPage.clickCFRWebPortalNFT()
    SearchPage.searchByCaseIdAndToAccNumberFromAccNumber(case_id,to_acc_no,from_acc_no)
    SearchPage.clickScrollRight()
})
Given('search result with case id NFT {string} with from account number {string}',(case_id,from_acc_no) =>{
    LoginPage.clickCFRWebPortalNFT()
    SearchPage.searchByCaseIdAndFromAccNumber(case_id,from_acc_no)
    SearchPage.clickScrollRight()
})
When('search result with case id NFT {string}',caseId =>{
    LoginPage.clickCFRWebPortalNFT()
    SearchPage.searchByCaseId(caseId)
})
Then('should be displsy result only case id NFT {string}',case_id =>{
    SearchPage.displaySearchResultByCaseId(case_id)
})

Given('Input data Personal_Id is {string}', (iden) => {
    const personalId = iden
    Cypress.env("personalId", personalId);
    WebsearchPage.displayLableWebSearch()
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
});

Then('should be display case detail on search {string}',list => {
    WebsearchPage.displayLableTrasition_Web_Search()
    SearchPage.shouldbedisplaycasedetailonsearch(list)
  })

  Then('should be display case detail on search mule level history {string}',list => {
    WebsearchPage.displayLableTrasition_Mule_Level_History()
    SearchPage.shouldbedisplaycasedetailonsearchmulelevelhistory(list)
  })

  Then('should be display case detail on search mule history {string}',list => {
    WebsearchPage.displayLableTrasition_Mule_History()
    // SearchPage.shouldbedisplaycasedetailonsearchmulehistory(list)
  })

  Then('view be detail on search mule history {string}',list => {
    WebsearchPage.displayLableTrasition_Mule_History()
    SearchPage.shouldbedisplaycasedetailonsearchmulelevelhistory(list)
    WebsearchPage.displayLableTrasition_Mule_History()
  })

  Then('display lable trasition dark brown mule {string}',list => {
    SearchPage.viewmulelevelhistory(list)
    SearchPage.displayLableTrasition_dark_brown_mule(list)
    SearchPage.displayLableandValidateDatadetailaccount_dark_brown_mule(list)
    SearchPage.displayLableandvalidateDatamanagements_dark_brown_mule(list)
    SearchPage.displayLabledetailrecordsbank_dark_brown_mule(list)
    SearchPage.displayLabledetailaccountdismissalstatus_dark_brown_mule(list)
  })

  Then('should be display mule web search preview page with valid description', scenario =>{
    WebsearchPage.displayLableWebSearch()
    WebsearchPage.displayLableTrasition_Web_Search()
    WebsearchPage.displayLableTrasition_Mule_Level_History()
    WebsearchPage.displayLableTrasition_Mule_History()
  })
  
  When('search result with case id {string} and clear date',(caseId) =>{
      LoginPage.clickCFRWebPortalDev()
      CrossBankCasePage.clearNowDate()       
      SearchPage.searchByCaseId(caseId)
    })
    
Then('should be display web search preview page result {string} trasition {string}', (data,row) =>{
    CreateMasterCasePage.DisplayLableSearch()
    SearchPage.DisplaySearchSubcase(data,row)
    })
Then('should be display web search preview page result {string} trasition {string} for case {string}', (data,row,c) =>{
    CreateMasterCasePage.DisplayLableSearch()
    if(c == 'TC002_097'){
        cy.log('skip')
    }else if (c == 'TC002_098'){
        cy.log('skip')
    }else if (c == 'TC003_097'){
        cy.log('skip')
    }else if (c == 'TC003_098'){
        cy.log('skip')
    }else{
    SearchPage.DisplaySearchSubcase(data,row)
    }
    })