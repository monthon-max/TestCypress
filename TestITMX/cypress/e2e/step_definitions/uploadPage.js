import { QueryPage } from "./Querypage";
import { Databasequery } from "./DatabaseQuery";
import { WebsearchPage } from "./websearchPage";

const DOWNLOAD =  'button.css-1xoml6v'
const CONFIRM = '#confirm'
const assert = require('assert');


class UploadPage {
  static download(){
    cy.get(DOWNLOAD).click()
  }
  static download_create(){
    cy.contains('ดาวน์โหลดเทมเพลตส์สำหรับ “สร้าง”').click()
    cy.wait(3000)
  }
  static downloadtemplatedarkbrownmuleregister(){
    cy.contains('ดาวน์โหลดเทมเพลตส์อื่นๆ')
    cy.contains('ดาวน์โหลดเทมเพลตส์อื่นๆ').click()
    cy.contains('ดาวน์โหลดเทมเพลตส์สำหรับ “ยกเลิก”')
    cy.contains('ดาวน์โหลดเทมเพลตส์สำหรับ “ยกเลิก”').click()
    cy.wait(3000)
  }
  static verifyFileDownloaded(fileName) {
    const downloadFolder = 'cypress/downloads/' // โฟลเดอร์ที่ไฟล์จะถูกบันทึก
      cy.readFile(`${downloadFolder}${fileName}`).should('exist') // ตรวจสอบว่าไฟล์ดาวน์โหลดแล้ว
  }
    
  static verifyFileContent(fileName, expectedContent) {
    const downloadFolder = 'cypress/downloads/'
      cy.readFile(`${downloadFolder}${fileName}`, 'utf8')
        .should('contain', expectedContent) // ตรวจสอบเนื้อหาภายในไฟล์
  }

  static Confirm(){
    cy.get(CONFIRM).click()
    // cy.contains("การนำเข้าข้อมูลม้าน้ำตาล")
      cy.contains("ยืนยันการเพิ่มข้อมูล (ที่นำเข้าสำเร็จ)")
      cy.log(8000)
      cy.get('button.MuiButtonBase-root.css-5yetxq').click()
    }
  static ConfirmExchange(){
    cy.get('#confirm').click()
    cy.get('.MuiButton-textPrimary').click()
  }
    static display(scenario1){
      cy.fixture(scenario1).then(scenario1 =>{
        // cy.contains()
        // cy.contains("ผลการนำเข้าข้อมูลม้าน้ำตาล",{timeout: 30000})
        // cy.contains("ข้อมูลม้าน้ำตาลทั้งหมดในไฟล์:")
        cy.contains("นำเข้าสำเร็จ:")
        cy.contains("นำเข้าไม่สำเร็จ:")
        cy.get('div[aria-rowindex="1"]')
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
    static displaylist(TemplateInsertBrownMule){
      cy.fixture(TemplateInsertBrownMule).then(testdata =>{
        cy.get('#main > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-vu7j52 > div:nth-child(1) > div > div.MuiStack-root.css-1n3luak > p.MuiTypography-root.MuiTypography-body1.css-1ugr89f')
        .should('have.text',testdata.list_all)
        cy.get('#main > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-vu7j52 > div:nth-child(1) > div > div.MuiStack-root.css-1n3luak > p.MuiTypography-root.MuiTypography-body1.css-1lwhxy0')
        .should('have.text',testdata.list_pass)
        cy.get('#main > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-vu7j52 > div:nth-child(1) > div > div.MuiStack-root.css-1n3luak > p.MuiTypography-root.MuiTypography-body1.css-9juiwq')
        .should('have.text', testdata.list_fail)
      }) 
    }
    static displaylist_data_not_success(TemplateInsertBrownMule,num){
      cy.fixture(TemplateInsertBrownMule).then(testdata =>{
        cy.contains("โดยมีรายละเอียดรายการที่ไม่สำเร็จดังนี้",{timeout: 30000})
    for (let i = 1; i <= num; i++) {
      cy.get('div[role="rowgroup"] div[role="row"]').eq(i)
        .within(() => {
          cy.get('.MuiTypography-root.css-1ugr89f').eq(0).should('have.text', testdata[`list_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(1).should('have.text', testdata[`cmd_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(2).should('have.text', testdata[`personal_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata[`name_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata[`accountnumber_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata[`accountname_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata[`result_trasition${i}`]);
          cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata[`detailresult_trasition${i}`]);
        });
    }
      }) 
    }
    static displayExchange(scenario1){
      cy.fixture(scenario1).then(scenario1 =>{
        // cy.contains()
        // cy.contains("ผลการนำเข้าข้อมูลม้าน้ำตาล",{timeout: 30000})
        // cy.contains("ข้อมูลม้าน้ำตาลทั้งหมดในไฟล์:")
        cy.contains("นำเข้าสำเร็จ:")
        cy.contains("นำเข้าไม่สำเร็จ:")
        cy.contains("โดยมีรายละเอียดรายการที่ไม่สำเร็จดังนี้")
        cy.contains("รายการที่")
        cy.contains("ประเภทคำสั่ง")
        cy.contains("หมายเลขนิติบุคคล")
        cy.contains("ชื่อเจ้าของบัญชี")
        cy.contains("เลขบัญชี")
        cy.contains("ธนาคารเจ้าของบัญชี")
        cy.contains("ผลการนำเข้าข้อมูล")
        cy.contains("รายละเอียดการนำเข้า")
      }) 
    }

  // ฟังก์ชันใหม่เพื่อเช็คข้อความจากข้อมูลใน testdata.json
  static checkMessageFromData() {
    cy.fixture('testdata').then((data) => {
      const expectedText = data.details // ดึงข้อความจาก JSON
      cy.get('body').should('include.text', expectedText) // ตรวจสอบข้อความ
    })
  }

 static displayshowdetaiwhenupload(list){
   cy.fixture(list).then(testdata =>{
    cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata.list)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata.cmd)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata.personal_Id)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata.bank_id)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata.account_number)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata.name_o)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(9).should('have.text', testdata.last_name_o)
    cy.get('.MuiTypography-root.css-1ugr89f').eq(10).should('have.text', testdata.input_status)
    cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false })
    cy.get('.MuiTypography-root.css-1ugr89f').eq(11).should('have.text', testdata.details)
  })
}

static displayshowdetailwhenuploadrow2(list){
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata.list)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata.cmd)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata.personal_Id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata.bank_id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata.account_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata.name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(9).should('have.text', testdata.last_name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(10).should('have.text', testdata.input_status)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(12).should('have.text', testdata.list_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(13).should('have.text', testdata.cmd_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(14).should('have.text', testdata.personal_Id_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(15).should('have.text', testdata.bank_id_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(16).should('have.text', testdata.account_number_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(17).should('have.text', testdata.name_o_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(18).should('have.text', testdata.last_name_o_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(19).should('have.text', testdata.input_status_2)

   cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false })

   cy.get('.MuiTypography-root.css-1ugr89f').eq(11).should('have.text', testdata.details)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(20).should('have.text', testdata.details_2)

 })
}

static displayshowdetaiwhenuploadexchangeaccountregistry(list){
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata.list)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata.cmd)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata.legal_entity_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata.name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata.bank_id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata.account_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(9).should('have.text', testdata.input_status)
   cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false })
   cy.get('.MuiTypography-root.css-1ugr89f').eq(10).should('have.text', testdata.details)

 })
}
static displayshowdetailwhenaddexchangeaccountregistry(list){
  cy.wait(5000)
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTableCell-root').eq(6).should('have.text', testdata.juristic_id_add)
   cy.get('.MuiTableCell-root').eq(7).should('have.text', testdata.bankcodesr_add)
   cy.get('.MuiTableCell-root').eq(8).should('have.text', testdata.account_number_add)
   cy.get('.MuiTableCell-root').eq(9).should('have.text', testdata.account_namer_add)
   cy.get('.MuiTableCell-root').eq(10).should('have.text', testdata.statusr_add)
  //  cy.get('.MuiTableCell-root').eq(11).should('have.text', testdata.datetime)
 })
}
static displayshowdetailwhencancelexchangeaccountregistry(list){
  cy.wait(5000)
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTableCell-root').eq(6).should('have.text', testdata.juristic_id_cancel)
   cy.get('.MuiTableCell-root').eq(7).should('have.text', testdata.bankcodesr_cancel)
   cy.get('.MuiTableCell-root').eq(8).should('have.text', testdata.account_numbers_cancel)
   cy.get('.MuiTableCell-root').eq(9).should('have.text', testdata.account_namer_cancel)
   cy.get('.MuiTableCell-root').eq(10).should('have.text', testdata.statusr_cancel)
  //  cy.get('.MuiTableCell-root.css-ry8jbm').eq(11).should('have.text', testdata.datetime)
 })
}

static displayshowdetaiwhenuploadexchangeaccountregistryrow2(list){
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata.list)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata.cmd)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata.legal_entity_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata.name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata.bank_id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata.account_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(9).should('have.text', testdata.input_status)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(11).should('have.text', testdata.list_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(12).should('have.text', testdata.cmd_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(13).should('have.text', testdata.legal_entity_number_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(14).should('have.text', testdata.name_o_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(15).should('have.text', testdata.bank_id_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(16).should('have.text', testdata.account_number_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(17).should('have.text', testdata.input_status_2)

   cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false })
   cy.get('.MuiTypography-root.css-1ugr89f').eq(10).should('have.text', testdata.details)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(18).should('have.text', testdata.details_2)

 })
}

static displayshowdetaiwhenuploadexchangeaccountregistryrow4(list){
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata.list)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata.cmd)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata.legal_entity_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata.name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata.bank_id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata.account_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(9).should('have.text', testdata.input_status)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(11).should('have.text', testdata.list_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(12).should('have.text', testdata.cmd_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(13).should('have.text', testdata.legal_entity_number_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(14).should('have.text', testdata.name_o_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(15).should('have.text', testdata.bank_id_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(16).should('have.text', testdata.account_number_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(17).should('have.text', testdata.input_status_2)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(19).should('have.text', testdata.list_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(20).should('have.text', testdata.cmd_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(21).should('have.text', testdata.legal_entity_number_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(22).should('have.text', testdata.name_o_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(23).should('have.text', testdata.bank_id_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(24).should('have.text', testdata.account_number_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(25).should('have.text', testdata.input_status_3)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(27).should('have.text', testdata.list_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(28).should('have.text', testdata.cmd_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(29).should('have.text', testdata.legal_entity_number_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(30).should('have.text', testdata.name_o_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(31).should('have.text', testdata.bank_id_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(32).should('have.text', testdata.account_number_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(33).should('have.text', testdata.input_status_4)


   cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false })
   cy.get('.MuiTypography-root.css-1ugr89f').eq(10).should('have.text', testdata.details)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(18).should('have.text', testdata.details_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(26).should('have.text', testdata.details_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(34).should('have.text', testdata.details_4)
 })
}

static displayshowdetailwhenuploaddarkbrownmuleregistryrow7(list){
  cy.fixture(list).then(testdata =>{
   cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata.list)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata.cmd)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata.personal_Id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata.bank_id)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata.account_number)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(8).should('have.text', testdata.name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(9).should('have.text', testdata.last_name_o)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(10).should('have.text', testdata.status_code)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(12).should('have.text', testdata.list_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(13).should('have.text', testdata.cmd_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(14).should('have.text', testdata.personal_Id_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(15).should('have.text', testdata.bank_id_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(16).should('have.text', testdata.account_number_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(17).should('have.text', testdata.name_o_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(18).should('have.text', testdata.last_name_o_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(19).should('have.text', testdata.status_code_2)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(21).should('have.text', testdata.list_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(22).should('have.text', testdata.cmd_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(23).should('have.text', testdata.personal_Id_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(24).should('have.text', testdata.bank_id_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(25).should('have.text', testdata.account_number_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(26).should('have.text', testdata.name_o_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(27).should('have.text', testdata.last_name_o_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(28).should('have.text', testdata.status_code_3)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(30).should('have.text', testdata.list_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(31).should('have.text', testdata.cmd_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(32).should('have.text', testdata.personal_Id_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(33).should('have.text', testdata.bank_id_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(34).should('have.text', testdata.account_number_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(35).should('have.text', testdata.name_o_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(36).should('have.text', testdata.last_name_o_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(37).should('have.text', testdata.status_code_4)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(39).should('have.text', testdata.list_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(40).should('have.text', testdata.cmd_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(41).should('have.text', testdata.personal_Id_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(42).should('have.text', testdata.bank_id_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(43).should('have.text', testdata.account_number_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(44).should('have.text', testdata.name_o_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(45).should('have.text', testdata.last_name_o_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(46).should('have.text', testdata.status_code_5)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(48).should('have.text', testdata.list_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(49).should('have.text', testdata.cmd_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(50).should('have.text', testdata.personal_Id_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(51).should('have.text', testdata.bank_id_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(52).should('have.text', testdata.account_number_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(53).should('have.text', testdata.name_o_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(54).should('have.text', testdata.last_name_o_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(55).should('have.text', testdata.status_code_6)

   cy.get('.MuiTypography-root.css-1ugr89f').eq(57).should('have.text', testdata.list_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(58).should('have.text', testdata.cmd_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(59).should('have.text', testdata.personal_Id_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(60).should('have.text', testdata.bank_id_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(61).should('have.text', testdata.account_number_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(62).should('have.text', testdata.name_o_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(63).should('have.text', testdata.last_name_o_7)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(64).should('have.text', testdata.status_code_7)

   cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false })
   cy.get('.MuiTypography-root.css-1ugr89f').eq(11).should('have.text', testdata.details)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(20).should('have.text', testdata.details_2)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(29).should('have.text', testdata.details_3)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(38).should('have.text', testdata.details_4)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(47).should('have.text', testdata.details_5)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(56).should('have.text', testdata.details_6)
   cy.get('.MuiTypography-root.css-1ugr89f').eq(65).should('have.text', testdata.details_7)
 })
}

static displayshowdetailwhenuploadrow25(list) {
  cy.fixture(list).then(testdata => {
    // Loop เช็คข้อมูลแต่ละแถว
    for (let i = 1; i <= 227; i++) {
      const baseIndex = (i - 1) * 9 + 3; // คำนวณ index เริ่มต้นของแต่ละ row

      const fields = [
        `list_${i}`, `cmd_${i}`, `personal_Id_${i}`, `bank_id_${i}`, `account_number_${i}`,
        `name_o_${i}`, `last_name_${i}`, `input_status_${i}`, `details_${i}`
      ];

      fields.forEach((field, index) => {
        if (testdata[field]) {
          const elementIndex = baseIndex + index;

          // Log ข้อมูลที่กำลังตรวจสอบ
          cy.log(`Checking Row ${i}, Field: ${field}, Expected: "${testdata[field]}"`);
          console.log(`Checking Row ${i}, Field: ${field}, Expected: "${testdata[field]}"`);

          // เช็คข้อความที่แสดงบน UI
          cy.get('.MuiTypography-root.css-1ugr89f').eq(elementIndex).should('have.text', testdata[field]);

          // เพิ่มการเปรียบเทียบกับข้อมูลที่คาดหวัง
          cy.get('.MuiTypography-root.css-1ugr89f').eq(elementIndex).should('contain.text', testdata[field]);
        }
      });

      // Scroll ถ้าแถวเกิน 2
      if (i === 2) {
        cy.get('div.rs-table-scrollbar-handle').scrollTo('right', { ensureScrollable: false });
      }
    }
  });
}
static displaylist_data_not_success(TemplateInsertBrownMule,num){
  cy.fixture(TemplateInsertBrownMule).then(testdata =>{
    cy.contains("โดยมีรายละเอียดรายการที่ไม่สำเร็จดังนี้",{timeout: 30000})
for (let i = 1; i <= num; i++) {
  cy.get('div[role="rowgroup"] div[role="row"]').eq(i)
    .within(() => {
      cy.get('.MuiTypography-root.css-1ugr89f').eq(0).should('have.text', testdata[`list_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(1).should('have.text', testdata[`cmd_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(2).should('have.text', testdata[`personal_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(3).should('have.text', testdata[`name_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(4).should('have.text', testdata[`accountnumber_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(5).should('have.text', testdata[`accountname_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(6).should('have.text', testdata[`result_trasition${i}`]);
      cy.get('.MuiTypography-root.css-1ugr89f').eq(7).should('have.text', testdata[`detailresult_trasition${i}`]);
    });
}
  }) 
}
static getIDuploadINFO_Dark_new(){
  const filename = Cypress.env("updatedFile");
  const query = QueryPage.Query_Darkbrownmuleregistry_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}

static getIDuploadINFO_Dark_cancel(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  Cypress.env("IDuploadINFO",result)
  });
}

static getIDuploadDetail_Dark_For_100_record_new(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = QueryPage.Query_Darkbrownmuleregistry_Upload_Detail(idinfo);
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


static async QueryDarkBrownMule_REPO_ForLoop_new(fileName) {
  const iddetail = Cypress.env("IDuploadDetail_all"); // log2
  let i = 0
  for (const id of iddetail) {
    const query = QueryPage.Query_Darkbrownmuleregistry_Upload_REPO(id);
    await UploadPage.processResultsBrownMule_DarkBrown_new(query).then((decryptedResults) => {
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

static processResultsBrownMule_DarkBrown_new(query) {
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

static getIDuploadDetailDarkbrownmuleregistry_cancel(){
  const idinfo = Cypress.env("IDuploadINFO");
  const query = QueryPage.Query_Darkbrownmuleregistry_Upload_Detail_cannel(idinfo);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  const flattenedResult = result.flat(); // รวม array ซ้อนกัน
  cy.log("Flattened Result:", flattenedResult);
  Cypress.env("IDuploadDetail",result)
  Cypress.env("IDuploadDetail_all",flattenedResult)
  });
}

static DeletedDB_upload_INFO_Darkbrownmuleregistry_cancel(){
  const filename = Cypress.env("updatedFileName");
  const query = QueryPage.Query_Darkbrownmuleregistry_Deleted_Upload_INFO(filename);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
  });
}

  static getIDuploadDetailDarkbrownmuleregistry_cancel(fileName){
    const iddetail = Cypress.env("IDuploadDetail");
    const query = QueryPage.Query_Darkbrownmuleregistry_Upload_Detail_cannel(iddetail);
    return UploadPage.processResultsBrownMule_DarkBrown_cancel(query).then((decryptedResults) => {
      const inputpersonalId = decryptedResults[0].INPUT_PERSONAL_ID;
      const inputaccountnumber = decryptedResults[0].INPUT_ACCOUNT_NUMBER;

      
      
      cy.fixture(fileName).then((testdata) => {
        WebsearchPage.ValidateDataInDBcancel(testdata,inputpersonalId,inputaccountnumber)
      });
    });
  }

  static processResultsBrownMule_DarkBrown_cancel(query) {
    return cy.task('queryOracleDatabase', { query }).then((result) => {
      Cypress.env("queryresult", result);
      if (!result || result.length === 0) {
        throw new Error('Query returned no results.');
      }

      const decryptedResults = [];
      const decryptionPromises = result.map((row) => {
        const [INPUT_PERSONAL_ID, INPUT_ACCOUNT_NUMBER] = row;
        const decryptedRow = { INPUT_PERSONAL_ID, INPUT_ACCOUNT_NUMBER};

        cy.log('PERSONAL', INPUT_PERSONAL_ID);
        cy.log(INPUT_ACCOUNT_NUMBER);

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
        const inputpersonalId = decryptIfNotNull(INPUT_PERSONAL_ID).then((decrypted) => {
          if (decrypted !== null) decryptedRow.INPUT_PERSONAL_ID = decrypted;
          cy.log('Decrypted Personal ID:', decryptedRow.INPUT_PERSONAL_ID);
        });

        const inputaccountnumber = decryptIfNotNull(INPUT_ACCOUNT_NUMBER).then((decrypted) => {
          if (decrypted !== null) decryptedRow.INPUT_ACCOUNT_NUMBER = decrypted;
          cy.log('Decrypted Account Number:', decryptedRow.INPUT_ACCOUNT_NUMBER);
        });

        // ใช้ Promise.all เพื่อรอการ decrypt เสร็จ
        return Promise.all([inputpersonalId, inputaccountnumber]).then(() => {
          decryptedResults.push(decryptedRow);
        });
      });

      return Promise.all(decryptionPromises).then(() => decryptedResults);
    });
  }




  static getIDuploadDetailDarkbrownmuleregistry_cancel_100_record(fileName){
    const idinfo = Cypress.env("IDuploadINFO");
    const query = QueryPage.Query_Darkbrownmuleregistry_Upload_Detail_cannel_100_record(idinfo);
    // ถ้า error มันหาไม่เจอ ให้ เพิ่ม กำหนด วินาทีเอา
    cy.wait(12000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    const flattenedResult = result.flat(); // รวม array ซ้อนกัน
    cy.log("Flattened Result:", flattenedResult);
    Cypress.env("IDuploadDetail",result)
    Cypress.env("IDuploadDetail_all",flattenedResult)

    return UploadPage.processResultsBrownMule_DarkBrown_cancel_100_record(query).then((decryptedResults) => {
      const inputpersonalId = decryptedResults[0].INPUT_PERSONAL_ID;
      const inputaccountnumber = decryptedResults[0].INPUT_ACCOUNT_NUMBER;

      cy.log(inputpersonalId)
      cy.log(inputaccountnumber)


      // cy.fixture(fileName).then((testdata) => {
      //   WebsearchPage.ValidateDataInDBcancel_100_record(testdata,inputpersonalId,inputaccountnumber)
      // });
    });
    });
  }

  static processResultsBrownMule_DarkBrown_cancel_100_record(query) {
    return cy.task('queryOracleDatabase', { query }).then((result) => {
      Cypress.env("queryresult", result);
      if (!result || result.length === 0) {
        throw new Error('Query returned no results.');
      }

      const decryptedResults = [];
      const decryptionPromises = result.map((row) => {
        const [INPUT_PERSONAL_ID, INPUT_ACCOUNT_NUMBER] = row;
        const decryptedRow = { INPUT_PERSONAL_ID, INPUT_ACCOUNT_NUMBER};

        cy.log('PERSONAL', INPUT_PERSONAL_ID);
        cy.log(INPUT_ACCOUNT_NUMBER);

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
        const inputpersonalId = decryptIfNotNull(INPUT_PERSONAL_ID).then((decrypted) => {
          if (decrypted !== null) decryptedRow.INPUT_PERSONAL_ID = decrypted;
          cy.log('Decrypted Personal ID:', decryptedRow.INPUT_PERSONAL_ID);
        });

        const inputaccountnumber = decryptIfNotNull(INPUT_ACCOUNT_NUMBER).then((decrypted) => {
          if (decrypted !== null) decryptedRow.INPUT_ACCOUNT_NUMBER = decrypted;
          cy.log('Decrypted Account Number:', decryptedRow.INPUT_ACCOUNT_NUMBER);
        });

        // ใช้ Promise.all เพื่อรอการ decrypt เสร็จ
        return Promise.all([inputpersonalId, inputaccountnumber]).then(() => {
          decryptedResults.push(decryptedRow);
        });
      });

      return Promise.all(decryptionPromises).then(() => decryptedResults);
    });
  }

}
export default UploadPage
