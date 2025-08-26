import { Given } from "@badeball/cypress-cucumber-preprocessor";

describe("HTTP_Requests", () => {
  Given("Delete BankCaseID {string}", (BankCaseID) => {
    cy.request(
      "POST",
      "https://cfr-dev.itmx.co.th/testing-api/api/fraudCases/delete/masterCase/v2/" +
        BankCaseID
    ).then((response) => {
      expect(response.status).to.equal(200);

      const responseBody = response.body;
      if (responseBody.length > 75) {
        expect(responseBody).to.contain(
          "message=Deleted Bank Case Id: " + BankCaseID + " Successful"
        );
        cy.log(responseBody);
      } else {
        expect(responseBody).to.contain(
          "message=Not found Bank Case Id: " + BankCaseID
        );
        cy.log(responseBody);
      }
    });
  });
});

describe("Delete BankCaseID", () => {
  Given("Delete BankCaseIDArray {string}", (BankCaseID) => {
    const BankCaseIDArray = BankCaseID.split(",").map((BankCaseID) => BankCaseID.trim()
    );
    cy.wrap(BankCaseIDArray).as("idList");
    cy.get("@idList").then((BankCaseIDArray) => {
      BankCaseIDArray.forEach((BankCaseID) => {
        cy.request(
          "POST",
          "https://cfr-dev.itmx.co.th/testing-api/api/fraudCases/delete/masterCase/" +
            BankCaseID
        ).then((response) => {
          expect(response.status).to.equal(200);

          // const responseBody = response.body;
          // if (responseBody.length > 175) {
          //   expect(responseBody).to.contain(
          //     "message=Deleted Bank Case Id: " + BankCaseID + " Successful"
          //   );
          //   cy.log(responseBody);
          // } else {
          //   expect(responseBody).to.contain(
          //     "message=Not found Bank Case Id: " + BankCaseID
          //   );
          //   cy.log(responseBody);
          // }
        });
      });
    });
  });
});

describe("Excel File Encoding Test ", () => {
  Given("Add Master Case {string}", (pathdata) => {
    const filePath = "cypress/fixtures/positive" + pathdata; // เปลี่ยนเป็น path ของไฟล์ Excel ของคุณ
    cy.encodeExcel(filePath).then((encoded) => {
      const fileData = encoded;
      const jsonfileData = JSON.stringify({
        fileData: fileData,
      });
      cy.log(jsonfileData);
      cy.request({
        method: "POST",
        url: "https://cfr-dev.itmx.co.th/core/api/excel-file/case-insert", // Replace with your API URL
        body: jsonfileData,
        headers: {
          "Content-Type": "application/json",
          "X-Roles": "xxx",
          "X-User-Id": "xxx",
          "X-Institution-Id": "002000",
        },
      }).then((response) => {
        expect(response.status).to.eq(200);
        cy.log(JSON.stringify(response.body));
        const result1 = response.body.bankCaseId;
        expect(result1).to.be.not.equal(null);
      });
    });
  });
});

describe("Excel File Encoding Test ", () => {
  Given(
    "Add sub Case {string} and {string} and AccountID {string} and BankCode {string}",
    (pathdata, BankCaseIDSUB, Account, bankcodeture) => {
      const BankCaseID = BankCaseIDSUB;
      const AccountID = Account;
      const BankCode1 = bankcodeture;
      const BankCode = BankCode1 + "xxx";
      const jsonSearch = JSON.stringify({
        masterCaseId: BankCaseID,
        policeCaseId: "",
        detectiveTypeId: "",
        ownerFirstName: "",
        ownerLastName: "",
        ownerIdCard: "",
        senderAccountNumber: "",
        senderBankCode: "",
        receiverAccountId: "",
        receiverAccountNumber: AccountID,
        receiverBankCode: "",
        caseStatus: [],
        subCaseStatus: [],
        caseCreateStartDate: "",
        caseCreateEndDate: "",
        page: {
          offset: 0,
          totalRecords: 0,
          maxRecordPerPage: 10,
          orderBy: "masterCaseId",
          orderType: "DESC",
        },
      });
      cy.log(jsonSearch);
      cy.request({
        method: "POST",
        url: "https://cfr-dev.itmx.co.th/core/api/fraud-cases/search", // Replace with your API URL
        body: jsonSearch,
        headers: {
          "Content-Type": "application/json",
          "X-Roles": "xxx",
          "X-User-Id": "xxx",
          "X-Institution-Id": BankCode,
        },
      }).then((response) => {
        expect(response.status).to.eq(200);
        cy.log(JSON.stringify(response.body));
        const result1 = response.body.fraudCasesSearchResult[0];

        cy.wrap(result1).then((obj) => {
          cy.wrap(obj)
            .its("subCaseId")
            .then((subCaseId) => {
              const subCaseId1 = subCaseId;
              cy.log(subCaseId1);

              cy.wrap(obj)
                .its("childSubCaseId")
                .then((childSubCaseId) => {
                  const childSubCaseId1 = childSubCaseId;
                  cy.log("TEST::" + childSubCaseId1);

                  const filePath = "cypress/fixtures/positive" + pathdata; // เปลี่ยนเป็น path ของไฟล์ Excel ของคุณ
                  cy.encodeExcel(filePath).then((encoded) => {
                    const fileData = encoded;
                    const jsonfileData = JSON.stringify({
                      fileData: fileData,
                      subCaseId: subCaseId1,
                      childSubCaseId: childSubCaseId1,
                      fileName: "Addsubcase.xlsx",
                    });
                    cy.log(jsonfileData);
                    cy.request({
                      method: "POST",
                      url: "https://cfr-dev.itmx.co.th/core/api/excel-file/sub-case-insert", // Replace with your API URL
                      body: jsonfileData,
                      headers: {
                        "Content-Type": "application/json",
                        "X-Roles": "xxx",
                        "X-User-Id": "xxx",
                        "X-Institution-Id": BankCode,
                      },
                    }).then((response) => {
                      expect(response.status).to.eq(200);
                      cy.log(JSON.stringify(response.body));
                      const result1 = response.body.bankCaseId;
                      expect(result1).to.be.equal(BankCaseID);
                      // const result2 = response.body.errorExcelInfoList;
                      // expect(result2).to.deep.equal([]);
                      // errorExcelInfoList
                    });
                  });
                });
            });
        });
      });
    }
  );
});
describe("Decrypt CFR String", () => {
  Given("Decrypt CFR String {string}", (encryptedString) => {
    const encryptedArray = encryptedString.split(",").map((str) => str.trim());
    cy.wrap(encryptedArray).as("encryptedList");

    cy.get("@encryptedList").then((encryptedArray) => {
      encryptedArray.forEach((encryptedValue) => {
        cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: encryptedValue,
          headers: {
            "Content-Type": "text/plain",
          },
        }).then((response) => {
          expect(response.status).to.equal(200);

          const decryptedValue = response.body;

          if (decryptedValue && decryptedValue.length > 0) {
            cy.log(`Decrypted String for "${encryptedValue}": ${decryptedValue}`);
          } else {
            cy.log(`Failed to decrypt: ${encryptedValue}`);
            expect(decryptedValue).to.not.be.empty;
          }
        });
      });
    });
  });
});

Cypress.Commands.add("encodeExcel", (filePath) => {
  return cy.readFile(filePath, "base64").then((base64String) => {
    return base64String;
  });
});
