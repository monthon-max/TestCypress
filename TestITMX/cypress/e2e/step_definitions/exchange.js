import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import  { WebsearchPage }  from './websearchPage'
import  { DarkBrownmule }  from './Dark_brown_Search_Page'
import  { Databasequery }  from './DatabaseQuery'
import { QueryPage } from "./Querypage";
import  { BrownmuleEP3 }  from './brownEP3_Upload_Page'




Then('Request Preview Search exchange accounts is page to validate {string}', (number) => {
    Exchange.ClickRowperPage(number)
    Exchange.SearchExchangeAccount(number)
    });
Given('Deleted Query All Row 2' , ()=>{
      Databasequery.getIDuploadINFO_ROW2().then(() => {
        return Databasequery.getIDuploadDetail();
      })
    });

export class Exchange {
    
    static ClickRowperPage() {
        cy.wait(2000);
        cy.get('div[role="button"][aria-haspopup="listbox"]').eq(0).scrollIntoView().click();
        cy.get('p.MuiTablePagination-displayedRows.css-2s7mfa')
          .eq(0)
          .invoke('text')
          .then((text) => {
            cy.log(text);
            const totalItems = parseInt(text.match(/of (\d+)/)[1], 10);
            cy.log(`Total items: ${totalItems}`);
            if (totalItems >= 11 && totalItems <= 25) {
              cy.contains('li', '25').click();
            } else if (totalItems >= 26 && totalItems <= 50) {
              cy.contains('li', '50').click();
            } else if (totalItems >= 51 && totalItems <= 100 ) {
              cy.contains('li', '100').click();
            } else if (totalItems >= 101 ) {
              cy.contains('li', '100').click();
            } else {
              cy.log('No action required for this range');
            }
          });
      }
    static prepareDataJSON_Search_exchange_account(page) {
        const promisedata = [];
        const jsonfileData = JSON.stringify({
            
                "juristicId": null,
                "bankCode": "",
                "accountNumber": null,
                "accountName": null,
                "paging": {
                    "offset": 0,
                    "totalRecords": 0,
                    "maxRecordPerPage": page
                }
            
        });
        cy.log(jsonfileData)
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-exchange-account/search-exchange-accounts",
          body: jsonfileData,
          headers: {
            "Content-Type": "application/json",
            "X-Roles": "xxx",
            "X-User-Id": "xxx",
            "X-Institution-Id": "002xxx",
          },
          timeout: 20000,
        }).then((response) => {
          expect(response.status).to.eq(200);   
            return Promise.all(promisedata).then(() => {
              // cy.log(JSON.stringify(response.body))
              // Cypress.env("search_exchange_account", JSON.stringify(response.body));
              cy.log(JSON.stringify(response.body.resultList))
            Cypress.env("search_exchange_account", JSON.stringify(response.body.resultList));
            // Cypress.env("search_exchange_account", response.body.resultList);
            return response.body;
          });
        });
      }
      static SearchExchangeAccount(number) {
        cy.wait(3000)
        Exchange.prepareDataJSON_Search_exchange_account(number).then(() => { 
          const exchange_acc = Cypress.env("search_exchange_account");
          let data;
          data = JSON.parse(exchange_acc);
          cy.get('table.MuiTable-root', { timeout: 50000 }).should('be.visible');
          data.forEach((item, i) => {
            cy.get('table.MuiTable-root').eq(0).within(() => {
              cy.get('.css-w61z10',{timeout:50000}).eq(`${i}`).should('have.text', item.juristicId);
              cy.get('.css-110vrq7',{timeout:50000}).eq(`${i}`).should('have.text', item.bankShortName);
              cy.get('.css-vsjrsc',{timeout:50000}).eq(`${i}`).should('have.text', item.accountNumber);
              cy.get('.css-1evxd7r',{timeout:50000}).eq(`${i}`).should('have.text', item.accountName);
              cy.get('.css-1m5lpni',{timeout:50000}).eq(`${i}`).should('have.text', item.status);
              cy.get('.css-ry8jbm',{timeout:50000}).eq(`${i}`).should('have.text', item.createDate);
          });
          });
        });
      }
      
      
  
  
}