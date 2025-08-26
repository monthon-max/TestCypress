import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import UpdatePage from './updatePage'
import  { WebsearchPage }  from './websearchPage'
import  { Databasequery }  from './DatabaseQuery'
import { QueryPage } from "./Querypage";
// const { Given } = require('@badeball/cypress-cucumber-preprocessor');  // นำเข้า Given
// const xlsx = require('xlsx');  // ไลบรารีสำหรับอ่านและเขียนไฟล์ Excel

Given('Query Personal_ID {string} and click find web search', (number) => {
  const query = QueryPage.Query_New_Mule(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    // cy.log(Cypress.env('decryptedResults')); 
    const personalId = decryptedResults[0].personalId
    const accountNumber = decryptedResults[0].accountNumber
    cy.log(accountNumber)
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
});
Given('Query Personal_ID and firstName {string} and click find web search', (number) => {
  const query = QueryPage.Query_Mule_Same_Level2(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
});
Given('Query RefCode {string} and click find web search', (number) => {
  const query = QueryPage.Query_New_Mule(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const refCode = decryptedResults[0].refCode
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string}', (number) => {
  const query = QueryPage.Query_Mule(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    Cypress.env("personalId", decryptedResults[0].personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Not Mule But Data stil System CFR', (number) => {
  const query = QueryPage.Query_Not_Mule_But_Sys_CFR(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    cy.log(firstName)
    cy.log(lastName)
    Cypress.env("personalId", decryptedResults[0].personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Not Mule But Data stil System CFR And Input Field Name', (number) => {
  const query = QueryPage.Query_Not_Mule_But_Sys_CFR(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const firstName = decryptedResults[0].lastName
    Cypress.env("firstName", decryptedResults[0].firstName);
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Not Mule But Data stil System CFR And Input 3 Field', (number) => {
  const query = QueryPage.Query_Not_Mule_But_Sys_CFR(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("firstName", decryptedResults[0].firstName);
    Cypress.env("lastName", decryptedResults[0].lastName);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Not Mule But Data stil System CFR And Input All Field', (number) => {
  const query = QueryPage.Query_Not_Mule_But_Sys_CFR(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    const refCode = 'CFR000000000'
    const accountNumber = '4785617744000000'
    const bankname = 'ธนาคารกรุงเทพ จำกัด (มหาชน)'
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("firstName", decryptedResults[0].firstName);
    Cypress.env("lastName", decryptedResults[0].lastName);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.fillInSenderBank_Name(bankname)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Not Mule But Data stil System CFR And Input All Field And Invalid BankName', (number) => {
  const query = QueryPage.Query_Not_Mule_But_Sys_CFR(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    const refCode = 'CFR000000000'
    const accountNumber = '4785617744000000'
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("firstName", decryptedResults[0].firstName);
    Cypress.env("lastName", decryptedResults[0].lastName);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Not Mule But Data stil System CFR And Input Field SureName', (number) => {
  const query = QueryPage.Query_Not_Mule_But_Sys_CFR(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const lastName = decryptedResults[0].lastName
    Cypress.env("lastName", decryptedResults[0].lastName);
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.ClickSearch()
  });
});
Given('Query Not Mule But Data stil System CFR And Input Field is SureName_2 {string}', (lname) => {
    const lastName = lname
    Cypress.env("lastName", lname);
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.ClickSearch()
});
Given('Click Serach', () => {
    WebsearchPage.ClickSearch()
});
Given('Query All {string} Input Field All {string} and mule_level is {string}', (number,rulemax,mulelevel) => {
  const query = QueryPage.Query_Mule_RuleMax(number,rulemax,mulelevel);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const accountNumber = decryptedResults[0].accountNumber
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    const refCode = decryptedResults[0].refCode
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("accountNumber", decryptedResults[0].accountNumber);
    Cypress.env("firstName", decryptedResults[0].firstName);
    Cypress.env("lastName", decryptedResults[0].lastName);
    Cypress.env("refCode", decryptedResults[0].refCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Input Field Name', (number) => {
  const query = QueryPage.Query_Mule_NotSame(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const firstName = decryptedResults[0].firstName
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("firstName", decryptedResults[0].firstName);
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Input Field Surename', (number) => {
  const query = QueryPage.Query_Mule_NotSame(number);
  Databasequery.processDecryptedResults_3_field(query).then((decryptedResults) => {
    const lastName = decryptedResults[0].lastName
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("lastName", decryptedResults[0].lastName);
    WebsearchPage.fillInSenderSureName(lastName)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Input Field Account_number', (number) => {
  const query = QueryPage.Query_Mule(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const accountNumber = decryptedResults[0].accountNumber
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("accountNumber", decryptedResults[0].accountNumber);
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Input Field FristName And Account_number', (number) => {
  const query = QueryPage.Query_Mule(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const accountNumber = decryptedResults[0].accountNumber
    const firstName = decryptedResults[0].firstName
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("firstName", decryptedResults[0].firstName);
    Cypress.env("accountNumber", decryptedResults[0].accountNumber);
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} Input Field refCode And Rule_Max is {string} And Mule Level is {string}', (number,rulemax,mulelevel) => {
  const query = QueryPage.Query_Mule_RuleMax(number,rulemax,mulelevel);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const refCode = decryptedResults[0].refCode
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("refCode", decryptedResults[0].refCode);
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} and input bank_code 004', (number) => {
  const query = QueryPage.Query_Mule_TC001_002(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    Cypress.env("personalId", decryptedResults[0].personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} And Input data BankcaseID is {string}', (number,bankcaseId) => {
  const query = QueryPage.Query_Mule_Bank_case(number,bankcaseId);
  Databasequery.processDecryptedResults_V2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    Cypress.env("personalId", decryptedResults[0].personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} And Input data BankcaseID is {string} And Bankcode is {string}', (number,bankcaseId,bankcode) => {
  const query = QueryPage.Query_Mule_Bank_case_Todeep(number,bankcaseId,bankcode);
  Databasequery.processDecryptedResults_V2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    Cypress.env("personalId", decryptedResults[0].personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    cy.log(firstName)
    cy.log(lastName)
    WebsearchPage.ClickSearch()
  });
});
Given('Input data Personal_ID is {string} And refCode is {string}', (iden,refcode) => {
    const personalId = iden
    const refCode = refcode
    Cypress.env("personalId", personalId);
    Cypress.env("refCode", refCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
});
Given('Input data Personal_ID is {string}', (iden) => {
    const personalId = iden
    Cypress.env("personalId", personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
});
Given('Input data refCode is {string}', (code) => {
    const refCode = code
    Cypress.env("refCode", refCode);
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
});
Given('Input data AccountNumber is {string}', (acc) => {
    const accountNumber = acc
    Cypress.env("accountNumber", accountNumber);
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.ClickSearch()
});
Given('Input data firstName is {string}', (name) => {
  const firsTName = name
  Cypress.env("firstName", name);
  WebsearchPage.fillInSenderName(firsTName)
  WebsearchPage.ClickSearch()
});
Given('Query All {string} And Input data BankcaseID is {string} And Bankcode is {string} And refCode is {string}', (number,bankcaseId,bankcode,RefCode) => {
  const query = QueryPage.Query_Mule_Bank_case_Todeep(number,bankcaseId,bankcode);
  Databasequery.processDecryptedResults_V2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    const refCode = RefCode
    cy.log(firstName)
    cy.log(lastName)
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("refCode", refCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} And Input data BankcaseID is {string} and Input data RefCode is {string}', (number,bankcaseId,RefCode) => {
  const query = QueryPage.Query_Mule_Bank_case(number,bankcaseId);
  Databasequery.processDecryptedResults_V2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("refCode", RefCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(RefCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} V2', (number) => {
  const query = QueryPage.Query_Mule_Same_Level2(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    Cypress.env("personalId", decryptedResults[0].personalId);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  });
  });
Given('Query All {string} And Input data mule is Grey and Rule 1 is New Mule and warrant_RQ is R', (number) => {
  //TC4 check  *** personal_Id มีกี่เคส ถ้า master_case มีหลายอัน ถ้ามีให้ check select * from person where personal_id = ' ' ** id ที่ยังไม่ decrypt
  const query = QueryPage.Query_Mule_TC004_001(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const refCode = decryptedResults[0].refCode
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("refCode", decryptedResults[0].refCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} And Input data mule is Grey and Rule 2 is New Mule and warrant_RQ is H', (number) => {
  const query = QueryPage.Query_Mule_TC004_002(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const refCode = decryptedResults[0].refCode
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("refCode", decryptedResults[0].refCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Given('Query All {string} And Input data mule is light Grey and Rule 3', (number) => {
  const query = QueryPage.Query_Mule_TC004_002(number);
  Databasequery.processDecryptedResults(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const refCode = decryptedResults[0].refCode
    Cypress.env("personalId", decryptedResults[0].personalId);
    Cypress.env("refCode", decryptedResults[0].refCode);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(refCode)
    WebsearchPage.ClickSearch()
  });
});
Then('get data', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => {
    const jsonfile = Cypress.env("search_mule");
    const jsonfile_profile = Cypress.env("search_mule_profile");
    const jsonfile_transaction = Cypress.env("search_mule_transaction_search");
    cy.log(jsonfile)
    cy.log(jsonfile_profile)
    cy.log(jsonfile_transaction)
  });
  })
Then('count transition',() =>{
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => { 
    const jsonhis = Cypress.env("search_mule_history");
    cy.log(jsonhis)
    const data = JSON.parse(jsonhis);
    Object.entries(data).forEach(([key, value]) => {
      Cypress.env(key, value);
      // cy.log(`Set Cypress.env(${key}, ${value})`);
      let count = 0;
      if (Array.isArray(value)) {
        count = value.filter(item => typeof item === 'object' && item !== null).length;
      } else if (typeof value === 'object' && value !== null) {
        count = 1;
      }
      Cypress.env(key, count);
    });
    const mulecount = Cypress.env('muleHistorySearchResult')
    const pagecount = Cypress.env('pageHistory')
    cy.log(mulecount);
    
  });
})
Then('get data in validate result mule_history', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => { 
    const jsonhis = Cypress.env("search_mule_history");
    cy.log('muleHistorySearchResult:', jsonhis)
    cy.log(jsonhis)
    const data = JSON.parse(jsonhis);
    data.muleHistorySearchResult.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(1).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-4tctn4').eq(index).should('have.text', item.ownerIdCard);
        cy.get('.css-1pie3mq').eq(index).should('have.text', item.fraudLevel);
        cy.get('.css-s7jynl').eq(index).should('have.text', item.bankShortName);
        cy.get('.css-xyep83').eq(index).should('have.text', item.accountNumber);
        cy.get('.css-1r1fews').eq(index).should('have.text', item.ruleDescription);
        cy.get('.css-es0gcz').eq(index).should('have.text', item.caseTypeId);
        cy.get('.css-k275av').eq(index).should('have.text', item.fraudAgain);
        cy.get('.css-16688kz').eq(index).should('have.text', item.bankCaseId);
        cy.get('.css-16ksph8').eq(index).should('have.text', item.warrantH);
        cy.get('.css-16972j').eq(index).should('have.text', item.warrantRQ);
        cy.get('.css-8llk40').eq(index).should('have.text', item.generateDate);
        cy.get('.css-ghbu72').eq(index).should('have.text', item.generateTime);
        cy.get('.css-12g12jx').eq(index).should('have.text', item.refCode);
        cy.get('.css-5c7weh').eq(index).should('have.text', item.declareDate);
        cy.get('.css-1hgv9kl').eq(index).should('have.text', item.declareReason);
        cy.get('.css-nfzfok').eq(index).should('have.text', item.firstName);
        cy.get('.css-1sb82y5').eq(index).should('have.text', item.lastName);      
      });
    });
  });
});
Then('get data in validate result mule_history_2', () => {
  const personalId = Cypress.env("personalId");
  const refCode = Cypress.env("refCode");
  Databasequery.prepareDataJSON_Search_mule_2(personalId,refCode).then(() => { 
    const jsonhis = Cypress.env("search_mule_history");
    // cy.log('muleHistorySearchResult:', jsonhis)
    const data = JSON.parse(jsonhis);
    data.muleHistorySearchResult.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(1).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-4tctn4').eq(index).should('have.text', item.ownerIdCard);
        cy.get('.css-1pie3mq').eq(index).should('have.text', item.fraudLevel);
        cy.get('.css-s7jynl').eq(index).should('have.text', item.bankShortName);
        cy.get('.css-xyep83').eq(index).should('have.text', item.accountNumber);
        cy.get('.css-1r1fews').eq(index).should('have.text', item.ruleDescription);
        cy.get('.css-es0gcz').eq(index).should('have.text', item.caseTypeId);
        cy.get('.css-k275av').eq(index).should('have.text', item.fraudAgain);
        cy.get('.css-16688kz').eq(index).should('have.text', item.bankCaseId);
        cy.get('.css-16ksph8').eq(index).should('have.text', item.warrantH);
        cy.get('.css-16972j').eq(index).should('have.text', item.warrantRQ);
        cy.get('.css-8llk40').eq(index).should('have.text', item.generateDate);
        cy.get('.css-ghbu72').eq(index).should('have.text', item.generateTime);
        cy.get('.css-12g12jx').eq(index).should('have.text', item.refCode);
        cy.get('.css-5c7weh').eq(index).should('have.text', item.declareDate);
        cy.get('.css-1hgv9kl').eq(index).should('have.text', item.declareReason);
        cy.get('.css-nfzfok').eq(index).should('have.text', item.firstName);
        cy.get('.css-1sb82y5').eq(index).should('have.text', item.lastName);      
      });
    });
  });
});
Then('get data in validate result mule_history for check all transition icon', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => {
    const jsonhis = Cypress.env("search_mule_history");
    const data = JSON.parse(jsonhis);
    const brownIds = []
    data.muleHistorySearchResult.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(1).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-4tctn4').eq(index).should('have.text', item.ownerIdCard);
        cy.get('.css-1pie3mq').eq(index).should('have.text', item.fraudLevel);
        cy.get('.css-s7jynl').eq(index).should('have.text', item.bankShortName);
        cy.get('.css-xyep83').eq(index).should('have.text', item.accountNumber);
        cy.get('.css-1r1fews').eq(index).should('have.text', item.ruleDescription);
        cy.get('.css-es0gcz').eq(index).should('have.text', item.caseTypeId);
        cy.get('.css-k275av').eq(index).should('have.text', item.fraudAgain);
        cy.get('.css-16688kz').eq(index).should('have.text', item.bankCaseId);
        cy.get('.css-16ksph8').eq(index).should('have.text', item.warrantH);
        cy.get('.css-16972j').eq(index).should('have.text', item.warrantRQ);
        cy.get('.css-8llk40').eq(index).should('have.text', item.generateDate);
        cy.get('.css-ghbu72').eq(index).should('have.text', item.generateTime);
        cy.get('.css-12g12jx').eq(index).should('have.text', item.refCode);
        cy.get('.css-5c7weh').eq(index).should('have.text', item.declareDate);
        cy.get('.css-1hgv9kl').eq(index).should('have.text', item.declareReason);
        cy.get('.css-nfzfok').eq(index).should('have.text', item.firstName);
        cy.get('.css-1sb82y5').eq(index).should('have.text', item.lastName);
        cy.get('.css-155dfca').eq(index)
        brownIds.push(item.brownMuleId);
      });
    });
    Cypress.env("brownIds", brownIds);
  });
});
Then('get data in validate result mule_history for action click brown mule detail', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => {
    const jsonhis = Cypress.env("search_mule_history");
    // cy.log('muleHistorySearchResult:', jsonhis)
    const data = JSON.parse(jsonhis);
    data.muleHistorySearchResult.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(1).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-4tctn4').eq(index).should('have.text', item.ownerIdCard);
        cy.get('.css-1pie3mq').eq(index).should('have.text', item.fraudLevel);
        cy.get('.css-s7jynl').eq(index).should('have.text', item.bankShortName);
        cy.get('.css-xyep83').eq(index).should('have.text', item.accountNumber);
        cy.get('.css-1r1fews').eq(index).should('have.text', item.ruleDescription);
        cy.get('.css-es0gcz').eq(index).should('have.text', item.caseTypeId);
        cy.get('.css-k275av').eq(index).should('have.text', item.fraudAgain);
        cy.get('.css-16688kz').eq(index).should('have.text', item.bankCaseId);
        cy.get('.css-16ksph8').eq(index).should('have.text', item.warrantH);
        cy.get('.css-16972j').eq(index).should('have.text', item.warrantRQ);
        cy.get('.css-8llk40').eq(index).should('have.text', item.generateDate);
        cy.get('.css-ghbu72').eq(index).should('have.text', item.generateTime);
        cy.get('.css-12g12jx').eq(index).should('have.text', item.refCode);
        cy.get('.css-5c7weh').eq(index).should('have.text', item.declareDate);
        cy.get('.css-1hgv9kl').eq(index).should('have.text', item.declareReason);
        cy.get('.css-nfzfok').eq(index).should('have.text', item.firstName);
        cy.get('.css-1sb82y5').eq(index).should('have.text', item.lastName);
        Cypress.env("brownid",item.brownMuleId)
        cy.get('.css-155dfca').eq(index).click()
      });
    });
  });
});
Then('get data in validate result mule_transaction_search', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => { 
    const jsontran = Cypress.env("search_mule_transaction_search");
    cy.log(jsontran)
    const data = JSON.parse(jsontran);
    // cy.log(data)
    data.muleTransactionSearchResult.forEach((item, index) => {
    cy.get('table.MuiTable-root').eq(2).within(() => {
      const row = index + 3
      cy.log(`Transition ${index + 1}:`);
      cy.get('.css-16688kz').eq(index).should('have.text', item.bankCaseId);
      cy.get('.css-10xd3ej').eq(index).should('have.text', item.senderAccountNumber);
      cy.get('.css-1s3k28m').eq(index).should('have.text', item.senderBankName);
      cy.get('.css-pbg4ag').eq(index).should('have.text', item.rank);
      cy.get('.css-es0gcz').eq(index).should('have.text', item.caseTypeId);
      cy.get('.css-fl98cw').eq(index).should('have.text', item.transactionDate);
      cy.get('.css-dgzx9m').eq(index).should('have.text', item.amount);
      cy.get('.css-2phel6').eq(index).should('have.text', item.receiverFirstName);
      cy.get('.css-1b8maqy').eq(index).should('have.text', item.receiverLastName);
      cy.get('.css-1vrr0qk').eq(index).should('have.text', item.receiverAccountNumber);
      cy.get('.css-geoga7').eq(index).should('have.text', item.receiverBankName);
      cy.get('.css-16ksph8').eq(index).should('have.text', item.warrantH);
      cy.get('.css-16972j').eq(index).should('have.text', item.warrantRQ);
      cy.get('.css-b9e4l1').eq(index).should('have.text', item.caseStatus);
      cy.get('.css-53eq00').eq(index).should('have.text', item.createDateTime);
    });
    });
  });
    });
    Then('get data in validate result mule_transaction_search_2', () => {
      const personalId = Cypress.env("personalId");
      const refCode = Cypress.env("refCode");
      Databasequery.prepareDataJSON_Search_mule_2(personalId,refCode).then(() => { 
        const jsontran = Cypress.env("search_mule_transaction_search");
        cy.log(jsontran)
        const data = JSON.parse(jsontran);
        // cy.log(data)
        // cy.log(data.muleTransactionSearchResult)
        data.muleTransactionSearchResult.forEach((item, index) => {
        cy.get('table.MuiTable-root').eq(2).within(() => {
          cy.log(`Transition ${index + 1}:`);
          cy.get('.css-16688kz').eq(index).should('have.text', item.bankCaseId);
          cy.get('.css-10xd3ej').eq(index).should('have.text', item.senderAccountNumber);
          cy.get('.css-1s3k28m').eq(index).should('have.text', item.senderBankName);
          cy.get('.css-pbg4ag').eq(index).should('have.text', item.rank);
          cy.get('.css-es0gcz').eq(index).should('have.text', item.caseTypeId);
          cy.get('.css-fl98cw').eq(index).should('have.text', item.transactionDate);
          cy.get('.css-dgzx9m').eq(index).should('have.text', item.amount);
          cy.get('.css-2phel6').eq(index).should('have.text', item.receiverFirstName);
          cy.get('.css-1b8maqy').eq(index).should('have.text', item.receiverLastName);
          cy.get('.css-1vrr0qk').eq(index).should('have.text', item.receiverAccountNumber);
          cy.get('.css-geoga7').eq(index).should('have.text', item.receiverBankName);
          cy.get('.css-16ksph8').eq(index).should('have.text', item.warrantH);
          cy.get('.css-16972j').eq(index).should('have.text', item.warrantRQ);
          cy.get('.css-b9e4l1').eq(index).should('have.text', item.caseStatus);
          cy.get('.css-53eq00').eq(index).should('have.text', item.createDateTime);
        });
        });
      });
        });  
    Then('get data in validate result mule_transaction And Query All Transition', () => {
      const personalId = Cypress.env("personalId");
      const refCode = Cypress.env("refCode");
      Databasequery.prepareDataJSON_Search_mule_3(personalId,refCode).then(() => { 
        const jsontran = Cypress.env("search_mule_transaction_search");
        cy.log(jsontran)
        const data = JSON.parse(jsontran);
      WebsearchPage.ClickRowperPage_mule_transaction()
        data.muleTransactionSearchResult.forEach((item, index) => {
        cy.get('table.MuiTable-root').eq(2).within(() => {
          cy.wait(2000)
          cy.log(`Transition ${index + 1}:`);
          cy.get('.css-16688kz',{timeout:20000}).eq(index).should('have.text', item.bankCaseId)
          cy.get('.css-10xd3ej',{timeout:20000}).eq(index).should('have.text', item.senderAccountNumber)
          cy.get('.css-1s3k28m',{timeout:20000}).eq(index).should('have.text', item.senderBankName);
          cy.get('.css-pbg4ag',{timeout:20000}).eq(index).should('have.text', item.rank);
          cy.get('.css-es0gcz',{timeout:20000}).eq(index).should('have.text', item.caseTypeId);
          cy.get('.css-fl98cw',{timeout:20000}).eq(index).should('have.text', item.transactionDate);
          cy.get('.css-dgzx9m',{timeout:20000}).eq(index).should('have.text', item.amount);
          cy.get('.css-2phel6',{timeout:20000}).eq(index).should('have.text', item.receiverFirstName);
          cy.get('.css-1b8maqy',{timeout:20000}).eq(index).should('have.text', item.receiverLastName);
          cy.get('.css-1vrr0qk',{timeout:20000}).eq(index).should('have.text', item.receiverAccountNumber);
          cy.get('.css-geoga7',{timeout:20000}).eq(index).should('have.text', item.receiverBankName);
          cy.get('.css-16ksph8',{timeout:20000}).eq(index).should('have.text', item.warrantH);
          cy.get('.css-16972j',{timeout:20000}).eq(index).should('have.text', item.warrantRQ);
          cy.get('.css-b9e4l1',{timeout:20000}).eq(index).should('have.text', item.caseStatus);
          cy.get('.css-53eq00',{timeout:20000}).eq(index).should('have.text', item.createDateTime);
        });
        });
      });
        });  
Then('get data in validate result mule_profile', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then((muleData) => {
    // cy.log(JSON.stringify(muleData))
    const muleProfile = muleData.muleProfileResult;
    cy.log("Mule Profile Data:", JSON.stringify(muleProfile));
    const {
      personalType,
      ownerIdCard,
      fullName,
      fraudLevel,
      refCode,
      currentDateTime
    } = muleProfile;
    WebsearchPage.Trasition_Account_Type_Display(personalType)
    WebsearchPage.Trasition_OwnerID_Display(ownerIdCard)
    WebsearchPage.Trasition_fullName_Display(fullName)
    WebsearchPage.Trasition_fraudLevel_Display(fraudLevel)
    WebsearchPage.Trasition_refCode_Display(refCode)
    WebsearchPage.Trasition_currentDateTime_Display(currentDateTime)
  });
  })
Then('get data in validate result mule_profile_2', () => {
  const personalId = Cypress.env("personalId");
  const refCode = Cypress.env("refCode");
  cy.log(refCode)
  Databasequery.prepareDataJSON_Search_mule_2(personalId,refCode).then(() => {
    const jsonfile = Cypress.env("search_mule_profile");
    const jsonfile1 = Cypress.env("search_mule");
    cy.log(jsonfile1)
    // cy.log(jsonfile)
    const data = JSON.parse(jsonfile);
    // cy.log(data);
    Object.entries(data).forEach(([key, value]) => {
      Cypress.env(key, value);
      // cy.log(`Set Cypress.env(${key}, ${value})`);
    });
    const personalType = Cypress.env('personalType');
    const owneridcard = Cypress.env('ownerIdCard');
    const fullName = Cypress.env('fullName');
    const fraudLevel = Cypress.env('fraudLevel');
    const refCode = Cypress.env('refCode');
    const currentDateTime = Cypress.env('currentDateTime');
    WebsearchPage.Trasition_Account_Type_Display(personalType)
    WebsearchPage.Trasition_OwnerID_Display(owneridcard)
    WebsearchPage.Trasition_fullName_Display(fullName)
    WebsearchPage.Trasition_fraudLevel_Display(fraudLevel)
    WebsearchPage.Trasition_refCode_Display(refCode)
    WebsearchPage.Trasition_currentDateTime_Display(currentDateTime)
  });
  })
  Then('get data in validate result mule_profile_3', () => {
    const refCode = Cypress.env("refCode");
    Databasequery.prepareDataJSON_Search_mule_4(refCode).then(() => {
      const jsonfile = Cypress.env("search_mule_profile");
      const jsonfile1 = Cypress.env("search_mule");
      cy.log(jsonfile1)
      // cy.log(jsonfile)
      const data = JSON.parse(jsonfile); //make object
      // cy.log(data);
      Object.entries(data).forEach(([key, value]) => {
        Cypress.env(key, value);
        // cy.log(`Set Cypress.env(${key}, ${value})`);
      });
      const personalType = Cypress.env('personalType');
      const owneridcard = Cypress.env('ownerIdCard');
      const fullName = Cypress.env('fullName');
      const fraudLevel = Cypress.env('fraudLevel');
      const refCode = Cypress.env('refCode');
      const currentDateTime = Cypress.env('currentDateTime');
      WebsearchPage.Trasition_Account_Type_Display(personalType)
      WebsearchPage.Trasition_OwnerID_Display(owneridcard)
      WebsearchPage.Trasition_fullName_Display(fullName)
      WebsearchPage.Trasition_fraudLevel_Display(fraudLevel)
      WebsearchPage.Trasition_refCode_Display(refCode)
      WebsearchPage.Trasition_currentDateTime_Display(currentDateTime)
    });
    })
Then('get data mule historical', () => {
  const personalId = Cypress.env("personalId");
  Databasequery.prepareDataJSON_Search_mule(personalId).then(() => {
    const jsonfileall = Cypress.env("search_mule");
    const jsonfile = Cypress.env("search_mule_profile");
    cy.log(jsonfileall);
  });  
  })
Then('should be display mule web search preview page of {string} with valid description', scenario =>{
  WebsearchPage.displayLableWebSearch()
  WebsearchPage.displayLableTrasition_Web_Search()
  WebsearchPage.displayLableTrasition_Mule_Level_History()
  // WebsearchPage.displayLableTrasition_Mule_History()
  // WebsearchPage.displayLableTrasition_Mule_History()
})
Then('should be display Brown mule page of {string} with valid all detail', scenario =>{
  const brownid = Cypress.env("brownid");
  Databasequery.preparaJSON_Detail_Brown_Mule(brownid).then(()=> {
  const detail_brown  =  Cypress.env("detail_brownmule")
  // cy.log(detail_brown)
  // cy.log(JSON.stringify(detail_brown))
  WebsearchPage.displayLableAndValidateData_Detail_Brownmule(detail_brown)
  WebsearchPage.displayLableAndValidateData_DetailAccount_Brownmule(detail_brown)
  WebsearchPage.displayLableAndValidateData_Managements_Brownmule(detail_brown)
  WebsearchPage.displayLable_DetailBank_Brownmule(detail_brown)
  WebsearchPage.ClickBack()
  })
})
Then('should be display Brown mule page of {string} with valid all detail check all transition', scenario =>{
  const brownIds = Cypress.env("brownIds");
  cy.log(brownIds)
  // filter null or underfined เอาออก
  const filteredBrownIds = brownIds.filter(brownId => brownId !== null && brownId !== undefined)
  // cy.log(filteredBrownIds)
  filteredBrownIds.forEach((brownId,index) => {
    cy.log(`Processing Brown ID: ${brownId}`);
    Databasequery.preparaJSON_Detail_Brown_Mule(brownId).then(() => {
      const detailBrownMule = Cypress.env("detail_brownmule");
      cy.log(JSON.stringify(detailBrownMule))
      cy.get('[data-testid="VisibilityIcon"]').eq(index).scrollIntoView().click()
      WebsearchPage.displayLableAndValidateData_Detail_Brownmule(detailBrownMule);
      WebsearchPage.displayLableAndValidateData_DetailAccount_Brownmule(detailBrownMule);
      WebsearchPage.displayLableAndValidateData_Managements_Brownmule(detailBrownMule);
      WebsearchPage.displayLable_DetailBank_Brownmule(detailBrownMule);
      WebsearchPage.ClickBack();
    });
  });
  })
Then('should be display Brown mule page of {string} with valid Detail Brown mule', scenario =>{
  const brownid = Cypress.env("brownid");
  Databasequery.preparaJSON_Detail_Brown_Mule(brownid).then(()=> {
  const detail_brown  =  Cypress.env("detail_brownmule")
  WebsearchPage.displayLableAndValidateData_Detail_Brownmule(detail_brown)
  })
})
Then('should be display Brown mule page of {string} with valid Detail Account Brownmule', scenario =>{
  const brownid = Cypress.env("brownid");
  Databasequery.preparaJSON_Detail_Brown_Mule(brownid).then(()=> {
  const detail_brown  =  Cypress.env("detail_brownmule")
  WebsearchPage.displayLableAndValidateData_DetailAccount_Brownmule(detail_brown)
  })
})
Then('should be display Brown mule page of {string} with valid Detail Managements Brown mule', scenario =>{
  const brownid = Cypress.env("brownid");
  Databasequery.preparaJSON_Detail_Brown_Mule(brownid).then(()=> {
  const detail_brown  =  Cypress.env("detail_brownmule")
  WebsearchPage.displayLableAndValidateData_Managements_Brownmule(detail_brown)
  })
})
Then('should be display Brown mule page of {string} with valid Detail Detail Bank Brown mule', scenario =>{
  const brownid = Cypress.env("brownid");
  Databasequery.preparaJSON_Detail_Brown_Mule(brownid).then(()=> {
  const detail_brown  =  Cypress.env("detail_brownmule")
  WebsearchPage.displayLable_DetailBank_Brownmule(detail_brown)
  })
})
Then('should be display web seach error message is {string}',errMsg =>{
  if (errMsg == "web_seach_error_system_not_found") {
      cy.fixture('error_message').then(error_message =>{
          WebsearchPage.Websearch_displayErrorMessage(error_message.web_seach_error_system_not_found)
      }) 
    }
    else if (errMsg == "web_seach_error_not_found") {
      cy.fixture('error_message').then(error_message =>{
          WebsearchPage.Websearch_displayErrorMessage(error_message.web_seach_error_not_found)
      })
    } 

  })


Given('Query All Input data BankcaseID', () => {
  const query = QueryPage.Query_Mule_Check_Brown();
  Databasequery.processResultsBrownMule(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId
    const firstName = decryptedResults[0].firstName
    const lastName = decryptedResults[0].lastName
    const accountNumber = decryptedResults[0].accountNumber
    const brownMuleStatus = decryptedResults[0].brownMuleStatus
    Cypress.env("personalId", decryptedResults[0].personalId);
    cy.wrap('9999999999991').should('eq',(personalId))
    cy.wrap(firstName).should('eq', 'QA')
    cy.wrap(lastName).should('eq', 'TESTER')
    cy.wrap(accountNumber).should('eq', '99999932131')
    cy.wrap(brownMuleStatus).should('eq', 'ACTIVE')
  });
});
Given('Input Data Brown Mule_identity_id is {string}', (iden) => {
    const personalId = iden
    Cypress.env("personalId", iden);
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
});
Then('should be display transition_search is {string}', (str) => {
    cy.get('table.MuiTable-root').eq(2).within(() => {
      cy.contains(''+str+'')
    });
    });
Given('Query {string} Seacrhing with personalID is {string} or Refcode is {string} and Condition Mule is {string} and Note Data {string} another query is {string} in rule {string}', (number,per,ref,condi_mule,note,a_query,rule) => {
  // condition else have value condi_mule and note
  // condition ref has value only u r use function : get data in validate result mule_profile_3
  if (per && ref) {
    cy.log('Right - Both personalID and refcode have values')
    const personalId = per
    const Refcode = ref
    Cypress.env("personalId",personalId)
    Cypress.env("refCode",Refcode)
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.fillInSenderRefCode(Refcode)
    WebsearchPage.ClickSearch()
  } else if (per && !ref) {
    cy.log('Right - personalID has value, refcode is empty') 
    const personalId = per
    Cypress.env("personalId",personalId)
    UpdatePage.fillInSenderPersonNo(personalId)
    WebsearchPage.ClickSearch()
  } else if (!per && ref) {
    cy.log('Right - refcode has value, personalID is empty')
    const Refcode = ref
    Cypress.env("refCode",Refcode)
    WebsearchPage.fillInSenderRefCode(Refcode)
    WebsearchPage.ClickSearch()
  } else {
    cy.log('Not right - Both personalID and refcode are empty i needed query')
    if (a_query == 'Query_Withdraw_Black_Mule') {
      const query = QueryPage.Query_Withdraw_Black_Mule(number, condi_mule, note);
      Cypress.env("query", query);
  } else if (a_query == 'Query_Withdraw_Black_Mule_Rule') {
      const query = QueryPage.Query_Withdraw_Black_Mule_Rule(number, condi_mule, note,rule);
      Cypress.env("query", query);
  } else if (a_query == 'Query_Withdraw_Black_Mule_have_Brown_Mule') {
      const query = QueryPage.Query_Withdraw_Black_Mule_have_Brown_Mule(number, condi_mule, note,rule);
      Cypress.env("query", query);
  } else if (a_query == 'Query_Withdraw_Black_Mule_have_Exchange') {
      const query = QueryPage.Query_Withdraw_Black_Mule_have_Exchange(number, condi_mule, note,rule);
      Cypress.env("query", query);
  } else {
      cy.log('no keyword match');
  }
   const query = Cypress.env("query")
    cy.task('queryOracleDatabase', { query }).then((result) => {
      const allDecryptedRows = [];
      // const CardID = result[0][0]
      // const RefCode = result[0][1]
      Cypress.env("queryresult", result);
  
      result.forEach((row, i) => {
        const [CARD_ID, REFCODE] = row;
        cy.log(`Row ${i}: CARD_ID = ${CARD_ID}, REFCODE = ${REFCODE}`);
        Databasequery.SetprocessDecrypted(CARD_ID).then((decryptedRow) => {
          const personalId = decryptedRow.cardID;
          Cypress.env("personalId",personalId)
          const row_decrypted = [personalId];
          Cypress.env("queryall", row_decrypted);
          allDecryptedRows.push(row_decrypted);
          cy.log(`after decrypt all = ${row_decrypted}`);
          UpdatePage.fillInSenderPersonNo(personalId)
          WebsearchPage.ClickSearch()
        });
        Cypress.env("query_for_valid", allDecryptedRows)
      });
    })  
  }
});

Given('Delete DB BankCaseID {string}', (id) => {
  const query_master_sub = QueryPage.Query_Delete_BankCaseID_Master_Sub(id)
  const query_master_status = QueryPage.Query_Delete_BankCaseID_Master_Ststus(id)
  const query_fraud = QueryPage.Query_Delete_BankCaseID(id)
  cy.task('queryOracleDatabase', { query: query_master_sub }).then(() => {
    cy.task('queryOracleDatabase', { query: query_master_status }).then(() => {
      cy.task('queryOracleDatabase', { query: query_fraud }).then(() => {
        cy.log(`Delete BankCaseID ${id} successfully`);
      });
    });
  });
}); 
Given('PreParaData Personal_ID is {string}', (personal) => {
  const personalId = Cypress.env("personal",personal);
  cy.log(personalId)
});
Given('decry and query db verify', () => {
  const personal_Id = Cypress.env("personal");
  cy.log("Personal ID:", personal_Id);
  Databasequery.encry(personal_Id).then((decrypt) => {
    Cypress.env("decrypt", decrypt);
  });
});
Given('Query and validate for {string}', (fileName) => {
  const decrypt = Cypress.env("decrypt");
  cy.log(decrypt);
  
  // Query ข้อมูลจาก database
  const query = QueryPage.Query_DB_Brow_REPO(decrypt);
  Databasequery.processResultsBrownMule(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].personalId;
    const firstName = decryptedResults[0].firstName;
    const lastName = decryptedResults[0].lastName;
    const accountNumber = decryptedResults[0].accountNumber;
    const brownMuleStatus = decryptedResults[0].brownMuleStatus;

    // เก็บค่าใน environment variable
    Cypress.env("personalId", personalId);
    
    // แสดงค่าใน log
    cy.log(personalId);
    cy.log(firstName);
    cy.log(lastName);
    cy.log(accountNumber);
    cy.log(brownMuleStatus);

    // โหลดข้อมูล JSON ที่เก็บไว้ในไฟล์ที่ใช้ชื่อจาก parameter
    cy.fixture(fileName).then((jsonData) => {
      // เปรียบเทียบค่าที่ query มา
      expect(personalId).to.equal(jsonData.personal_Id);
      expect(firstName).to.equal(jsonData.name_o);
      expect(lastName).to.equal(jsonData.last_name_o);
      expect(accountNumber).to.equal(jsonData.account_number);
    });
  });
});

describe('Copy File Test', () => {
  Given('should copy xlsx file from source to destination', () => {
    const sourcePath = './cypress/downloads/Brown_mule.xlsx'
    const destPath = './cypress/downloads/Brown_mule_modi.xlsx'

    cy.task('copyFile', { sourcePath, destPath }).then(() => {
      // ตรวจสอบว่าไฟล์ถูกคัดลอกไปยังปลายทางแล้ว
      cy.readFile(destPath).should('exist')
    })
  })
})

Given('Query get id upload info', () => {
  const filename = Cypress.env("fileName");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Upload_INFO(filename);
  cy.wait(2000)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  cy.wait(2000)
  });
});
Given('Query get id upload detail', () => {
  const idinfo = Cypress.env("IDuploadINFO");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Upload_Detail(idinfo);
  cy.wait(2000)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadDetail",result)
  cy.wait(2000)
  });
});
Given('Query check upload REPO and validate test data {string}', (fileName) => {
  const iddetail = Cypress.env("IDuploadDetail");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Upload_REPO(iddetail);
  Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].JURISTIC_ID;
    const firstName = decryptedResults[0].NAME;
    const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
    cy.log(personalId);
    cy.log(firstName);
    cy.log(accountNumber);
    cy.fixture(fileName).then((testdata) => {
      expect(personalId).to.equal(testdata.personalId);
      expect(firstName).to.equal(testdata.name);
      expect(accountNumber).to.equal(testdata.account_number);
    });
  });
});
Given('Query Deleted upload info', () => {
  const filename = Cypress.env("updatedFileName");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO(filename);
  cy.wait(2000)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
});
Given('Query Deleted upload detail', () => {
  const idinfo = Cypress.env("IDuploadINFO");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_Detail(idinfo);
  cy.wait(2000)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
});
Given('Query Deleted upload REPO', () => {
  const iddetail = Cypress.env("IDuploadDetail");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_REPO(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
});
Given('PreparaData For Search Exchange', () => {
  const query = QueryPage.Query_Prepara_Exchange_Account_For_Active()
  Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].JURISTIC_ID;
    const firstName = decryptedResults[0].NAME;
    const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
    Cypress.env("personalId", decryptedResults[0].JURISTIC_ID);
    Cypress.env("firstName", decryptedResults[0].NAME);
    Cypress.env("accountNumber", decryptedResults[0].ACCOUNT_NUMBER);
    cy.log(personalId);
    cy.log(firstName);
    cy.log(accountNumber);
  });
});
Given('PreparaData For Search Exchange For Bankcode is {string}', (bankcode) => {
  const query = QueryPage.Query_Prepara_Exchange_Account_For_Active_Bankcode(bankcode)
  Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].JURISTIC_ID;
    const firstName = decryptedResults[0].NAME;
    const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
    Cypress.env("personalId", decryptedResults[0].JURISTIC_ID);
    Cypress.env("firstName", decryptedResults[0].NAME);
    Cypress.env("accountNumber", decryptedResults[0].ACCOUNT_NUMBER);
    cy.log(personalId);
    cy.log(firstName);
    cy.log(accountNumber);
  });
});
Given('Query And CheckDB Validate Exchange Account Registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail();
  }).then(() => {
    return Databasequery.QueryExchangeREPO(fileName);
  });
});
Given('Query get id for deleted' , ()=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail();
  })
});
Given('Query get id for deleted row 2' , ()=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail();
  })
});
Given('Query And CheckDB Validate Exchange Account Registry {string} For {string} is null' , (fileName,testcase)=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail();
  }).then(() => {
    return Databasequery.QueryExchangeREPO_For_PersonalID(fileName,testcase);
  });
});
Given('Query And CheckDB Validate Exchange Account Registry V2 {string}' , (fileName)=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail();
  }).then(() => {
    return Databasequery.QueryExchangeREPO_All(fileName);
  });
});
Given('Deleted Query All' , ()=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.DeletedDB_upload_INFO();
  }).then(() => {
    return Databasequery.DeletedDB_upload_Detail();
  }).then(() => {
    return Databasequery.DeletedDB_upload_REPO();
  })
});
Given('Deleted Query All For Loop Exchange acct registry' , ()=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.DeletedDB_upload_INFO();
  }).then(() => {
    return Databasequery.DeletedDB_upload_Detail();
  }).then(() => {
    return Databasequery.DeletedDB_upload_REPO_V1();
  })
});
Given('Query CheckDB Cancel Validate Exchange Account Registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail(fileName);
  })
});

Given('Deleted file upload crypto file new and file cancel', () => {
  const updatedFile = Cypress.env("updatedFile") || [];
  const updatedFileName = Cypress.env("updatedFileName");
  
  cy.log("Uploaded files before deletion: ", updatedFile);
  cy.log("📂 Latest uploaded file: ", updatedFileName);

  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.DeletedDB_upload_INFO();
  }).then(() => {
    return Databasequery.DeletedDB_upload_Detail();
  }).then(() => {

    cy.log("📂 Proceeding to delete second file...");
    
    Databasequery.getIDuploadINFOExchangeAccount_new().then(() => {
      return Databasequery.DeletedDB_upload_INFOExchangeAccount_new();
    }).then(() => {
      return Databasequery.DeletedDB_upload_DetailExchangeAccount_new();
    }).then(() => {
      return Databasequery.DeletedDB_upload_REPODetailExchangeAccount_new();
    });
  });
});

Given('Deleted file upload crypto file new and file cancel 100 record', () => {
  const updatedFile = Cypress.env("updatedFile") || [];
  const updatedFileName = Cypress.env("updatedFileName");
  
  cy.log("Uploaded files before deletion: ", updatedFile);
  cy.log("📂 Latest uploaded file: ", updatedFileName);

  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.DeletedDB_upload_INFO();
  }).then(() => {
    return Databasequery.DeletedDB_upload_Detail();
  }).then(() => {

    cy.log("📂 Proceeding to delete second file...");
    
    Databasequery.getIDuploadINFOExchangeAccount_new().then(() => {
      return Databasequery.DeletedDB_upload_INFOExchangeAccount_new_100_record();
    }).then(() => {
      return Databasequery.DeletedDB_upload_DetailExchangeAccount_new();
    }).then(() => {
      return Databasequery.DeletedDB_upload_REPODetailExchangeAccount_new();
    });
  });
});

Given('Deleted Query file Cancel' , ()=>{
  const uploadedFiles = Cypress.env("uploadedFiles"); 
  cy.log(`📂 Uploaded files: ${JSON.stringify(uploadedFiles)}`);
  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return Databasequery.DeletedDB_upload_Detail_Darkbrownmuleregistry_Cancel();
  }).then(() => {
    return Databasequery.DeletedDB_upload_INFO_Darkbrownmuleregistry_Cancel();
  })
});

Given('Query checkDB cancel calidate brown mule registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return Databasequery.getIDuploadDetailDarkbrownmuleregistry(fileName);
  })
});

Given('Query filename checkDB cancel calidate brown mule registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFOFilenameDarkbrownmuleregistry().then(() => {
  });
});


Given('Query checkDB validate add file dark brown mule registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFODarkbrownmuleregistrynew().then(() => {
    return Databasequery.getIDuploadDetailDarkbrownmuleregistry();
  }).then(() => {
    return Databasequery.QueryExchangeREPOlDarkbrownmuleregistry(fileName);
  });
});
Given('Query and checkDB validate dark brown mule registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return Databasequery.getIDuploadDetailDarkbrownmuleregistry();
  }).then(() => {
    return Databasequery.QueryExchangeREPOlDarkbrownmuleregistry(fileName);
  });
});

Given('Deleted query db file new and file cancel', () => {
  const updatedFile = Cypress.env("updatedFile") || [];
  const updatedFileName = Cypress.env("updatedFileName");
  
  cy.log("Uploaded files before deletion: ", updatedFile);
  cy.log("📂 Latest uploaded file: ", updatedFileName);

  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return Databasequery.DeletedDB_upload_Detail_Darkbrownmuleregistry_Cancel();
  }).then(() => {
    return Databasequery.DeletedDB_upload_INFO_Darkbrownmuleregistry_Cancel();
  }).then(() => {

    cy.log("📂 Proceeding to delete second file...");
    
    Databasequery.getIDuploadINFODarkbrownmuleregistrynew().then(() => {
      return Databasequery.DeletedDB_upload_REP_Darkbrownmuleregistry_new();
    }).then(() => {
      return Databasequery.DeletedDB_upload_Detail_Darkbrownmuleregistry_new();
    }).then(() => {
      return Databasequery.DeletedDB_upload_INFO_Darkbrownmuleregistry_new();
    });
  });
});

Given('Query checkDB validate add file dark exchange account registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFOexchangeaccountregistry_new().then(() => {
    return Databasequery.getIDuploadexchangeaccountregistry_new();
  }).then(() => {
    return Databasequery.QueryExchangeREPOlxchangeaccountregistry_new(fileName);
  });
});

Given('Query checkDB validate add file dark exchange account registry test {string}' , (fileName)=>{
  Databasequery.getIDuploadINFOexchangeaccountregistry_new().then(() => {
    return Databasequery.getIDuploadexchangeaccountregistry_new();
  }).then(() => {
    return Databasequery.QueryExchangeREPOlxchangeaccountregistry_ForLoop_new(fileName);
  });
});

Given('Query checkDB validate add file dark exchange account registry cancel {string}' , (fileName)=>{
  Databasequery.getIDuploadINFOexchangeaccountregistry_cancel().then(() => {
    return Databasequery.getIDuploadexchangeaccountregistry_new();
  }).then(() => {
    return Databasequery.QueryExchangeREPOlxchangeaccountregistry_ForLoop_new(fileName);
  });
});