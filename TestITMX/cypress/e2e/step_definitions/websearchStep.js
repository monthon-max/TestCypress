import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import UpdatePage from './updatePage'
import  { WebsearchPage }  from './websearchPage'
import  { Databasequery }  from './DatabaseQuery'
import { QueryPage } from "./Querypage";


Given('Search Data',()=>{
    const personal_Id = Cypress.env("personalId")
    const firstName = Cypress.env("firstName")
    const accountNumber = Cypress.env("accountNumber")
    WebsearchPage.ClickSearch()
  })
Given('Search Data is {string}',(data)=>{
  UpdatePage.fillInSenderPersonNo(data)
    WebsearchPage.ClickSearch()
  })
  Given('should be visible search data one Field',()=>{
    cy.contains('กรุณากรอกอย่างน้อย 1 ฟิลด์').should('be.visible')
  })
  Given('Search Bank_Name is {string} is {string} Data And validate result',(bankname,bankcode)=>{
    WebsearchPage.fillInSenderBank_Name_V2(bankname)
    let jsonfile = JSON.stringify({
      bankCode: bankcode,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })
  
  Given('Search Data Personal_ID And get validate result',()=>{
    const personal_Id = Cypress.env("personalId")
    UpdatePage.fillInSenderPersonNo(personal_Id)
    let jsonfile = JSON.stringify({
      juristicId: personal_Id,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })

  Given('Search Data AccountNumber And get validate result',()=>{
    const accountNumber = Cypress.env("accountNumber")
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    let jsonfile = JSON.stringify({
      accountNumber: accountNumber,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })

  Given('Search Data FristName And get validate result',()=>{
    const firstName = Cypress.env("firstName")
    WebsearchPage.fillInSenderName(firstName)
    let jsonfile = JSON.stringify({
      accountName: firstName,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })

  Given('Search Data Personal_ID + BankName is {string} is {string} And get validate result',(bankname,bankcode)=>{
    const personal_Id = Cypress.env("personalId")
    UpdatePage.fillInSenderPersonNo(personal_Id)
    WebsearchPage.fillInSenderBank_Name_V2(bankname)
    let jsonfile = JSON.stringify({
      juristicId: personal_Id,
      bankCode: bankcode,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })
  Given('Search Data Personal_ID + AccountNumber + BankName is {string} is {string} And get validate result',(bankname,bankcode)=>{
    const personal_Id = Cypress.env("personalId")
    const accountNumber = Cypress.env("accountNumber")
    UpdatePage.fillInSenderPersonNo(personal_Id)
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.fillInSenderBank_Name_V2(bankname)
    let jsonfile = JSON.stringify({
      juristicId: personal_Id,
      accountNumber: accountNumber,
      bankCode: bankcode,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })
  Given('Search Data Personal_ID + FristName + AccountNumber + BankName is {string} is {string} And get validate result',(bankname,bankcode)=>{
    const personal_Id = Cypress.env("personalId")
    const accountNumber = Cypress.env("accountNumber")
    const firstName = Cypress.env("firstName")
    UpdatePage.fillInSenderPersonNo(personal_Id)
    WebsearchPage.fillInSenderName(firstName)
    WebsearchPage.fillInSenderAccount_number(accountNumber)
    WebsearchPage.fillInSenderBank_Name_V2(bankname)
    let jsonfile = JSON.stringify({
      juristicId: personal_Id,
      accountName: firstName,
      accountNumber: accountNumber,
      bankCode: bankcode,
    });
    Cypress.env("jsonfile_exchange",jsonfile)
    WebsearchPage.ClickSearch()
    Databasequery.prepareDataJSON_Search_Exchange_Account().then(() => { 
      const jsontran = Cypress.env("search_exchange_accounts");
      cy.log(jsontran)
      const data = JSON.parse(jsontran);
      // cy.log(data)
      data.resultList.forEach((item, index) => {
      cy.get('table.MuiTable-root').eq(0).within(() => {
        cy.log(`Transition ${index + 1}:`);
        cy.get('.css-w61z10').eq(index).should('have.text',item.juristicId);
        cy.get('.css-110vrq7').eq(index).should('have.text',item.bankShortName);
        cy.get('.css-vsjrsc').eq(index).should('have.text',item.accountNumber);
        cy.get('.css-1evxd7r').eq(index).should('have.text',item.accountName);
        cy.get('.css-1m5lpni').eq(index).should('have.text',item.status);
        cy.get('.css-ry8jbm').eq(index).should('have.text',item.createDate);
      });
      });
    });
  })