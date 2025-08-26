const NAME_MULE_SEARCH = '#name'
const SURENAME_MULE_SEARCH = '#bankAccount'
const REFCODE_MULE_SEARCH = '#ownerRefCode'
const ACCOUNT_ID_MULE_SEARCH = '#ownerAccountNumber'
const NAME_BANK_MULE_SEARCH = '#bank'

const ownerIdCard = '#ownerIdCard'
const Tran_ownerIdCard = '.css-4tctn4'
const Tran_fraudLevel = '.css-1pie3mq'

export class WebsearchPage {
    
  static displayLableWebSearch(){
      cy.contains('Mule Search',{timeout:20000})
      cy.contains('หมายเลขบัตรประชาชนหรือหนังสือเดินทาง')
      cy.contains('ชื่อเจ้าของบัญชี/ชื่อบริษัท')
      cy.contains('นามสกุลเจ้าของบัญชี')
      cy.contains('เลขอ้างอิงบัญชีม้า (Ref Code)')
      cy.contains('เลขที่บัญชี')
      cy.contains('ธนาคารเจ้าของบัญชี')
  }
  static displayLableTrasition_Web_Search(){
      cy.contains('ประเภทบุคคลเจ้าของบัญชี',{timeout:20000})
      cy.contains('เลขบัตรประชาชน/หนังสือเดินทาง')
      cy.contains('ชื่อ - นามสกุล')
      cy.contains('ระดับ')
      cy.contains('หมายเลขอ้างอิงบัญชีม้า')
      cy.contains('ข้อมูล ณ วันที่')
  }
  static displayLableTrasition_Mule_Level_History(){
      cy.contains('ประวัติระดับม้า',{timeout:20000})
      cy.contains('เลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล')
      cy.contains('ระดับ')
      cy.contains('ธนาคารเจ้าของบัญชี')
      cy.contains('เงื่อนไขการขึ้นบัญชีม้า')
      cy.contains('ลักษณะเคส')
      cy.contains('บุคคลที่เคยออกในรายงานรอบก่อนหน้า')
      cy.contains('หมายเลขเคส (By Account)')
      cy.contains('เลขที่หมายแจ้งความ (By Account)')
      cy.contains('เลขที่หมายอายัด (By Account)')
      cy.contains('วันที่ประกาศ')
      cy.contains('รอบประกาศ')
      cy.contains('หมายเลขอ้างอิงบัญชีม้า')
      cy.contains('วันที่ประกาศปลด')
      cy.contains('เหตุผลที่ปลด')
      cy.contains('ชื่อ')
      cy.contains('สกุล')
  }
  static displayLableTrasition_Mule_History(){
      cy.contains('ประวัติธุรกรรม',{timeout:20000})
      cy.contains('หมายเลขเคส')
      cy.contains('ธนาคารผู้โอน')
      cy.contains('แถว')
      cy.contains('ลักษณะเคส')
      cy.contains('วันที่เสียหาย (วันที่เกิดรายการ)')
      cy.contains('ยอดเงินที่เสียหาย')
      cy.contains('ชื่อผู้รับโอน')
      cy.contains('นามสกุลผู้รับโอน')
      cy.contains('เลขที่บัญชีผู้รับโอน')
      cy.contains('ธนาคารเจ้าของบัญชี ผู้รับโอน')
      cy.contains('เลขแจ้งความ')
      cy.contains('หมายอายัด')
      cy.contains('สถานะเคส')
      cy.contains('วันที่เข้าระบบ')
  }
static displayLableAndValidateData_Detail_Brownmule(detail_brown){
  cy.contains('การจัดการบัญชีม้าน้ำตาล',{timeout:20000})
  cy.contains('ข้อมูลม้าน้ำตาล')
  cy.contains('หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล')
  cy.contains('ประเภทบุคคลของเจ้าของบัญชี')
  cy.contains('ชื่อ บัญชีที่ต้องสงสัย')
  cy.contains('นามสกุล บัญชีที่ต้องสงสัย')
  cy.contains('เบอร์มือถือ')
  cy.contains('วันเดือนปีเกิด (พ.ศ.)')
  cy.contains('ธนาคารเจ้าของบัญชี')
  cy.contains('รหัสธนาคารเจ้าของบัญชี')
  cy.contains('ประเภทบัญชี')
  cy.contains('เลขบัญชี')
  cy.contains('วันที่เปิดบัญชี (พ.ศ.)')
  cy.contains('ช่องทางการเปิดบัญชี')
  // ValidateData
  cy.get('#personalId',{timeout:20000}).should('have.value',detail_brown.personalId)
  cy.get('#personalType').should('have.value',detail_brown.personalType)
  cy.get('#firstName').should('have.value',detail_brown.firstName)
  cy.get('#lastName').should('have.value',detail_brown.lastName)
  cy.get('#phoneNumber').should('have.value',detail_brown.phoneNumber)
  cy.get('#birthDate').should('have.value',detail_brown.birthDate)
  cy.get('#accountBankName').should('have.value',detail_brown.accountBankName)
  cy.get('#accountBankCode').should('have.value',detail_brown.accountBankCode)
  cy.get('#accountType').should('have.value',detail_brown.accountType)
  cy.get('#accountNumber').should('have.value',detail_brown.accountNumber)
  cy.get('#accountOpenDate').should('have.value',detail_brown.accountOpenDate)
  cy.get('#accountOpenChannel').should('have.value',detail_brown.accountOpenChannel)
}
static displayLableAndValidateData_DetailAccount_Brownmule(detail_brown){
  cy.contains('ข้อมูลตั้งต้นของบัญชีม้าน้ำตาล',{timeout:20000})
  cy.contains('ข้อเหตุอันควรสงสัย')
  cy.contains('เหตุอันควรสงสัย')
  cy.contains('ขยายผลจาก (Case ID)')
  cy.contains('IP Address ของการทำรายการ')
  cy.contains('ธนาคาร(ตั้งต้น)')
  cy.contains('รหัสธนาคาร(ตั้งต้น)')
  cy.contains('เลขบัญชี(ตั้งต้น)')
  cy.contains('เบอร์มือถือ(ตั้งต้น)')
  // ValidateData
  cy.get('#reasonToSuspectId',{timeout:20000}).should('have.value',detail_brown.reasonToSuspectId)
  cy.get('#reasonToSuspectDetail').should('have.value',detail_brown.reasonToSuspectDetail)
  cy.get('#relatedBankCaseId').should('have.value',detail_brown.relatedBankCaseId)
  cy.get('#originIpAddress').should('have.value',detail_brown.originIpAddress)
  cy.get('#originBankName').should('have.value',detail_brown.originBankName)
  cy.get('#originBankCode').should('have.value',detail_brown.originBankCode)
  cy.get('#originAccountNumber').should('have.value',detail_brown.originAccountNumber)
  cy.get('#originPhoneNumber').should('have.value',detail_brown.originPhoneNumber)
}
static displayLableAndValidateData_Managements_Brownmule(detail_brown){
  cy.contains('การจัดการบัญชีม้าน้ำตาล',{timeout:20000})
  cy.contains('มาตรการจัดการ')
  cy.contains('ยอดเงินที่ป้องกันความเสียหาย/ยอดเงินคงเหลือ')
  cy.contains('วันที่ประกาศ ม้าน้ำตาล')
  cy.contains('วันที่ประกาศ ม้าเทาอ่อน')
  cy.contains('วันที่ประกาศ ม้าเทาเข้ม')
  cy.contains('วันที่ประกาศ ม้าดำ')
  cy.contains('รายละเอียด Case')
  cy.contains('วันที่ปลด ม้าน้ำตาล')
  cy.contains('วันที่ปลด ม้าเทาอ่อน')
  cy.contains('วันที่ปลด ม้าเทาเข้ม')
  cy.contains('วันที่ปลด ม้าดำ')
  // ValidateData
  cy.get('#counterMeasureDetail',{timeout:20000}).should('have.value',detail_brown.counterMeasureDetail)
  cy.get('#remainingAmount').should('have.value',detail_brown.remainingAmount)
  cy.get('#caseDetail').should('have.value',detail_brown.caseDetail)
  // cy.get('#confirmDateTime').should('have.value',detail_brown.confirmDateTime)
  cy.get('#withdrawBrownMuleDate').should('have.value',detail_brown.brownMuleWithdrawDate)
}
static displayLable_DetailBank_Brownmule(detail_brown){
  cy.contains('ธนาคารผู้บันทึกข้อมูล',{timeout:20000})
  cy.contains('ธนาคารผู้แจ้ง')
  cy.contains('รหัสธนาคารผู้แจ้ง')
  cy.contains('วันที่และเวลาแจ้ง')
  cy.contains('ธนาคารผู้ปรับปรุง')
  cy.contains('รหัสธนาคารปรับปรุง')
  cy.contains('วันที่และเวลาปรับปรุง (พ.ศ.)')
  // ValidateData
  cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(1) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input',{timeout:20000})
  .should('have.value',detail_brown.createByBankName)
  cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(2) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
  .should('have.value',detail_brown.createByBankCode)
  cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(3) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
  .should('have.value',detail_brown.createDateTime)
  cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(1) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
  .should('have.value',detail_brown.updateByBankName)
  cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(2) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
  .should('have.value',detail_brown.updateByBankCode)
  cy.get(':nth-child(4) > .MuiStack-root > .MuiGrid-spacing-xs-3 > :nth-child(3) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > .MuiInputBase-input')
  .should('have.value',detail_brown.updateByBankCode)
}

static Trasition_Account_Type_Display(personalType){
    cy.get('.css-ydwsr3').should('be.visible')
    cy.contains(personalType,{timeout:30000})
}
static Trasition_OwnerID_Display(owneridcard){
  cy.get('.css-4tctn4').should('be.visible')
    cy.contains(owneridcard,{timeout:20000})
}
static Trasition_fullName_Display(fullName){
  cy.get('.css-dfgc0x').should('be.visible')
    cy.contains(fullName,{timeout:20000}).should('have.text',fullName)
}
static Trasition_fraudLevel_Display(fraudLevel){
  cy.get('.css-1pie3mq').should('be.visible')
    cy.contains(fraudLevel,{timeout:20000})
}
static Trasition_refCode_Display(refCode){
  cy.get('.css-12g12jx').should('be.visible')
    cy.contains(refCode,{timeout:20000})
}
static Trasition_currentDateTime_Display(currentDateTime){
  cy.get('.css-x5kyiw').should('be.visible')
    cy.contains(currentDateTime,{timeout:20000})
}
static Mule_History_Trasition_ownerIdCard_Display(ownerIdCard,mulecount){
  // cy.log(mulecount)
  cy.contains(ownerIdCard,{timeout:20000})
  cy.get(Tran_ownerIdCard).eq(1).should('have.text',ownerIdCard)
}
static Mule_History_Trasition_fraudLevel_Display(fraudLevel,mulecount){
  // cy.log(mulecount)
  cy.contains(fraudLevel,{timeout:20000})
  cy.get(Tran_fraudLevel).eq(1).should('have.text',fraudLevel)
}

static ClickSearch (){
  cy.contains('ค้นหา').click()
}
static ClickBack (){
  cy.contains('ย้อนกลับ').click()
  cy.wait(300)
}
static fillInSenderName(name){
  cy.get(NAME_MULE_SEARCH).eq(0).type(name)
  cy.wait(2000)
}
static fillInSenderSureName(surename){
  cy.get(SURENAME_MULE_SEARCH).eq(0).type(surename)
  cy.wait(2000)
}
static fillInSenderRefCode(refcode){
  cy.get(REFCODE_MULE_SEARCH).eq(0).type(refcode)
  cy.wait(2000)
}
static fillInSenderAccount_number(accountNumber){
  cy.get(ACCOUNT_ID_MULE_SEARCH).eq(0).type(accountNumber)
  cy.wait(2000)
}
static fillInSenderBank_Name(bankname){
  cy.get(NAME_BANK_MULE_SEARCH).eq(0).type(`${bankname}{enter}`)
  cy.wait(2000)
}
static fillInSenderBank_Name_V2(bankname){
  cy.get(NAME_BANK_MULE_SEARCH).eq(0).click()
  cy.contains(`${bankname}`).eq(0).click();
  cy.wait(2000)
}
static ClickRowperPage_mule_transaction() {
  cy.wait(2000);
  cy.get('div[role="button"][aria-haspopup="listbox"]').eq(1).scrollIntoView().click();
  cy.get('p.MuiTablePagination-displayedRows.css-2s7mfa')
    .eq(1)
    .invoke('text')
    .then((text) => {
      cy.log(text);
      const totalItems = parseInt(text.match(/of (\d+)/)[1], 10);
      cy.log(`Total items: ${totalItems}`);
      if (totalItems >= 11 && totalItems <= 25) {
        cy.contains('li', '25').click();
      } else if (totalItems >= 26 && totalItems <= 50) {
        cy.contains('li', '50').click();
      } else if (totalItems >= 51 && totalItems <= 100) {
        cy.contains('li', '100').click();
      } else {
        cy.log('No action required for this range');
      }
    });
}

static Websearch_displayErrorMessage(errorMessage){
  // cy.wait(5000)
  // cy.get('div[class="MuiTypography-root MuiTypography-body1 css-1ugr89f"]').should('be.visible')
  cy.contains(errorMessage, { timeout: 30000 })
}
static ValidateDataInWeb(testdata){
  cy.get(':nth-child(1) > .css-w61z10').should('have.text',testdata.personalId)
  cy.get(':nth-child(1) > .css-110vrq7').should('have.text',testdata.bank)
  cy.get(':nth-child(1) > .css-vsjrsc').should('have.text',testdata.account_number)
  cy.get(':nth-child(1) > .css-1evxd7r').should('have.text',testdata.name)
  cy.get(':nth-child(1) > .css-1m5lpni').should('have.text',testdata.status)
}
static ValidateDataInWebForPersonalIDNull(testdata){
  cy.get(':nth-child(1) > .css-w61z10').should('be.empty')
  cy.get(':nth-child(1) > .css-110vrq7').should('have.text',testdata.bank)
  cy.get(':nth-child(1) > .css-vsjrsc').should('have.text',testdata.account_number)
  cy.get(':nth-child(1) > .css-1evxd7r').should('have.text',testdata.name)
  cy.get(':nth-child(1) > .css-1m5lpni').should('have.text',testdata.status)
}
static ValidateDataInDB(testdata,personalId,firstName,accountNumber){
  expect(personalId).to.equal(testdata.personalId);
  expect(firstName).to.equal(testdata.name);
  expect(accountNumber).to.equal(testdata.account_number);
}
static ValidateDataInDBForPersonalIDNull(testdata,personalId,firstName,accountNumber){
  // expect(personalId).to.equal(testdata.personalId);
  expect(personalId).to.be.null
  expect(firstName).to.equal(testdata.name);
  expect(accountNumber).to.equal(testdata.account_number);
}
static ValidateDataInDB1(testdata,personalId,firstName,accountNumber,lastName){
  expect(personalId).to.equal(testdata.personal_Id);
  expect(firstName).to.equal(testdata.name_o);
  expect(lastName).to.equal(testdata.last_name_o);
  expect(accountNumber).to.equal(testdata.account_number);
}
static ValidateDataInDBcancel(testdata,inputpersonalId,inputaccountnumber){
  expect(inputpersonalId).to.equal(testdata.personal_Id);
  expect(inputaccountnumber).to.equal(testdata.account_number);
}
static ValidateDataInDBcancel_100_record(testdata, inputpersonalId, inputaccountnumber) {
  for (let i = 0; i < 100; i++) {
    expect(inputpersonalId[i]).to.equal(testdata[`personalId_${i + 1}`]);
    expect(inputaccountnumber[i]).to.equal(testdata[`account_number_${i + 1}`]);
  }
}

static ValidateDataInDBExchangeAccount(testdata,name,accountNumber){
  expect(name).to.equal(testdata.name);
  expect(accountNumber).to.equal(testdata.account_number);
}

}