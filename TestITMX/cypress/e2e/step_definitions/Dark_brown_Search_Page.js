



export class DarkBrownmule {
    static displayLableAndValidateData_Managements_Dark_Brownmule(detail_brown){
        cy.contains('การจัดการบัญชีม้าน้ำตาล',{timeout:120000})
        // ValidateData 
        cy.get('#counterMeasureDetail',{timeout:20000}).should('have.value',detail_brown.counterMeasureDetail)
        cy.get('#remainingAmount').should('have.value',detail_brown.remainingAmount)
        cy.get('#caseDetail').should('have.value',detail_brown.caseDetail)
        // cy.get('#confirmDateTime').should('have.value',detail_brown.confirmDateTime)
        // cy.get('#withdrawBrownMuleDate').should('have.value',detail_brown.brownMuleWithdrawDate)
      }
      static displayLable_DetailBank_Dark_Brownmule(detail_brown){
        cy.contains('ธนาคารผู้บันทึกข้อมูล',{timeout:120000})
        // ValidateData *** เวลา วินาทีไม่ตรง ที่ปิดไว้
        cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(1) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input',{timeout:20000})
        .should('have.value',detail_brown.createByBankName)
        cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(2) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
        .should('have.value',detail_brown.createByBankCode)
        // cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(3) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
        // .should('have.value',detail_brown.createDateTime)
        cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(1) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
        .should('have.value',detail_brown.updateByBankName)
        cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(2) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
        .should('have.value',detail_brown.updateByBankCode)
        // cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(3) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
        // .should('have.value',detail_brown.updateByBankCode)
      }
      static async displayLableAndValidateData_Detail_Dark_Brownmule(detail_brown) {
        cy.contains('การจัดการบัญชีม้าน้ำตาลเข้ม',{timeout:120000})
        await cy.wrap(detail_brown).then((data) => {
          cy.get('#personalId',{timeout:20000}).should('have.value', data.personalId)
          cy.get('#personalType').should('have.value', data.personalType)
          cy.get('#firstName').should('have.value', data.firstName)
          cy.get('#lastName').should('have.value', data.lastName)
          cy.get('#phoneNumber').should('have.value', data.phoneNumber)
          cy.get('#birthDate').should('have.value', data.birthDate)
          cy.get('#accountBankName').should('have.value', data.accountBankName)
          cy.get('#accountBankCode').should('have.value', data.accountBankCode)
          cy.get('#accountType').should('have.value', data.accountType)
          cy.get('#accountNumber').should('have.value', data.accountNumber)
          cy.get('#accountOpenDate').should('have.value', data.accountOpenDate)
          cy.get('#accountOpenChannel').should('have.value', data.accountOpenChannel)
        })
      }
      static async displayLableAndValidateData_DetailAccount_Dark_Brownmule(detail_brown) {
        cy.contains('ข้อมูลตั้งต้นของบัญชีม้าน้ำตาลเข้ม',{timeout:120000})
        await cy.wrap(detail_brown).then((data) => {
          cy.get('#reasonToSuspectId',{timeout:20000}).should('have.value',data.reasonToSuspectId)
          cy.get('#reasonToSuspectDetail').should('have.value',data.reasonToSuspectDetail)
          cy.get('#relatedBankCaseId').should('have.value',data.relatedBankCaseId)
          cy.get('#originIpAddress').should('have.value',data.originIpAddress)
          cy.get('#originBankName').should('have.value',data.originBankName)
          cy.get('#originBankCode').should('have.value',data.originBankCode)
          cy.get('#originAccountNumber').should('have.value',data.originAccountNumber)
          cy.get('#originPhoneNumber').should('have.value',data.originPhoneNumber)
        });
      }
      static async displayLableAndValidateData_Managements_Dark_Brownmule(detail_brown) {
        cy.contains('การจัดการบัญชีม้าน้ำตาลเข้ม',{timeout:120000})
        await cy.wrap(detail_brown).then((data) => {
        // ValidateData *** เวลา วินาทีไม่ตรง ที่ปิดไว้
          cy.get('#counterMeasureDetail',{timeout:20000}).should('have.value',data.counterMeasureDetail)
          cy.get('#remainingAmount').should('have.value',data.remainingAmount)
          cy.get('#caseDetail').should('have.value',data.caseDetail)
          // cy.get('#confirmDateTime').should('have.value',data.confirmDateTime)
          // cy.get('#withdrawBrownMuleDate').should('have.value',data.brownMuleWithdrawDate)
        });
      }
      static async ValidateData_Dark_Brown_Mule(detail_brown) {
        await cy.wrap(detail_brown).then((data) => {
        // ValidateData *** เวลา วินาทีไม่ตรง ที่ปิดไว้
          cy.get('#counterMeasureDetail',{timeout:20000}).should('have.value',data.counterMeasureDetail)
          cy.get('#remainingAmount').should('have.value',data.remainingAmount)
          cy.get('#caseDetail').should('have.value',data.caseDetail)
          // cy.get('#confirmDateTime').should('have.value',data.confirmDateTime)
          // cy.get('#withdrawBrownMuleDate').should('have.value',data.brownMuleWithdrawDate)
        });
      }
      
      static preparaDataJSON_Detail_Dark_Brown_Mule(brownid) {
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
          
          // Debug log
          cy.log(`Response: ${JSON.stringify(response.body)}`);
      
          Cypress.env("detail_brownmule", response.body);
          return Cypress.Promise.resolve(response.body);
        });
      }
      
 
}