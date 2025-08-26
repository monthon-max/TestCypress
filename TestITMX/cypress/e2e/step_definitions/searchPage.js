// import * as fs from 'fs';

const BANK_CASE_ID_INPUT = '#caseId_Bank'
const From_DATE = '#fromDate'
const END_DATE = '#endDateTime'
const RECEIVER_ACC_NO ='#receiver_account_number'
const SENDER_ACC_NO ='#sender_account_number'
const SEARCH_BUTTON = '#search'
const SCROLL_TABLE = 'div[class="MuiTableContainer-root css-11b7ut5"]'
const ADD_CASE = 'button[aria-label="เพิ่มเคส"]'

class SearchPage {
  static searchBankCaseID(bankcaseid){
    cy.get(BANK_CASE_ID_INPUT).type(bankcaseid)
    cy.get(From_DATE).clear().type('{selectall}{backspace}')
    cy.get(END_DATE).clear().type('{selectall}{backspace}')
    cy.get(SEARCH_BUTTON).click()
  }
  static clickScrollRight(){
    cy.get(SCROLL_TABLE).scrollTo('right')
    cy.wait(1000)
 
  }
  static clickAddCaseFirst(){
    cy.get(ADD_CASE).first().click()
  }
  static searchByCaseIdAndToAccNumber(case_id,to_acc_no){
    cy.get(BANK_CASE_ID_INPUT).clear().type(case_id)
    cy.get(RECEIVER_ACC_NO).type(to_acc_no)
    cy.get(From_DATE).clear().type('{selectall}{backspace}')
    cy.get(END_DATE).clear().type('{selectall}{backspace}')
    cy.get(SEARCH_BUTTON).click()
    cy.wait(5000)
  }
  static searchByCaseId(case_id){
    cy.get(BANK_CASE_ID_INPUT).type(case_id)
    cy.get(SEARCH_BUTTON).click()
    cy.wait(2000)
  }
  static displaySearchResultByCaseId(case_id){
    cy.get('table > tbody > tr > td:nth-child(1)').each(($elm, index, $list)=> {
      const t = $elm.text();
      cy.get('table > tbody > tr > td:nth-child(1)').eq(index).should('have.text',case_id)
    })
  }
  static searchByCaseIdAndToAccNumber(case_id,to_acc_no){
    cy.get(BANK_CASE_ID_INPUT).type(case_id)
    cy.get(RECEIVER_ACC_NO).type(to_acc_no)
    cy.get(SEARCH_BUTTON).click()
    cy.wait(5000)
  }
  static searchByCaseIdAndToAccNumberFromAccNumber(case_id,to_acc_no,from_acc_no){
    cy.get(BANK_CASE_ID_INPUT).type(case_id)
    cy.get(RECEIVER_ACC_NO).type(to_acc_no)
    cy.get(SENDER_ACC_NO).type(from_acc_no)
    cy.get(SEARCH_BUTTON).click()
    cy.wait(5000)
  }
  static searchByCaseIdAndFromAccNumber(case_id,from_acc_no){
    cy.get(BANK_CASE_ID_INPUT).type(case_id)
    cy.get(SENDER_ACC_NO).type(from_acc_no)
    cy.get(SEARCH_BUTTON).click()
    cy.wait(5000)
  }

  static shouldbedisplaycasedetailonsearch(list){
    cy.fixture(list).then(testdata =>{
     cy.get('td.MuiTableCell-root.css-ydwsr3:nth-child(1)').should('have.text', testdata.personal_type)
     cy.get('td.MuiTableCell-root.css-4tctn4:nth-child(2)').should('have.text', testdata.personal_Id)
     cy.get('td.MuiTableCell-root.css-dfgc0x:nth-child(3)').should('have.text', testdata.name_lastname)
     cy.get('td.MuiTableCell-root.css-1pie3mq:nth-child(4)').should('have.text', testdata.layer)
     cy.get('td.MuiTableCell-root.css-12g12jx:nth-child(5)').should('have.text', testdata.ref_code)
    //  cy.get('td.MuiTableCell-root.css-x5kyiw:nth-child(6)').should('have.text', testdata.data_of_date)
   })
 }

  static shouldbedisplaycasedetailonsearchmulelevelhistory(list){
    cy.fixture(list).then(testdata =>{
      cy.get('.MuiTableCell-root.css-4tctn4:nth-child(1)').should('have.text', testdata.personal_Id_level)
      cy.get('.MuiTableCell-root.css-1pie3mq:nth-child(2)').should('have.text', testdata.layer_level)
      cy.get('.MuiTableCell-root.css-s7jynl:nth-child(3)').should('have.text', testdata.account_bank_level)
      cy.get('.MuiTableCell-root.css-xyep83:nth-child(4)').should('have.text', testdata.account_number_level)
      cy.get('.MuiTableCell-root.css-1r1fews:nth-child(5)').should('have.text', testdata.conditions_registering_mule_level)
      cy.get('.MuiTableCell-root.css-es0gcz:nth-child(6)').should('have.text', testdata.case_characteristics_level)
      cy.get('.MuiTableCell-root.css-k275av:nth-child(7)').should('have.text', testdata.reports_new_level)
      cy.get('.MuiTableCell-root.css-16688kz:nth-child(8)').should('have.text', testdata.number_by_account_level)
      cy.get('.MuiTableCell-root.css-16ksph8:nth-child(9)').should('have.text', testdata.notification_number_by_account_level)

      cy.get('.MuiTableFooter-root.css-wdjm1q').eq(0).scrollTo('right', { ensureScrollable: false })

      cy.get('.MuiTableCell-root.css-16972j:nth-child(10)').should('have.text', testdata.seizure_number_by_account_level)
      cy.get('.MuiTableCell-root.css-8llk40:nth-child(11)').should('have.text', testdata.announcement_date_level)
      cy.get('.MuiTableCell-root.css-ghbu72:nth-child(12)').should('have.text', testdata.announcement_round_level)
      cy.get('.MuiTableCell-root.css-12g12jx:nth-child(13)').should('have.text', testdata.ref_code_level)
      cy.get('.MuiTableCell-root.css-5c7weh:nth-child(14)').should('have.text', testdata.date_of_announcement_of_dismissal_level)
      cy.get('.MuiTableCell-root.css-1hgv9kl:nth-child(15)').should('have.text', testdata.reasons_for_dismissal_level)
      cy.get('.MuiTableCell-root.css-nfzfok:nth-child(16)').should('have.text', testdata.name_level)
      cy.get('.MuiTableCell-root.css-1sb82y5:nth-child(17)').should('have.text', testdata.last_name_level)
    })
  }

  static shouldbedisplaycasedetailonsearchmulehistory(list){
    cy.fixture(list).then(testdata =>{
      cy.get('.MuiTableCell-root.css-4tctn4:nth-child(1)').should('have.text', testdata.case_number_history)
      cy.get('.MuiTableCell-root.css-1pie3mq:nth-child(2)').should('have.text', testdata.account_number_history)
      cy.get('.MuiTableCell-root.css-s7jynl:nth-child(3)').should('have.text', testdata.account_bank_history)
      cy.get('.MuiTableCell-root.css-xyep83:nth-child(4)').should('have.text', testdata.row_history)
      cy.get('.MuiTableCell-root.css-1r1fews:nth-child(5)').should('have.text', testdata.case_characteristics_history)
      cy.get('.MuiTableCell-root.css-es0gcz:nth-child(6)').should('have.text', testdata.date_of_damage_history)
      cy.get('.MuiTableCell-root.css-k275av:nth-child(7)').should('have.text', testdata.damaged_amount_history)
      cy.get('.MuiTableCell-root.css-16688kz:nth-child(8)').should('have.text', testdata.name_history)
      cy.get('.MuiTableCell-root.css-16ksph8:nth-child(9)').should('have.text', testdata.last_name_history)

      cy.get('.MuiTableFooter-root.css-wdjm1q').eq(1).scrollTo('right', { ensureScrollable: false })

      cy.get('.MuiTableCell-root.css-16972j:nth-child(10)').should('have.text', testdata.recipient_account_number_history)
      cy.get('.MuiTableCell-root.css-8llk40:nth-child(11)').should('have.text', testdata.account_owner_bank_number_history)
      cy.get('.MuiTableCell-root.css-ghbu72:nth-child(12)').should('have.text', testdata.notification_number_history)
      cy.get('.MuiTableCell-root.css-12g12jx:nth-child(13)').should('have.text', testdata.seizure_notice_history)
      cy.get('.MuiTableCell-root.css-5c7weh:nth-child(14)').should('have.text', testdata.status_case_history)
      cy.get('.MuiTableCell-root.css-1hgv9kl:nth-child(15)').should('have.text', testdata.login_date_history)
    })
  }
  static viewmulelevelhistory(){
    cy.contains('Actions')
    cy.get('.MuiSvgIcon-root.css-10i1kfi').click()
  }

  static displayLableTrasition_dark_brown_mule(list){
    cy.fixture(list).then(testdata =>{
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
      
      cy.get('#personalId',{timeout:20000}).should('have.value',testdata.personal_Id)
      cy.get('#personalType').should('have.value',testdata.personal_type)
      cy.get('#firstName').should('have.value',testdata.firstname)
      cy.get('#lastName').should('have.value',testdata.lastname)
      cy.get('#phoneNumber').should('have.value',testdata.phone_number)
      cy.get('#birthDate').should('have.value',testdata.birth_date)
      cy.get('#accountBankName').should('have.value',testdata.account_bankname)
      cy.get('#accountBankCode').should('have.value',testdata.account_bankcode)
      cy.get('#accountType').should('have.value',testdata.account_type)
      cy.get('#accountNumber').should('have.value',testdata.account_number)
      cy.get('#accountOpenDate').should('have.value',testdata.account_open_date)
      cy.get('#accountOpenChannel').should('have.value',testdata.account_open_channel)
    })
 }

  static displayLableandValidateDatadetailaccount_dark_brown_mule(list){
    cy.fixture(list).then(testdata =>{
      cy.contains('ข้อมูลตั้งต้นของบัญชีม้าน้ำตาล',{timeout:20000})
      cy.contains('ข้อเหตุอันควรสงสัย')
      cy.contains('เหตุอันควรสงสัย')
      cy.contains('ขยายผลจาก (Case ID)')
      cy.contains('IP Address ของการทำรายการ')
      cy.contains('ธนาคาร(ตั้งต้น)')
      cy.contains('รหัสธนาคาร(ตั้งต้น)')
      cy.contains('เลขบัญชี(ตั้งต้น)')
      cy.contains('เบอร์มือถือ(ตั้งต้น)')

      cy.get('#reasonToSuspectId',{timeout:20000}).should('have.value',testdata.reason_tosuspectId)
      cy.get('#reasonToSuspectDetail').should('have.value',testdata.reason_tosuspectDetail)
      cy.get('#relatedBankCaseId').should('have.value',testdata.related_bankcaseId)
      cy.get('#originIpAddress').should('have.value',testdata.origin_ipAddress)
      cy.get('#originBankName').should('have.value',testdata.origin_bankName)
      cy.get('#originBankCode').should('have.value',testdata.origin_bankCode)
      cy.get('#originAccountNumber').should('have.value',testdata.origin_accountNumber)
      cy.get('#originPhoneNumber').should('have.value',testdata.origin_phoneNumber)
    })
  }

  static displayLableandvalidateDatamanagements_dark_brown_mule(list){
    cy.fixture(list).then(testdata =>{
      cy.contains('การจัดการบัญชีม้าน้ำตาล',{timeout:20000})
      cy.contains('มาตรการจัดการ')
      cy.contains('ยอดเงินที่ป้องกันความเสียหาย/ยอดเงินคงเหลือ')
      cy.contains('รายละเอียด Case')

      cy.get('#counterMeasureDetail',{timeout:20000}).should('have.value',testdata.counter_measureDetail)
      cy.get('#remainingAmount').should('have.value',testdata.remaining_amount)
      cy.get('#caseDetail').should('have.value',testdata.case_detail)
    })
  }

  static displayLabledetailrecordsbank_dark_brown_mule(list){
    cy.fixture(list).then(testdata =>{
      cy.contains('ธนาคารผู้บันทึกข้อมูล',{timeout:20000})
      cy.contains('ธนาคารผู้แจ้ง')
      cy.contains('รหัสธนาคารผู้แจ้ง')
      cy.contains('วันที่และเวลาแจ้ง')
      cy.contains('ธนาคารผู้ปรับปรุง')
      cy.contains('รหัสธนาคารปรับปรุง')
      cy.contains('วันที่และเวลาปรับปรุง (พ.ศ.)')

      cy.get('input[placeholder="ธนาคารผู้แจ้ง"]',{timeout:20000}).should('have.value',testdata.notifying_bank)
      cy.get('input[placeholder="รหัสธนาคารผู้แจ้ง"]').should('have.value',testdata.reporter_bankcode)
      cy.get('input[placeholder="วันที่และเวลาแจ้ง"]').should('have.value',testdata.date_time_notification)
      cy.get('input[placeholder="ธนาคารผู้ปรับปรุง"]',{timeout:20000}).should('have.value',testdata.improved_bank)
      cy.get('input[placeholder="รหัสธนาคารปรับปรุง"').should('have.value',testdata.updated_bankcode)
      cy.get('input[placeholder="วันที่และเวลาปรับปรุง (พ.ศ.)"]').should('have.value',testdata.update_datetime)
    })
  }

  static displayLabledetailaccountdismissalstatus_dark_brown_mule(list){
    cy.fixture(list).then(testdata =>{
      cy.contains('สถานะการปลดบัญชีม้าน้ำตาลเข้ม',{timeout:20000})
      cy.contains('สถานะการปลดรายบัญชี')
      cy.contains('ผลการ EDD ของลูกค้าธนาคาร')
      cy.contains('เหตุผลของคำสั่งยกเลิกหรือปลด')
      cy.contains('วันที่ได้รับการ EDD (YYYY-MM-DD)')

      cy.get('input[placeholder="สถานะการปลดรายบัญชี"]',{timeout:20000}).should('have.value',testdata.account_release_status)
      cy.get('input[placeholder="ผลการ EDD ของลูกค้าธนาคาร"]').should('have.value',testdata.edd)
      cy.get('input[placeholder="เหตุผลของคำสั่งยกเลิกหรือปลด"]').should('have.value',testdata.reasons)
      cy.get('input[placeholder="วันที่ได้รับการ EDD (YYYY-MM-DD)"]',{timeout:20000}).should('have.value',testdata.improved_bank)
    })
  }

  static displaySearchPreviewPageResult_bank(data,row){
    const non_bank = Cypress.env('nonBankData')
    cy.log(JSON.stringify(non_bank))
    cy.get(`@${data}`).then(testdata => {
    cy.get('div.MuiTableContainer-root.css-11b7ut5',{timeout:60000}).within(() => {
      cy.get('td.css-sko2jg').eq(row).should('have.text',testdata.A3)
      cy.get('td.css-k78ent').eq(row).should('have.text','2')
      cy.get('td.css-13gvmk7').eq(row).invoke('text').should('include', testdata.C7).and('include', testdata.D7)
      cy.fixture('bankname.json').then(shortbank => {
      cy.get('td.css-g5thv8').eq(row).should('have.text', shortbank[testdata.E12])
      })
      cy.get('td.css-10xd3ej').eq(row).should('have.text',testdata.E7)
      cy.get('td.css-2tink5').eq(row).invoke('text').should('include', testdata.K12).and('include', testdata.L12)
      cy.get('td.css-geoga7').eq(row).should('have.text',non_bank[0][1])
      cy.get('td.css-1vrr0qk').eq(row).should('have.text',testdata.O12)
      cy.get('td.css-mepm12').eq(row).should('have.text',testdata.AM12)
      cy.get('td.css-1g0ygrp').eq(row).invoke('text').should('include', testdata.R12).and('include', testdata.S12)
      cy.get('td.css-ajxfj4').eq(row).invoke('text').should('include', testdata.R12).and('include', testdata.S12)
      cy.get('td.css-fv7180').eq(row).should('have.text',testdata.U12)
      cy.get('td.css-mqskto').eq(row)
      cy.get('td.css-1fgmb02').eq(row)
      cy.get('td.css-1pzqfkr').eq(row)
      cy.log('should be match',testdata.AR12)
      if(testdata.AR12 == 'การทำธุรกรรมไปต่างประเทศ'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ยอดการระงับได้มากกว่าหรือเท่ากับยอดที่โอนมา'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ถอนเงินสดที่สาขา'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ถอนเงินสดผ่านเอทีเอ็ม'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ชำระด้วยบัตรผ่าน Card Scheme'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ (Private Wallet)'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else{
        cy.get('td.css-1ly33ka').eq(row).should('have.text', '-')
      }
      cy.get('td.css-155dfca').eq(row).within(() => {
        cy.get('button.css-15mydm5').eq(0)
        cy.get('button.css-15mydm5').eq(1)
        cy.get('button.css-15mydm5').eq(2)
      })
    })
    })
  }
  static displaySearchPreviewPageResult_non_bank(data,row){
    const non_bank = Cypress.env('nonBankData')
    cy.log(JSON.stringify(non_bank))
    cy.get(`@${data}`).then(testdata => {
    cy.get('div.MuiTableContainer-root.css-11b7ut5',{timeout:60000}).within(() => {
      cy.get('td.css-sko2jg').eq(row).should('have.text',testdata.A3)
      cy.get('td.css-k78ent').eq(row).should('have.text','2')
      cy.get('td.css-13gvmk7').eq(row).invoke('text').should('include', testdata.C7).and('include', testdata.D7)
      cy.fixture('non_bankname.json').then(shortbank => {
      cy.get('td.css-g5thv8').eq(row).should('have.text', shortbank[testdata.E12])
      })
      cy.get('td.css-10xd3ej').eq(row).should('have.text',testdata.E7)
      cy.get('td.css-2tink5').eq(row).invoke('text').should('include', testdata.K12).and('include', testdata.L12)
      cy.get('td.css-geoga7').eq(row).should('have.text',non_bank[0][1])
      cy.get('td.css-1vrr0qk').eq(row).should('have.text',testdata.AJ12)
      cy.get('td.css-mepm12').eq(row).should('have.text',testdata.AM12)
      cy.get('td.css-1g0ygrp').eq(row).invoke('text').should('include', testdata.R12).and('include', testdata.S12)
      cy.get('td.css-ajxfj4').eq(row).invoke('text').should('include', testdata.R12).and('include', testdata.S12)
      cy.get('td.css-fv7180').eq(row).should('have.text',testdata.U12)
      cy.get('td.css-mqskto').eq(row)
      cy.get('td.css-1fgmb02').eq(row)
      cy.get('td.css-1pzqfkr').eq(row)
      cy.log('should be match',testdata.AR12)
      if(testdata.AR12 == 'การทำธุรกรรมไปต่างประเทศ'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ยอดการระงับได้มากกว่าหรือเท่ากับยอดที่โอนมา'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ถอนเงินสดที่สาขา'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ถอนเงินสดผ่านเอทีเอ็ม'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ชำระด้วยบัตรผ่าน Card Scheme'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'ยอดเงินต่ำกว่าตามเกณฑ์ < 3,000 บาท [เส้นเงิน]'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else if(testdata.AR12 == 'สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ (Private Wallet)'){
        cy.get('td.css-1ly33ka').eq(row).should('have.text', 'Discontinue')
      }else{
        cy.get('td.css-1ly33ka').eq(row).should('have.text', '-')
      }
      cy.get('td.css-155dfca').eq(row).within(() => {
        cy.get('button.css-15mydm5').eq(0)
        cy.get('button.css-15mydm5').eq(1)
        cy.get('button.css-15mydm5').eq(2)
      })
    })
    })
  }
  


static DisplaySearchSubcase(data,row){
    const non_bank = Cypress.env('nonBankData')
    if (non_bank[0][4] == "ผู้ให้บริการทางการเงิน") {
    SearchPage.displaySearchPreviewPageResult_non_bank(data,row)
    } else if (non_bank[0][4] == "ธนาคาร") {
    SearchPage.displaySearchPreviewPageResult_bank(data,row)
    } else if (non_bank[0][4] == "") {
    SearchPage.displaySearchPreviewPageResult_bank(data,row)
    } else {
      throw new Error("Unknown data result : " + non_bank[0][4]);
    }
}
















}

export default SearchPage
