import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import  { WebsearchPage }  from './websearchPage'
import  { DarkBrownmule }  from './Dark_brown_Search_Page'
import  { Databasequery }  from './DatabaseQuery'
import { QueryPage } from "./Querypage";
import  { BrownmuleEP3 }  from './brownEP3_Upload_Page'




Then('should be display dark brown mule transition_search is {string}', (str) => {
    cy.get('table.MuiTable-root').eq(2).within(() => {
      cy.contains(''+str+'')
    });
    });
    Then('get data in validate result dark bronw mule_history for check all transition icon', () => {
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
      Then('get data in validate result dark bronw mule_history for check all transition icon V1', () => {
        const personalId = Cypress.env("personalId");
        Databasequery.prepareDataJSON_Search_mule(personalId).then(() => {
            const jsonhis = Cypress.env("search_mule_history");
            const data = JSON.parse(jsonhis);
            const brownIds = [];
    
            for (let index = 0; index < data.muleHistorySearchResult.length; index++) {
                const item = data.muleHistorySearchResult[index];
    
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
                    cy.get('.css-155dfca').eq(index);
                });    
                brownIds.push(item.brownMuleId);
            }
    
            Cypress.env("brownIds", brownIds);
        });
    });
      Then('should be display Dark Brown mule page of {string} with valid all detail check all transition', scenario =>{
        const brownIds = Cypress.env("brownIds");
        cy.log(brownIds)
        // filter null or underfined เอาออก
        const filteredBrownIds = brownIds.filter(brownId => brownId !== null && brownId !== undefined)
        // cy.log(filteredBrownIds)
        filteredBrownIds.forEach((brownId,index) => {
          cy.log(`Processing Brown ID: ${brownId}`);
        DarkBrownmule.preparaDataJSON_Detail_Dark_Brown_Mule(brownId).then(() => {
            const detailBrownMule = Cypress.env("detail_brownmule");
            cy.log(JSON.stringify(detailBrownMule))
            cy.get('[data-testid="VisibilityIcon"]').eq(index).scrollIntoView().click()
            WebsearchPage.displayLableAndValidateData_Detail_Brownmule(detailBrownMule);
            WebsearchPage.displayLableAndValidateData_Detail_Brownmule(detailBrownMule);
            WebsearchPage.displayLableAndValidateData_Detail_Brownmule(detailBrownMule);
            WebsearchPage.displayLableAndValidateData_DetailAccount_Brownmule(detailBrownMule);
            DarkBrownmule.displayLableAndValidateData_Managements_Dark_Brownmule(detailBrownMule);
            DarkBrownmule.displayLable_DetailBank_Dark_Brownmule(detailBrownMule);
            WebsearchPage.ClickBack();
          });
});
});

Then('should be display Dark Brown mule page of {string} with valid all detail check all transition for alot', scenario => {
  const brownIds = Cypress.env("brownIds");
  cy.log(brownIds);
  const filteredBrownIds = brownIds.filter(brownId => brownId !== null && brownId !== undefined);
  for (let index = 0; index < filteredBrownIds.length; index++) {
      const brownId = filteredBrownIds[index];
      cy.log(`Processing Brown ID: ${brownId}`);
      DarkBrownmule.preparaDataJSON_Detail_Dark_Brown_Mule(brownId).then(() => {
          const detailBrownMule = Cypress.env("detail_brownmule");
          cy.log(JSON.stringify(detailBrownMule));
          cy.get('[data-testid="VisibilityIcon"]').eq(index).scrollIntoView().click();
          DarkBrownmule.displayLableAndValidateData_Detail_Dark_Brownmule(detailBrownMule);
          DarkBrownmule.displayLableAndValidateData_DetailAccount_Dark_Brownmule(detailBrownMule);
          DarkBrownmule.displayLableAndValidateData_Managements_Dark_Brownmule(detailBrownMule);
          DarkBrownmule.displayLable_DetailBank_Dark_Brownmule(detailBrownMule);
          DarkBrownmule.displayLable_DetailBank_Dark_Brownmule(detailBrownMule);
          WebsearchPage.ClickBack();
      });
  }
});
