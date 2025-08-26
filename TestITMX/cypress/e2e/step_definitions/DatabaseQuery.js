import { QueryPage } from "./Querypage";
import { WebsearchPage } from "./websearchPage";

export class Databasequery {
  
  static processDecryptedResults(query) {
    return cy.task('queryOracleDatabase', { query }).then((result) => {
      Cypress.env("queryresult", result);
      if (!result || result.length === 0) {
        throw new Error('Query returned no results.');
      }
  
      const decryptedResults = [];
      const decryptionPromises = result.map((row) => {
        const [personalId, accountNumber, refCode, , firstName, lastName] = row;
        const decryptedRow = {};
  
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: personalId,
          headers: { "Content-Type": "text/plain" },
        }).then((personalIdResponse) => {
          decryptedRow.personalId = personalIdResponse.body;
          return cy.request({
            method: "POST",
            url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
            body: accountNumber,
            headers: { "Content-Type": "text/plain" },
          });
        }).then((accountNumberResponse) => {
          decryptedRow.accountNumber = accountNumberResponse.body;
          return cy.request({
            method: "POST",
            url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
            body: firstName,
            headers: { "Content-Type": "text/plain" },
          });
        }).then((firstNameResponse) => {
          decryptedRow.firstName = firstNameResponse.body;
          return cy.request({
            method: "POST",
            url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
            body: lastName,
            headers: { "Content-Type": "text/plain" },
          });
        }).then((lastNameResponse) => {
          decryptedRow.lastName = lastNameResponse.body;
          decryptedResults.push({
            ...decryptedRow,
            refCode,
          });
        });
      });
  
      return Promise.all(decryptionPromises).then(() => {
        Cypress.env("decryptedResults", decryptedResults);
        cy.log("Decrypted Results:", decryptedResults);
        return decryptedResults;
      });
    });
  }
  static processDecryptedResults_3_field(query) {
    return cy.task('queryOracleDatabase', { query }).then((result) => {
        Cypress.env("queryresult", result);
        if (!result || result.length === 0) {
            throw new Error('Query returned no results.');
        }

        const decryptedResults = [];
        const decryptionPromises = result.map((row) => {
            const [personalId, firstName, lastName] = row;
            const decryptedRow = {};
        // cy.log(personalId)

            return cy.request({
                method: "POST",
                url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
                body: personalId,
                headers: { "Content-Type": "text/plain" },
            }).then((personalIdResponse) => {
                decryptedRow.personalId = personalIdResponse.body;
                return cy.request({
                    method: "POST",
                    url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
                    body: firstName,
                    headers: { "Content-Type": "text/plain" },
                });
            }).then((firstNameResponse) => {
                decryptedRow.firstName = firstNameResponse.body;
                return cy.request({
                    method: "POST",
                    url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
                    body: lastName,
                    headers: { "Content-Type": "text/plain" },
                });
            }).then((lastNameResponse) => {
                decryptedRow.lastName = lastNameResponse.body;
                decryptedResults.push(decryptedRow);
            });
        });

        return Promise.all(decryptionPromises).then(() => {
            Cypress.env("decryptedResults", decryptedResults);
            cy.log("Decrypted Results:", decryptedResults);
      return decryptedResults;
        });
    });
}
static processDecryptedResults_V2(query) {
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env("queryresult", result);
    if (!result || result.length === 0) {
      throw new Error('Query returned no results.');
    }

    const decryptedResults = [];
    const decryptionPromises = result.map((row) => {
      const [personalId, accountNumber, refCode, , firstName, lastName] = row;
      const decryptedRow = {};
      // cy.log(personalId)
      // cy.log(accountNumber)
      // cy.log(firstName)

      // Helper function to handle decryption
      const decryptField = (field, fieldName) => {
        if (!field) {
          cy.log(`${fieldName} is null or undefined, skipping...`);
          return Promise.resolve(null);
        }
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: field,
          headers: { "Content-Type": "text/plain" },
        }).then((response) => response.body);
      };

      return decryptField(personalId, "Personal ID").then((personalIdResponse) => {
        decryptedRow.personalId = personalIdResponse;
        return decryptField(accountNumber, "Account Number");
      }).then((accountNumberResponse) => {
        decryptedRow.accountNumber = accountNumberResponse;
        return decryptField(firstName, "First Name");
      }).then((firstNameResponse) => {
        decryptedRow.firstName = firstNameResponse;
        return decryptField(lastName, "Last Name");
      }).then((lastNameResponse) => {
        decryptedRow.lastName = lastNameResponse;
        decryptedResults.push({
          ...decryptedRow,
          refCode,
        });
      });
    });

    return Promise.all(decryptionPromises).then(() => {
      Cypress.env("decryptedResults", decryptedResults);
      cy.log("Decrypted Results:", decryptedResults);
      return decryptedResults;
    });
  });
}
static preparaDataJSON_Detail_Brown_Mule(brownid) {
  const jsonfilebrown = JSON.stringify({
    brownMuleId: brownid,
  });

  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/fraud-brown-mule/view-brown-mule-detail",
    body: jsonfilebrown,
    headers: {
      "Content-Type": "application/json",
      "X-Roles": "xxx",
      "X-User-Id": "xxx",
      "X-Institution-Id": "002xxx",
    },
  }).then((response) => {
    expect(response.status).to.eq(200);
    Cypress.env("detail_brownmule", response.body);
    return response.body;
  });
}
  static prepareDataJSON_Search_mule(personalId) {
    const promisedata = [];
    const jsonfileData = JSON.stringify({
      ownerIdCard: personalId,
    });
  
    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
      body: jsonfileData,
      headers: {
        "Content-Type": "application/json",
        "X-Roles": "xxx",
        "X-User-Id": "xxx",
        "X-Institution-Id": "002xxx",
      },
    }).then((response) => {
      expect(response.status).to.eq(200);
      // cy.log(JSON.stringify(response.body.muleProfileResult));
      // cy.log(JSON.stringify(response.body));      
        return Promise.all(promisedata).then(() => {
        Cypress.env("search_mule", JSON.stringify(response.body));
        Cypress.env("search_mule_profile", JSON.stringify(response.body.muleProfileResult));
        Cypress.env("search_mule_history", JSON.stringify(response.body.muleHistoryResponse));
        Cypress.env("search_mule_transaction_search", JSON.stringify(response.body.muleTransactionResponse));
        // cy.log("Object Results:", response.body);
        // cy.log(search_mule_transaction_search);
        return response.body;
      });
    });
  }
  static prepareDataJSON_Search_Exchange_Account() {
    const promisedata = [];
    const jsonfile = Cypress.env("jsonfile_exchange")
    cy.log(jsonfile)
    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-exchange-account/search-exchange-accounts",
      body: jsonfile,
      headers: {
        "Content-Type": "application/json",
        "X-Institution-Id": "002xxx",
        "X-Roles": "xxx",
        "X-User-Id": "xxx",
      },
    }).then((response) => {
      expect(response.status).to.eq(200);
        return Promise.all(promisedata).then(() => {
        Cypress.env("search_exchange_accounts", JSON.stringify(response.body));
        cy.log("Object Results:", response.body);
        // cy.log("Object Results JSON:", JSON.stringify(response.body));
        // cy.log(response.body.resultList)
        return response.body;
      });
    });
  }
  static prepareDataJSON_Search_mule_2(personalId,refCode) {
    const promisedata = [];
    const jsonfileData = JSON.stringify({
      ownerIdCard: personalId,
      ownerRefCode:  refCode,
    });
  
    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
      body: jsonfileData,
      headers: {
        "Content-Type": "application/json",
        "X-Roles": "xxx",
        "X-User-Id": "xxx",
        "X-Institution-Id": "002xxx",
      },
    }).then((response) => {
      expect(response.status).to.eq(200);
      // cy.log(JSON.stringify(response.body.muleProfileResult));
      // cy.log(JSON.stringify(response.body));      
        return Promise.all(promisedata).then(() => {
        Cypress.env("search_mule", JSON.stringify(response.body));
        Cypress.env("search_mule_profile", JSON.stringify(response.body.muleProfileResult));
        Cypress.env("search_mule_history", JSON.stringify(response.body.muleHistoryResponse));
        Cypress.env("search_mule_transaction_search", JSON.stringify(response.body.muleTransactionResponse));
        // cy.log("Object Results:", response.body);
        return response.body;
      });
    });
  }
  static prepareDataJSON_Search_mule_3(personalId,refCode) {
    const promisedata = [];
    const jsonfileData = JSON.stringify({
      ownerIdCard: personalId,
      pageHistory: {
        offset: 0,
        maxRecordPerPage: 10,
        totalRecords: 0,
        orderBy: "bankCaseId",
        orderType: "DESC"
      },
      pageTransaction: {
        offset: 0,
        maxRecordPerPage: 100,
        totalRecords: 0,
        orderBy: "bankCaseId",
        orderType: "DESC"
      },
      userBankCode: ""
    });
    cy.log(jsonfileData)
    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
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
        Cypress.env("search_mule_transaction_search", JSON.stringify(response.body.muleTransactionResponse));
        return response.body;
      });
    });
  }
  
  static count_mule_history(){
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
  }

  static encry(personal) {
    return cy.request({
      method: 'POST',
      url: 'https://cfr-dev.itmx.co.th/fraud-mule-query/api/aes/encrypt',
      headers: {
        'accept': '*/*',
        'Content-Type': 'text/plain'
      },
      body: personal
    }).then((response) => {
      expect(response.status).to.eq(200);
      expect(response.body).to.not.be.null;
      cy.log('Encrypted Text:', response.body);
      return cy.wrap(response.body); 
    });
  }
  
  

  static processResultsBrownMule(query) {
    return cy.task('queryOracleDatabase', { query }).then((result) => {
      Cypress.env("queryresult", result);
      if (!result || result.length === 0) {
        throw new Error('Query returned no results.');
      }
  
      const decryptedResults = [];
      const decryptionPromises = result.map((row) => {
        const [personalId, firstName, lastName, accountNumber,brownMuleStatus] = row;
        const decryptedRow = { firstName, lastName, accountNumber,brownMuleStatus }; // เก็บข้อมูลที่ไม่ได้ถูก decrypt
  
        cy.log('PERSONAL', personalId);
        cy.log(firstName);
        cy.log(lastName);
        cy.log(accountNumber);
        cy.log(brownMuleStatus);
        // cy.log('Decrypted First Name:', decryptedRow.brownMuleStatus);

        // เริ่มทำการ decrypt personalId
        const personalIdDecryption = cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: personalId,
          headers: { "Content-Type": "text/plain" },
        }).then((personalIdResponse) => {
          decryptedRow.personalId = personalIdResponse.body;
          cy.log('Decrypted Personal ID:', decryptedRow.personalId);
        });
  
        // เริ่มทำการ decrypt firstName
        const firstNameDecryption = cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: firstName,
          headers: { "Content-Type": "text/plain" },
        }).then((firstNameResponse) => {
          decryptedRow.firstName = firstNameResponse.body;
          cy.log('Decrypted First Name:', decryptedRow.firstName);
        });
  
        // เริ่มทำการ decrypt lastName
        const lastNameDecryption = cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: lastName,
          headers: { "Content-Type": "text/plain" },
        }).then((lastNameResponse) => {
          decryptedRow.lastName = lastNameResponse.body;
          cy.log('Decrypted Last Name:', decryptedRow.lastName);
        });
  
        // เริ่มทำการ decrypt accountNumber
        const accountNumberDecryption = cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: accountNumber,
          headers: { "Content-Type": "text/plain" },
        }).then((accountNumberResponse) => {
          decryptedRow.accountNumber = accountNumberResponse.body;
          cy.log('Decrypted Account Number:', decryptedRow.accountNumber);
        });
  
        // ใช้ Promise.all เพื่อรอทั้ง 4 การ decrypt เสร็จ
        return Promise.all([
          personalIdDecryption,
          firstNameDecryption,
          lastNameDecryption,
          accountNumberDecryption
        ]).then(() => {
          decryptedResults.push(decryptedRow); // เพิ่มผลลัพธ์ที่ decrypt แล้ว
        });
      });
  
      return Promise.all(decryptionPromises).then(() => {
        Cypress.env("decryptedResults", decryptedResults);
        cy.log("Decrypted Results:", decryptedResults);
        return decryptedResults;
      });
    });
  }
  static processResultsBrownMuleV2(query) {
    return cy.task('queryOracleDatabase', { query }).then((result) => {
      Cypress.env("queryresult", result);
      if (!result || result.length === 0) {
        throw new Error('Query returned no results.');
      }
  
      const decryptedResults = [];
      const decryptionPromises = result.map((row) => {
        const [JURISTIC_ID, NAME, ACCOUNT_NUMBER, accountNumber, ACCOUNT_STATUS] = row;
        const decryptedRow = { JURISTIC_ID, NAME, ACCOUNT_NUMBER, ACCOUNT_STATUS }; // เก็บข้อมูลที่ไม่ได้ถูก decrypt
  
        cy.log('PERSONAL', JURISTIC_ID);
        cy.log(NAME);
        cy.log(ACCOUNT_NUMBER);
        cy.log(accountNumber);
        cy.log(ACCOUNT_STATUS);
  
        // ฟังก์ชันช่วยตรวจสอบค่า null และข้ามไปหากค่าที่ต้อง decrypt เป็น null
        const decryptIfNotNull = (value) => {
          if (!value) return Promise.resolve(null);
          return cy.request({
            method: "POST",
            url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
            body: value,
            headers: { "Content-Type": "text/plain" },
          }).then((response) => response.body);
        };
  
        // ทำการ decrypt ถ้าค่าไม่เป็น null
        const personalIdDecryption = decryptIfNotNull(JURISTIC_ID).then((decrypted) => {
          if (decrypted !== null) decryptedRow.JURISTIC_ID = decrypted;
          cy.log('Decrypted Personal ID:', decryptedRow.JURISTIC_ID);
        });
  
        const firstNameDecryption = decryptIfNotNull(NAME).then((decrypted) => {
          if (decrypted !== null) decryptedRow.NAME = decrypted;
          cy.log('Decrypted First Name:', decryptedRow.NAME);
        });
  
        const accountNumberDecryption = decryptIfNotNull(ACCOUNT_NUMBER).then((decrypted) => {
          if (decrypted !== null) decryptedRow.ACCOUNT_NUMBER = decrypted;
          cy.log('Decrypted Account Number:', decryptedRow.ACCOUNT_NUMBER);
        });
  
        // ใช้ Promise.all เพื่อรอการ decrypt เสร็จ
        return Promise.all([personalIdDecryption, firstNameDecryption, accountNumberDecryption]).then(() => {
          decryptedResults.push(decryptedRow);
        });
      });
  
      return Promise.all(decryptionPromises).then(() => {
        Cypress.env("decryptedResults", decryptedResults);
        cy.log("Decrypted Results:", decryptedResults);
        return decryptedResults;
      });
    });
  }
  
  static getIDuploadINFO(){
    const filename = Cypress.env("updatedFileName");
    const query = QueryPage.Query_ExchangeAccount_Upload_INFO(filename);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    Cypress.env("IDuploadINFO",result)
    });
  }
  static getIDuploadINFO_V2(file){
    const filename = file
    cy.log('sdjfhskdjfh',filename)
    const query = QueryPage.Query_ExchangeAccount_Upload_INFO(filename);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    Cypress.env("IDuploadINFO",result)
    Cypress.env("updatedFileName",filename)
    });
  }
  static getIDuploadINFO_ROW2(){
    const filename = Cypress.env("updatedFileName2");
    const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO(filename);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    Cypress.env("IDuploadINFO2",result)
    });
  }
  static getIDuploadINFO_ROW2(){
    const filename = Cypress.env("updatedFileName2");
    const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO(filename);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    Cypress.env("IDuploadINFO2",result)
    });
  }
  static getIDuploadINFO_Cancel(){
    const uploadedFiles = Cypress.env("uploadedFiles") || [];
    if (uploadedFiles.length === 0) {
        cy.log("No files uploaded.");
        return;
    }
    const formattedFiles = uploadedFiles.map(f => f.endsWith('.xlsx') ? f : `${f}.xlsx`);
    const query = `SELECT ID FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_INFO WHERE FILE_NAME IN (${formattedFiles.map(f => `'${f}'`).join(", ")})`;
    cy.log("Querying file IDs:", query);
    return cy.task('queryOracleDatabase', { query }).then((result) => {
      cy.log("Query Result:", result);
      if (!result || result.length === 0) {
          cy.log(" No records found. Check if file names match.");
      } else {
          cy.log("Found records:", result);
      }
      Cypress.env("IDuploadINFO", result);
    });
}
  static getIDuploadDetail(){
    const idinfo = Cypress.env("IDuploadINFO");
    const query = QueryPage.Query_ExchangeAccount_Upload_Detail(idinfo);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    const flattenedResult = result.flat(); // รวม array ซ้อนกัน
    cy.log("Flattened Result:", flattenedResult);
    Cypress.env("IDuploadDetail",result)
    Cypress.env("IDuploadDetail_all",flattenedResult)
    });
  }
  static getIDuploadDetail_for_100_record(){
    const idinfo = Cypress.env("IDuploadINFO");
    const query = QueryPage.Query_ExchangeAccount_Upload_Detail_record_more(idinfo);
    cy.wait(12000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    const flattenedResult = result.flat(); // รวม array ซ้อนกัน
    cy.log("Flattened Result:", flattenedResult);
    Cypress.env("IDuploadDetail",result)
    Cypress.env("IDuploadDetail_all",flattenedResult)
    });
  }
  static QueryExchangeREPO(fileName){
    const iddetail = Cypress.env("IDuploadDetail");
    const query = QueryPage.Query_ExchangeAccount_Upload_REPO(iddetail);
    return Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].JURISTIC_ID;
      const firstName = decryptedResults[0].NAME;
      const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
      cy.fixture(fileName).then((testdata) => {
        WebsearchPage.ValidateDataInWeb(testdata)
        WebsearchPage.ValidateDataInDB(testdata,personalId,firstName,accountNumber)
      });
    });
  }
  static async QueryExchangeREPO_For_Loop(fileName){
    const iddetail = Cypress.env("IDuploadDetail_all");
    let i = 0
    for (const id of iddetail) {
      const query = QueryPage.Query_ExchangeAccount_Upload_REPO(id);
      await Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
        const personalId = decryptedResults[0].JURISTIC_ID;
        const firstName = decryptedResults[0].NAME;
        const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
        cy.log(`Loop ${i}: id = ${id}`);
        cy.fixture(fileName).then((testdata) => {
          cy.get(':nth-child(1) > .css-w61z10').should('have.text', testdata[`personalId_${i}`]);
          cy.get(':nth-child(1) > .css-110vrq7').should('have.text', testdata[`bank_${i}`]);
          cy.get(':nth-child(1) > .css-vsjrsc').should('have.text', testdata[`name_${i}`]);
          cy.get(':nth-child(1) > .css-1evxd7r').should('have.text', testdata[`account_number_${i}`]);
          cy.get(':nth-child(1) > .css-1m5lpni').should('have.text', testdata[`status_${i}`]);
          expect(personalId).to.equal(testdata[`personalId_${i}`]);
          expect(firstName).to.equal(testdata[`name_${i}`]);
          expect(accountNumber).to.equal(testdata[`account_number_${i}`]);
        });
        i++
      });
    }
  }
  static QueryExchangeREPO_For_PersonalID(fileName){
    const iddetail = Cypress.env("IDuploadDetail");
    const query = QueryPage.Query_ExchangeAccount_Upload_REPO(iddetail);
    return Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].JURISTIC_ID;
      const firstName = decryptedResults[0].NAME;
      const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
      cy.fixture(fileName).then((testdata) => {
        WebsearchPage.ValidateDataInWebForPersonalIDNull(testdata)
        WebsearchPage.ValidateDataInDBForPersonalIDNull(testdata,personalId,firstName,accountNumber)
      });
    });
  }
  static QueryExchangeREPO_All(fileName){
    const iddetail_all = Cypress.env("IDuploadDetail_all");
    const query = QueryPage.Query_ExchangeAccount_Upload_REPO(iddetail_all);
    return Databasequery.processResultsBrownMuleV2(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].JURISTIC_ID;
      const firstName = decryptedResults[0].NAME;
      const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;
      cy.fixture(fileName).then((testdata) => {
        expect(personalId).to.equal(testdata.personalId);
        expect(firstName).to.equal(testdata.name);
        expect(accountNumber).to.equal(testdata.account_number);
      });
    });
  }
  

  static DeletedDB_upload_INFO(){
    const filename = Cypress.env("updatedFileName");
    // cy.log(filename)
    const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO(filename);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    });
  }
  static DeletedDB_upload_Detail(){
    const idinfo = Cypress.env("IDuploadINFO");
    // cy.log(filename)
    const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_Detail(idinfo);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    });
  }
  static DeletedDB_upload_REPO(){
    const iddetail = Cypress.env("IDuploadDetail");
    // cy.log(filename)
    const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_REPO(iddetail);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    });
  }
  static DeletedDB_upload_REPO_V1(){
    const iddetail = Cypress.env("IDuploadDetail");
    // cy.log(filename)
    const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_REPO_V1(iddetail);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    });
  }



  static getIDuploadINFO_Cancel(){
    const uploadedFiles = Cypress.env("uploadedFiles") || [];
    if (uploadedFiles.length === 0) {
        cy.log("No files uploaded.");
        return;
    }

    const query = `SELECT ID FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_INFO WHERE FILE_NAME IN (${uploadedFiles.map(f => `'${f}'`).join(", ")})`;
    cy.log("Querying file IDs:", query);

    return cy.task('queryOracleDatabase', { query }).then((result) => {
        cy.log("Query result:", result);
        Cypress.env("IDuploadINFO", result);
    });
}
static DeletedDB_upload_INFO_Cancel(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO_(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_Detail_Cancel(){
  const idinfo = Cypress.env("updatedFileName");
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_Detail_(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_REP_Cancel(){
  const iddetail = Cypress.env("updatedFileName");
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_REPO_(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_INFO_Darkbrownmuleregistry_Cancel(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_INFO_Darkbrownmuleregistry_new(){
  const filename = Cypress.env("updatedFile");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_Detail_Darkbrownmuleregistry_Cancel(){
  const idinfo = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_Detail(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_Detail_Darkbrownmuleregistry_new(){
  const idinfo = Cypress.env("updatedFile");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_Detail(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_REP_Darkbrownmuleregistry_Cancel(){
  const iddetail = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_REPO(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static DeletedDB_upload_REP_Darkbrownmuleregistry_new(){
  const iddetail = Cypress.env("updatedFile");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_REPO(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}
static getIDuploadINFODarkbrownmuleregistry(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}
static getIDuploadINFOFilenameDarkbrownmuleregistry(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_FilenamrDarkbrownmuleregistry_INFO(filename);
  cy.task('queryOracleDatabase', { query }).then(result => {
    cy.log("Database Query Result:", JSON.stringify(result));
    let validateFilename = `${filename}.xlsx`
    const filename_DB = result[0][0];
    expect(filename_DB).to.equal(validateFilename);
  })
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}

static getIDuploadINFODarkbrownmuleregistrynew(){
  const filename = Cypress.env("updatedFile");
  const query = QueryPage.Query_Darkbrownmuleregistry_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}

static getIDuploadDetailDarkbrownmuleregistry(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = QueryPage.Query_Darkbrownmuleregistry_Upload_Detail(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}

static QueryExchangeREPOlDarkbrownmuleregistry(fileName){
  const iddetail = Cypress.env("IDuploadDetail");
  const query = QueryPage.Query_Darkbrownmuleregistry_Upload_REPO(iddetail);
  return Databasequery.processResultsBrownMule_DarkBrown(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].PERSONAL_ID;
    const firstName = decryptedResults[0].FIRST_NAME;
    const accountNumber = decryptedResults[0].accountNumber;
    const lastName = decryptedResults[0].LAST_NAME;
    
    
    cy.fixture(fileName).then((testdata) => {
      WebsearchPage.ValidateDataInDB1(testdata,personalId,firstName,accountNumber,lastName)
    });
  });
}

static processResultsBrownMule_DarkBrown(query) {
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env("queryresult", result);
    if (!result || result.length === 0) {
      throw new Error('Query returned no results.');
    }

    const decryptedResults = [];
    const decryptionPromises = result.map((row) => {
      const [PERSONAL_ID, FIRST_NAME, accountNumber, LAST_NAME] = row;
      const decryptedRow = { PERSONAL_ID, FIRST_NAME, LAST_NAME };

      cy.log('PERSONAL', PERSONAL_ID);
      cy.log(FIRST_NAME);
      cy.log(accountNumber);
      cy.log(LAST_NAME);

      // ฟังก์ชันช่วยตรวจสอบค่า null และข้ามไปหากค่าที่ต้อง decrypt เป็น null
      const decryptIfNotNull = (value) => {
        if (!value) return Promise.resolve(null);
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: value,
          headers: { "Content-Type": "text/plain" },
        }).then((response) => response.body);
      };

      // ทำการ decrypt ถ้าค่าไม่เป็น null
      const personalIdDecryption = decryptIfNotNull(PERSONAL_ID).then((decrypted) => {
        if (decrypted !== null) decryptedRow.PERSONAL_ID = decrypted;
        cy.log('Decrypted Personal ID:', decryptedRow.PERSONAL_ID);
      });

      const firstNameDecryption = decryptIfNotNull(FIRST_NAME).then((decrypted) => {
        if (decrypted !== null) decryptedRow.FIRST_NAME = decrypted;
        cy.log('Decrypted First Name:', decryptedRow.FIRST_NAME);
      });

      const accountNumberDecryption = decryptIfNotNull(accountNumber).then((decrypted) => {
        if (decrypted !== null) decryptedRow.accountNumber = decrypted;
        cy.log('Decrypted Account Number:', decryptedRow.accountNumber);
      });

      const lastNameDecryption = decryptIfNotNull(LAST_NAME).then((decrypted) => {
        if (decrypted !== null) decryptedRow.LAST_NAME = decrypted;
        cy.log('Decrypted Last Name:', decryptedRow.LAST_NAME);
      });

      // ใช้ Promise.all เพื่อรอการ decrypt เสร็จ
      return Promise.all([personalIdDecryption, firstNameDecryption, accountNumberDecryption, lastNameDecryption]).then(() => {
        decryptedResults.push(decryptedRow);
      });
    });

    return Promise.all(decryptionPromises).then(() => decryptedResults);
  });
}
 
static DeletedDB_upload_Detail_Darkbrownmuleregistry_Cancel_100_record(){
  const idinfo = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_Detail_100_record(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}

static DeletedDB_upload_REP_Darkbrownmuleregistry_new_100_record(){
  const iddetail = Cypress.env("updatedFile");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_REPO_Detail_100_record(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}

static getIDuploadINFOExchangeAccount_new(){
  const filename = Cypress.env("updatedFile");
  const query = QueryPage.Query_ExchangeAccount_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}

static DeletedDB_upload_INFOExchangeAccount_new(){
  const filename = Cypress.env("updatedFile");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}

static DeletedDB_upload_INFOExchangeAccount_new_100_record(){
  const filename = Cypress.env("updatedFile");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_INFO_100_record(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}

static DeletedDB_upload_DetailExchangeAccount_new(){
  const idinfo = Cypress.env("updatedFile");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_Detail(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}

static DeletedDB_upload_REPODetailExchangeAccount_new(){
  const iddetail = Cypress.env("updatedFile");
  // cy.log(filename)
  const query = QueryPage.Query_ExchangeAccount_Deleted_Upload_REPO(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}

static getIDuploadINFOexchangeaccountregistry_new(){
  const filename = Cypress.env("updatedFile");
  const query = QueryPage.Query_ExchangeAccount_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}

static getIDuploadINFOexchangeaccountregistry_cancel(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_ExchangeAccount_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}

static getIDuploadexchangeaccountregistry_new(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = QueryPage.Query_ExchangeAccount_Upload_Detail(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}

static QueryExchangeREPOlxchangeaccountregistry_new(fileName){
  const iddetail = Cypress.env("IDuploadDetail");
  const query = QueryPage.Query_ExchangeAccount_Upload_REPO_new(iddetail);
  return Databasequery.processResultsExchangeAccount(query).then((decryptedResults) => {
    const name = decryptedResults[0].NAME;
    const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;    
    
    cy.fixture(fileName).then((testdata) => {
      WebsearchPage.ValidateDataInDBExchangeAccount(testdata,name,accountNumber)
    });
  });
}

static processResultsExchangeAccount(query) {
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env("queryresult", result);
    if (!result || result.length === 0) {
      throw new Error('Query returned no results.');
    }

    const decryptedResults = [];
    const decryptionPromises = result.map((row) => {
      const [NAME, ACCOUNT_NUMBER] = row;
      const decryptedRow = { NAME, ACCOUNT_NUMBER};

      cy.log('PERSONAL', NAME);
      cy.log(ACCOUNT_NUMBER);

      // ฟังก์ชันช่วยตรวจสอบค่า null และข้ามไปหากค่าที่ต้อง decrypt เป็น null
      const decryptIfNotNull = (value) => {
        if (!value) return Promise.resolve(null);
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: value,
          headers: { "Content-Type": "text/plain" },
        }).then((response) => response.body);
      };

      // ทำการ decrypt ถ้าค่าไม่เป็น null
      const nameDecryption = decryptIfNotNull(NAME).then((decrypted) => {
        if (decrypted !== null) decryptedRow.NAME = decrypted;
        cy.log('Decrypted Personal ID:', decryptedRow.NAME);
      });

      const accountNumberDecryption = decryptIfNotNull(ACCOUNT_NUMBER).then((decrypted) => {
        if (decrypted !== null) decryptedRow.ACCOUNT_NUMBER = decrypted;
        cy.log('Decrypted First Name:', decryptedRow.ACCOUNT_NUMBER);
      });

      // ใช้ Promise.all เพื่อรอการ decrypt เสร็จ
      return Promise.all([nameDecryption, accountNumberDecryption ]).then(() => {
        decryptedResults.push(decryptedRow);
      });
    });

    return Promise.all(decryptionPromises).then(() => decryptedResults);
  });
}

static QueryExchangeREPOlxchangeaccountregistry_ForLoop_new(fileName){
  const iddetail = Cypress.env("IDuploadDetail");
  let i = 0
  for (const id of iddetail) {
    const query = QueryPage.Query_ExchangeAccount_Upload_REPO_new(id);
    // return Databasequery.processResultsExchangeAccount(query).then((decryptedResults) => {
      // const name = decryptedResults[0].NAME;
      // const accountNumber = decryptedResults[0].ACCOUNT_NUMBER;    
      // cy.log(`Loop ${i}: id = ${id}`);
      // cy.fixture(fileName).then((testdata) => {
        // WebsearchPage.ValidateDataInDBExchangeAccount(testdata,name,accountNumber)
        // expect(personalId).to.equal(testdata[`personalId_${i}`]);
        // expect(name).to.equal(testdata[`name_${i}`]);
        // expect(accountNumber).to.equal(testdata[`account_number_${i}`]);
        // expect(lastname).to.equal(testdata[`lastname_${i}`]);
    //   });
    //   i++
    // });
  }  
}

static processDecryptedResults(query) {
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env("queryresult", result);
    if (!result || result.length === 0) {
      throw new Error('Query returned no results.');
    }

    const decryptedResults = [];
    const decryptionPromises = result.map((row) => {
      const [personalId, accountNumber, refCode, , firstName, lastName] = row;
      const decryptedRow = {};

      return cy.request({
        method: "POST",
        url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
        body: personalId,
        headers: { "Content-Type": "text/plain" },
      }).then((personalIdResponse) => {
        decryptedRow.personalId = personalIdResponse.body;
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: accountNumber,
          headers: { "Content-Type": "text/plain" },
        });
      }).then((accountNumberResponse) => {
        decryptedRow.accountNumber = accountNumberResponse.body;
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: firstName,
          headers: { "Content-Type": "text/plain" },
        });
      }).then((firstNameResponse) => {
        decryptedRow.firstName = firstNameResponse.body;
        return cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: lastName,
          headers: { "Content-Type": "text/plain" },
        });
      }).then((lastNameResponse) => {
        decryptedRow.lastName = lastNameResponse.body;
        decryptedResults.push({
          ...decryptedRow,
          refCode,
        });
      });
    });

    return Promise.all(decryptionPromises).then(() => {
      Cypress.env("decryptedResults", decryptedResults);
      cy.log("Decrypted Results:", decryptedResults);
      return decryptedResults;
    });
  });
}
static processDecryptedResults_3_field(query) {
  return cy.task('queryOracleDatabase', { query }).then((result) => {
      Cypress.env("queryresult", result);
      if (!result || result.length === 0) {
          throw new Error('Query returned no results.');
      }

      const decryptedResults = [];
      const decryptionPromises = result.map((row) => {
          const [personalId, firstName, lastName] = row;
          const decryptedRow = {};
      // cy.log(personalId)

          return cy.request({
              method: "POST",
              url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
              body: personalId,
              headers: { "Content-Type": "text/plain" },
          }).then((personalIdResponse) => {
              decryptedRow.personalId = personalIdResponse.body;
              return cy.request({
                  method: "POST",
                  url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
                  body: firstName,
                  headers: { "Content-Type": "text/plain" },
              });
          }).then((firstNameResponse) => {
              decryptedRow.firstName = firstNameResponse.body;
              return cy.request({
                  method: "POST",
                  url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
                  body: lastName,
                  headers: { "Content-Type": "text/plain" },
              });
          }).then((lastNameResponse) => {
              decryptedRow.lastName = lastNameResponse.body;
              decryptedResults.push(decryptedRow);
          });
      });

      return Promise.all(decryptionPromises).then(() => {
          Cypress.env("decryptedResults", decryptedResults);
          cy.log("Decrypted Results:", decryptedResults);
    return decryptedResults;
      });
  });
}
static processDecryptedResults_V2(query) {
return cy.task('queryOracleDatabase', { query }).then((result) => {
  Cypress.env("queryresult", result);
  if (!result || result.length === 0) {
    throw new Error('Query returned no results.');
  }

  const decryptedResults = [];
  const decryptionPromises = result.map((row) => {
    const [personalId, accountNumber, refCode, , firstName, lastName] = row;
    const decryptedRow = {};
    // cy.log(personalId)
    // cy.log(accountNumber)
    // cy.log(firstName)

    // Helper function to handle decryption
    const decryptField = (field, fieldName) => {
      if (!field) {
        cy.log(`${fieldName} is null or undefined, skipping...`);
        return Promise.resolve(null);
      }
      return cy.request({
        method: "POST",
        url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
        body: field,
        headers: { "Content-Type": "text/plain" },
      }).then((response) => response.body);
    };

    return decryptField(personalId, "Personal ID").then((personalIdResponse) => {
      decryptedRow.personalId = personalIdResponse;
      return decryptField(accountNumber, "Account Number");
    }).then((accountNumberResponse) => {
      decryptedRow.accountNumber = accountNumberResponse;
      return decryptField(firstName, "First Name");
    }).then((firstNameResponse) => {
      decryptedRow.firstName = firstNameResponse;
      return decryptField(lastName, "Last Name");
    }).then((lastNameResponse) => {
      decryptedRow.lastName = lastNameResponse;
      decryptedResults.push({
        ...decryptedRow,
        refCode,
      });
    });
  });

  return Promise.all(decryptionPromises).then(() => {
    Cypress.env("decryptedResults", decryptedResults);
    cy.log("Decrypted Results:", decryptedResults);
    return decryptedResults;
  });
});
}
static preparaDataJSON_Detail_Brown_Mule(brownid) {
const jsonfilebrown = JSON.stringify({
  brownMuleId: brownid,
});

return cy.request({
  method: "POST",
  url: "https://cfr-dev.itmx.co.th/fraud-brown-mule/view-brown-mule-detail",
  body: jsonfilebrown,
  headers: {
    "Content-Type": "application/json",
    "X-Roles": "xxx",
    "X-User-Id": "xxx",
    "X-Institution-Id": "002xxx",
  },
}).then((response) => {
  expect(response.status).to.eq(200); 
  Cypress.env("detail_brownmule", response.body); 
  return response.body; 
});
}
static prepareDataJSON_Search_mule(personalId) {
const jsonfileData = JSON.stringify({
  ownerIdCard: personalId,
});
cy.log('bodyJson', jsonfileData)
return cy.request({
  method: "POST",
  url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
  body: jsonfileData,
  headers: {
    "Content-Type": "application/json",
    "X-Roles": "xxx",
    "X-User-Id": "xxx",
    "X-Institution-Id": "002xxx",
  },
}).then((response) => {
  expect(response.status).to.eq(200);
  
  const mule = response.body;
  const mule_profile = mule.muleProfileResult;
  const mule_history = mule.muleHistoryResponse;
  const mule_tx = mule.muleTransactionResponse;

  Cypress.env("search_mule", JSON.stringify(mule));
  Cypress.env("search_mule_profile", JSON.stringify(mule_profile));
  Cypress.env("search_mule_history", JSON.stringify(mule_history));
  Cypress.env("search_mule_transaction_search", JSON.stringify(mule_tx));

  return cy.wrap(mule)
});
}

static prepareDataJSON_Search_mule_2(personalId,refCode) {
  const promisedata = [];
  const jsonfileData = JSON.stringify({
    ownerIdCard: personalId,
    ownerRefCode:  refCode,
  });

  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
    body: jsonfileData,
    headers: {
      "Content-Type": "application/json",
      "X-Roles": "xxx",
      "X-User-Id": "xxx",
      "X-Institution-Id": "002xxx",
    },
  }).then((response) => {
    expect(response.status).to.eq(200);
    // cy.log(JSON.stringify(response.body.muleProfileResult));
    // cy.log(JSON.stringify(response.body));      
      return Promise.all(promisedata).then(() => {
      Cypress.env("search_mule", JSON.stringify(response.body));
      Cypress.env("search_mule_profile", JSON.stringify(response.body.muleProfileResult));
      Cypress.env("search_mule_history", JSON.stringify(response.body.muleHistoryResponse));
      Cypress.env("search_mule_transaction_search", JSON.stringify(response.body.muleTransactionResponse));
      // cy.log("Object Results:", response.body);
      return response.body;
    });
  });
}
static prepareDataJSON_Search_mule_3(personalId,refCode) {
  const promisedata = [];
  const jsonfileData = JSON.stringify({
    ownerIdCard: personalId,
    pageHistory: {
      offset: 0,
      maxRecordPerPage: 10,
      totalRecords: 0,
      orderBy: "bankCaseId",
      orderType: "DESC"
    },
    pageTransaction: {
      offset: 0,
      maxRecordPerPage: 100,
      totalRecords: 0,
      orderBy: "bankCaseId",
      orderType: "DESC"
    },
    userBankCode: ""
  });
  cy.log(jsonfileData)
  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
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
      Cypress.env("search_mule_transaction_search", JSON.stringify(response.body.muleTransactionResponse));
      return response.body;
    });
  });
}
static prepareDataJSON_Search_mule_4(refCode) {
  const promisedata = [];
  const jsonfileData = JSON.stringify({
    ownerRefCode:  refCode,
  });

  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/fraud-mule-query/api/search-mule",
    body: jsonfileData,
    headers: {
      "Content-Type": "application/json",
      "X-Roles": "xxx",
      "X-User-Id": "xxx",
      "X-Institution-Id": "002xxx",
    },
  }).then((response) => {
    expect(response.status).to.eq(200);
    // cy.log(JSON.stringify(response.body.muleProfileResult));
    // cy.log(JSON.stringify(response.body));      
      return Promise.all(promisedata).then(() => {
      Cypress.env("search_mule", JSON.stringify(response.body));
      Cypress.env("search_mule_profile", JSON.stringify(response.body.muleProfileResult));
      Cypress.env("search_mule_history", JSON.stringify(response.body.muleHistoryResponse));
      Cypress.env("search_mule_transaction_search", JSON.stringify(response.body.muleTransactionResponse));
      // cy.log("Object Results:", response.body);
      return response.body;
    });
  });
}
static count_mule_history(){
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
}
static SetprocessDecrypted(card) {
const decryptedRow = {};
return cy.request({
  method: "POST",
  url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
  body: card,
  headers: { "Content-Type": "text/plain" },
}).then((cardIDResponse) => {
  decryptedRow.cardID = cardIDResponse.body;
 
//   return cy.request({
//     method: "POST",
//     url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
//     body: name_sen,
//     headers: { "Content-Type": "text/plain" },
//   });
// }).then((firstNameResponse) => {
//   decryptedRow.firstName = firstNameResponse.body;
return decryptedRow;
});
}





}