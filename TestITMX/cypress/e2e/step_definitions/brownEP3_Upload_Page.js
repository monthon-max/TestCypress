import { should } from "chai"

const CFR_WEB_LINK = 'a[class="text-decoration-none validate-url"]'


export class BrownmuleEP3 {

  static checkDarkBrownMuleRegistry(){
    cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
    cy.wait(2000)
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
    cy.contains('Welcome',{timeout:20000})
    cy.contains('Central Fraud Registry').click()
    cy.contains('Dark Brown Mule Registry').click()
}
  static checkReportMuleRegistry(){
    cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
    cy.wait(2000)
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
    cy.contains('Welcome',{timeout:20000})
    cy.contains('Report').click()
}
  static checkDarkBrownMuleRegistry_frist(){
    cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
    cy.wait(2000)
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
    cy.contains('Welcome',{timeout:20000})
    cy.contains('Central Fraud Registry').click()
}
static IlookforbuttonDarkBrownMuleRegistry(){
  cy.contains("Dark Brown Mule Registry").should('be.visible')
}
static IlookforbuttonWaryJurustic(){
  cy.contains("Wary Juristic Mule Report").should('be.visible')
}
static download_create_dark_brown(){
  cy.contains('ดาวน์โหลดเทมเพลตสำหรับการนำเข้าข้อมูล').click()
  cy.wait(3000)
}
static IDontSeeforbuttonDarkBrownMule(){
  cy.contains("Dark Brown Mule Registry").should('not.exist');
}
static IDontSeeforbuttonWaryJuristic(){
  cy.contains("Wary Juristic Mule Report")
}
static verifyFileDownloaded_dark_brown(fileName) {
  const downloadFolder = 'cypress/downloads/' // โฟลเดอร์ที่ไฟล์จะถูกบันทึก
    cy.readFile(`${downloadFolder}${fileName}`).should('exist') // ตรวจสอบว่าไฟล์ดาวน์โหลดแล้ว
}
static uploadFileMasterCaseDarkBrownMule(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Brown_mule_EP3_Upload/'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(/\.xlsx$/)
  })
  cy.get('#search').click()
}
static uploadFileDarkBrownMule_Negative(fileName,fileexten){
  cy.wait(1000)
  let uploadFile = `cypress/fixtures/Brown_mule_EP3_Upload/${fileName}.${fileexten}`;
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(new RegExp(`\.${fileexten}$`));
  })
  cy.get('#search').click()
}
static displayDarkBrown(scenario1){
  cy.fixture(scenario1).then(scenario1 =>{
    cy.contains("นำเข้าสำเร็จ:",{timeout: 30000})
    cy.contains("นำเข้าไม่สำเร็จ:")
    cy.contains("โดยมีรายละเอียดรายการที่ไม่สำเร็จดังนี้")
    cy.contains("รายการที่")
    cy.contains("ประเภทคำสั่ง")
    cy.contains("หมายเลขบัตรประชาชน/หนังสือเดินทาง/นิติบุคคล")
    cy.contains("รหัสธนาคารเจ้าของบัญชี")
    cy.contains("เลขบัญชี")
    cy.contains("ชื่อ บัญชีที่ต้องสงสัย")
    cy.contains("นามสกุล บัญชีที่ต้องสงสัย")
    cy.contains("ผลการนำเข้าข้อมูล")
    cy.contains("รายละเอียดการนำเข้า")
  }) 
}
static displaylist_DarkBrown(TemplateInsertBrownMule){
  cy.fixture(TemplateInsertBrownMule).then(testdata =>{
    cy.contains("ผลการนำเข้าข้อมูลม้าน้ำตาล",{timeout: 30000})
    cy.get('#main > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-vu7j52 > div:nth-child(1) > div > div.MuiStack-root.css-1n3luak > p.MuiTypography-root.MuiTypography-body1.css-1ugr89f')
    .should('have.text',testdata.list_all)
    cy.get('#main > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-vu7j52 > div:nth-child(1) > div > div.MuiStack-root.css-1n3luak > p.MuiTypography-root.MuiTypography-body1.css-1lwhxy0')
    .should('have.text',testdata.list_pass)
    cy.get('#main > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-vu7j52 > div:nth-child(1) > div > div.MuiStack-root.css-1n3luak > p.MuiTypography-root.MuiTypography-body1.css-9juiwq')
    .should('have.text', testdata.list_fail)
  }) 
}
static ConfirmDarkBrown(){
  cy.get('#confirm').click()
  cy.get('.MuiButton-textPrimary').click()
}
static getIDuploadINFO_Dark(){
  const filename = Cypress.env("updatedFileName");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}
static getIDuploadINFO_Dark_Second(){
  const filename = Cypress.env("updatedFileName2");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}
static getIDuploadINFO_Dark_Second(){
  const filename = Cypress.env("updatedFileName2");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}
static DeletedDB_DarkBrown_upload_INFO(){
  const filename = Cypress.env("updatedFileName");
  const query = BrownmuleEP3.DELETE_DarkBrown_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}
static DeletedDB_DarkBrown_upload_INFO_Second(){
  const filename = Cypress.env("updatedFileName2");
  const query = BrownmuleEP3.DELETE_DarkBrown_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}
static Query_DarkBrown_Upload_INFO(filename) {
  return `
    SELECT ID FROM BROWN_MULE_UPLOAD_FILE_INFO eaufi WHERE FILE_NAME = '${filename}.xlsx'
  `;
}
static Query_DarkBrown_Upload_INFO_For_Filename(filename) {
  return `
    SELECT FILE_NAME FROM	BROWN_MULE_UPLOAD_FILE_INFO bmufi WHERE FILE_NAME = '${filename}.xlsx'
  `;
}
static DELETE_DarkBrown_Upload_INFO(filename) {
  return `
    DELETE FROM BROWN_MULE_UPLOAD_FILE_INFO eaufi WHERE FILE_NAME = '${filename}.xlsx'
  `;
}
static getIDuploadDetail_Dark(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_Detail(idinfo);
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}
static getIDuploadDetail_Dark_Success(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_Detail_Success(idinfo);
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}
static getIDuploadDetail_Dark_find_at_detail_id(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_Detail_DETAIL_ID(idinfo);
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}
static getIDuploadDetail_Dark_For100record(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_Detail(idinfo);
  // ถ้า error มันหาไม่เจอ ให้ เพิ่ม กำหนด วินาทีเอา
  cy.wait(12000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}
static getIDuploadDetail_Dark(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_Detail(idinfo);
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}
static DeletedDB_DarkBrown_upload_Detail(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = BrownmuleEP3.DELETE_DarkBrown_Upload_Detail(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}
static Query_DarkBrown_Upload_Detail(id) {
  return `
    SELECT INPUT_PERSONAL_ID FROM BROWN_MULE_UPLOAD_FILE_DETAIL eaufi WHERE FILE_INFO_ID = '${id}' ORDER BY INDEX_NUMBER ASC
  `;
}
static DELETE_DarkBrown_Upload_Detail(id) {
  return `
    DELETE FROM BROWN_MULE_UPLOAD_FILE_DETAIL eaufi WHERE FILE_INFO_ID = '${id}'
  `;
}
static Query_DarkBrown_Upload_Detail_Success(id) {
  return `
    SELECT INPUT_PERSONAL_ID FROM BROWN_MULE_UPLOAD_FILE_DETAIL eaufi WHERE FILE_INFO_ID = '${id}' AND STATUS_DETAIL = 'SUCCESS' ORDER BY INDEX_NUMBER ASC
  `;
}
static Query_DarkBrown_Upload_Detail_DETAIL_ID(id) {
  return `
    SELECT DETAIL_ID FROM BROWN_MULE_UPLOAD_FILE_DETAIL eaufi WHERE FILE_INFO_ID = '${id}' AND STATUS_DETAIL = 'SUCCESS' ORDER BY INDEX_NUMBER ASC
  `;
}
static ValidateDataInDB_DarkBrown(testdata,personalId,name,accountNumber,lastname){
  expect(personalId).to.equal(testdata.personalId);
  expect(name).to.equal(testdata.name);
  expect(accountNumber).to.equal(testdata.account_number);
  expect(lastname).to.equal(testdata.lastname);
}
static QueryDarkBrownMule_REPO(fileName){
  const iddetail = Cypress.env("IDuploadDetail");
  const query = BrownmuleEP3.Query_DarkBrown_REPO(iddetail);
  return BrownmuleEP3.processResultsBrownMule_DarkBrown(query).then((decryptedResults) => {
    const personalId = decryptedResults[0].PERSONAL_ID;
    const name = decryptedResults[0].FIRST_NAME;
    const lastname = decryptedResults[0].LAST_NAME;
    const accountNumber = decryptedResults[0].accountNumber;
    cy.fixture(fileName).then((testdata) => {
      BrownmuleEP3.ValidateDataInDB_DarkBrown(testdata,personalId,name,accountNumber,lastname)
    });
  });
}
static async QueryDarkBrownMule_REPO_ForLoop(fileName) {
  const iddetail = Cypress.env("IDuploadDetail_all"); // log2
  let i = 0
  for (const id of iddetail) {
    const query = BrownmuleEP3.Query_DarkBrown_REPO(id);
    await BrownmuleEP3.processResultsBrownMule_DarkBrown(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].PERSONAL_ID;
      const name = decryptedResults[0].FIRST_NAME;
      const lastname = decryptedResults[0].LAST_NAME;
      const accountNumber = decryptedResults[0].accountNumber;
      cy.log(`Loop ${i}: id = ${id}`);
      cy.fixture(fileName).then((testdata) => {
        expect(personalId).to.equal(testdata[`personalId_${i}`]);
        expect(name).to.equal(testdata[`name_${i}`]);
        expect(accountNumber).to.equal(testdata[`account_number_${i}`]);
        expect(lastname).to.equal(testdata[`lastname_${i}`]);
      });
      i++
    });
  }
}
static async QueryDarkBrownMule_REPO_ForLoop_Senario4(fileName) {
  const iddetail = Cypress.env("IDuploadDetail_all"); // log2
  let i = 0
  for (const id of iddetail) {
    const query = BrownmuleEP3.Query_DarkBrown_REPO(id);
    await BrownmuleEP3.processResultsBrownMule_DarkBrown(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].PERSONAL_ID;
      const name = decryptedResults[0].FIRST_NAME;
      const lastname = decryptedResults[0].LAST_NAME;
      const accountNumber = decryptedResults[0].accountNumber;
      cy.log(`Loop ${i}: id = ${id}`);
      cy.fixture(fileName).then((testdata) => {
        expect(personalId).to.equal(testdata[`personalId_${i}`]);
        expect(name).to.equal(testdata[`Name_${i}`]);
        expect(accountNumber).to.equal(testdata[`account_number_${i}`]);
        expect(lastname).to.equal(testdata[`Lastname_${i}`]);
      });
      i++
    });
  }
}
static async QueryDarkBrownMule_REPO_ForLoop_find_at_detail_id(fileName) {
  const iddetail = Cypress.env("IDuploadDetail_all"); // log2
  let i = 0
  for (const id of iddetail) {
    const query = BrownmuleEP3.Query_DarkBrown_REPO_find_at_detail_id(id);
    await BrownmuleEP3.processResultsBrownMule_DarkBrown(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].PERSONAL_ID;
      const name = decryptedResults[0].FIRST_NAME;
      const lastname = decryptedResults[0].LAST_NAME;
      const accountNumber = decryptedResults[0].accountNumber;
      cy.log(`Loop ${i}: id = ${id}`);
      cy.fixture(fileName).then((testdata) => {
        expect(personalId).to.equal(testdata[`personalId_${i}`]);
        expect(name).to.equal(testdata[`name_${i}`]);
        expect(accountNumber).to.equal(testdata[`account_number_${i}`]);
        expect(lastname).to.equal(testdata[`lastname_${i}`]);
      });
      i++
    });
  }
}
static async QueryDarkBrownMule_REPO_ForLoop_Success(fileName) {
  const iddetail = Cypress.env("IDuploadDetail_all"); // log2
  let i = 0
  for (const id of iddetail) {
    const query = BrownmuleEP3.Query_DarkBrown_REPO(id);
    await BrownmuleEP3.processResultsBrownMule_DarkBrown(query).then((decryptedResults) => {
      const personalId = decryptedResults[0].PERSONAL_ID;
      const name = decryptedResults[0].FIRST_NAME;
      const lastname = decryptedResults[0].LAST_NAME;
      const accountNumber = decryptedResults[0].accountNumber;
      cy.log(`Loop ${i}: id = ${id}`);
      cy.fixture(fileName).then((testdata) => {
        expect(personalId).to.equal(testdata[`personalId_Success_${i}`]);
        expect(name).to.equal(testdata[`name_Success_${i}`]);
        expect(accountNumber).to.equal(testdata[`account_number_Success_${i}`]);
        expect(lastname).to.equal(testdata[`lastname_Success_${i}`]);
      });
      i++
    });
  }
}

static DeletedDB_DarkBrown_upload_REPO(){
  const iddetail = Cypress.env("IDuploadDetail");
  // cy.log(filename)
  const query = BrownmuleEP3.DELETE_DarkBrown_REPO(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}
static DeletedDB_DarkBrown_upload_REPO_ForLoop(){
  const iddetail = Cypress.env("IDuploadDetail_all");
  iddetail.forEach((id) => {
    const query = `DELETE FROM BROWN_MULE_REPO bmr  WHERE PERSONAL_ID = '${id}'`;
    cy.wait(2000);
    cy.task('queryOracleDatabase', { query }).then((result) => {
      cy.log(result);
    });
  });
}
static DeletedDB_DarkBrown_upload_REPO_ForLoop_V1(){
  const iddetail = Cypress.env("IDuploadDetail_all");
  const query = BrownmuleEP3.DELETE_DarkBrown_REPO_V1(iddetail);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  });
}

static Query_DarkBrown_REPO(personal) {
  return `
   SELECT PERSONAL_ID,FIRST_NAME,ACCOUNT_NUMBER,LAST_NAME FROM BROWN_MULE_REPO bmr  WHERE PERSONAL_ID = '${personal}'
  `;
}
static Query_DarkBrown_REPO_find_at_detail_id(personal) {
  return `
   SELECT PERSONAL_ID,FIRST_NAME,ACCOUNT_NUMBER,LAST_NAME FROM BROWN_MULE_REPO bmr  WHERE CREATE_FILE_DETAIL_ID = '${personal}'
  `;
}
static DELETE_DarkBrown_REPO(personal) {
  return `
   DELETE FROM BROWN_MULE_REPO bmr  WHERE PERSONAL_ID = '${personal}'
  `;
}
static DELETE_DarkBrown_REPO_V1(personal) {
  return `
   DELETE FROM BROWN_MULE_REPO WHERE PERSONAL_ID IN (${personal.map(id => `'${id}'`).join(", ")})  `;
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
static QueryDarkBrownMule_REPO_For_PhoneNumber(fileName){
  const iddetail = Cypress.env("IDuploadDetail");
  const query = BrownmuleEP3.Query_DarkBrown_REPO_For_PhoneNumber(iddetail);
  BrownmuleEP3.decryptString_1(query).then(() => {
    const decryptedResult = Cypress.env("decryptString1");
    cy.log(decryptedResult);
    cy.fixture(fileName).then((testdata) => {
      expect(decryptedResult).to.equal(testdata.phonenumber_1);
    });
  });
}
static Query_DarkBrown_REPO_For_PhoneNumber(personal) {
  return `
   SELECT PHONE_NUMBER FROM BROWN_MULE_REPO WHERE PERSONAL_ID = '${personal}'
  `;
}
static decryptString_1(query) {
  return cy.task('queryOracleDatabase', { query }).then(result => {
    cy.log("Database Query Result:", JSON.stringify(result));
    if (!result || result.length === 0) {
      throw new Error('Query returned no results.');
    }
    const encryptedValue = result[0][0];
    cy.log('Encrypted Value:', encryptedValue);
    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-exchange-account/api/aes/decrypt",
      body: encryptedValue,
      headers: { "Content-Type": "text/plain" },
      failOnStatusCode: false,
    }).then(response => {
      cy.log(`Response Status: ${response.status}`);
      cy.log("body", response.body);
      Cypress.env("decryptString1", response.body);
    });
  });
}
static QueryDarkBrownMule_INFO_For_Filename(){
  const filename = Cypress.env("updatedFileName");
  const query = BrownmuleEP3.Query_DarkBrown_Upload_INFO_For_Filename(filename);
  cy.task('queryOracleDatabase', { query }).then(result => {
    cy.log("Database Query Result:", JSON.stringify(result));
    if (!result || result.length === 0) {
      throw new Error('Query returned no results.');
    }
    let validateFilename = `${filename}.xlsx`
    const filename_DB = result[0][0];
    // cy.log("filename is :",filename_DB)
    // cy.log("filename is :" , filename);
    expect(filename_DB).to.equal(validateFilename);
})
}
static displayErrorMessage_DarkBrownMule(errorMessage){
  cy.get('div[class="MuiTypography-root MuiTypography-body1 css-1ugr89f"]').should('be.visible')
  cy.contains(errorMessage, { timeout: 30000 })
}
static displaylist_data_not_success_darkbrownmule(TemplateInsertBrownMule,num){
  cy.fixture(TemplateInsertBrownMule).then(testdata =>{
    cy.contains("โดยมีรายละเอียดรายการที่ไม่สำเร็จดังนี้",{timeout: 30000})
for (let i = 1; i <= num; i++) {
  cy.get('div[role="rowgroup"] div[role="row"]').eq(i)
    .within(() => {
      cy.get('.MuiTypography-root.css-1ugr89f').eq(0).should('have.text', testdata[`list_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(1).should('have.text', testdata[`cmd_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(2).should('have.text', testdata[`personal_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata[`banknumber_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata[`accountnumber_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata[`name_${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata[`lastname_${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata[`errorNumber_${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata[`MessageError_${i}`]);
    });
}
  }) 
}

static verifyFileDownloaded_wary_juristic_mule() {
  cy.contains("Wary Juristic Mule Report").click()
  cy.get('table.MuiTable-root.css-14xemkg')
  .within(() => {
    cy.get('thead.MuiTableHead-root.css-1w3ooo8').within(()=>{
      cy.get('div.MuiBox-root.css-1y525pm').should('have.text' ,'No')
      cy.get('div.MuiBox-root.css-1f2qhs8').eq(0).should('have.text' ,'Report')
      cy.get('div.MuiBox-root.css-1f2qhs8').eq(1).should('have.text' ,'Create Date')
      cy.get('div.MuiBox-root.css-1f2qhs8').eq(2).should('have.text' ,'Create Time')
      cy.get('div.MuiBox-root.css-1f2qhs8').eq(3).should('have.text' ,'Size (KB)')
      cy.get('div.MuiBox-root.css-1iisq5m').should('have.text' ,'Actions')
    })
    cy.get('tbody.MuiTableBody-root.css-1q3k3jy').within(()=>{
      cy.get('td.MuiTableCell-sizeMedium.css-1xol1ao').eq(0).should('have.text', '1')
      cy.get('td.MuiTableCell-sizeMedium.css-13gfb4l').eq(0).invoke('text').then((text) => {
        const cellText = text.trim();
        Cypress.env("filenameReport",cellText);
      });
      cy.get('td.MuiTableCell-sizeMedium.css-1jt1p77').eq(0).should('not.be.empty')
      cy.get('td.MuiTableCell-sizeMedium.css-1atg23e').eq(0).should('not.be.empty')
      cy.get('td.MuiTableCell-sizeMedium.css-2o6byz').eq(0).should('not.be.empty')
      cy.get('td.MuiTableCell-sizeMedium.css-155dfca').eq(0).should('be.visible')
    })
  });
}
static validateFilename(){
  const filenameReport = Cypress.env("filenameReport");
  cy.get(':nth-child(1) > .css-155dfca > .MuiBox-root > .MuiButtonBase-root').click()
  cy.log(filenameReport);
  cy.wait(5000)
  const downloadFolder = 'cypress/downloads/' // โฟลเดอร์ที่ไฟล์จะถูกบันทึก
  cy.readFile(`${downloadFolder}${filenameReport}`).should('exist') // ตรวจสอบว่าไฟล์ดาวน์โหลดแล้ว
}



}