const VIEW_BUTTON = 'button[aria-label="ดูรายละเอียด"]'
const BACK_BUTTON = '#clear'
const CLOSE_BUTTON = 'Close'
const SENDER_NAME_INPUT = 'input[placeholder="ชื่อผู้เสียหาย"]'
const RECEIVER_FREEZE_TYPE_BANK = 'input[id="FreezeType"]'
const RECEIVER_FREEZE_AMOUNT_BANK = 'input[id="BlockedAmount"]'
const RECEIVER_FREEZE_TYPE_POLICE = 'input[id="PoliceBlockType"]'
const RECEIVER_FREEZE_AMOUNT_POLICE = 'input[id="PoliceBlockAmount"]'
const RECEIVER_FREEZE_NO_POLICE ='input[id="PoliceBlockNumber"]'
const BALANCE ='input[id="RemainingAmount"]'
const FREEZ_DATE_TIME ='input[id="Block72Hours"]'
const POLICE_DATE_TIME ='input[id="ExtendBlock7Days"]'
const FRAUD_FREEZ_DATE_TIME = 'input[id="ExtendBlock7Days"]'
const POLICE_FREEZ_DATE_TIME ='input[id="PoliceBlock"]'
const POLICE_UNFREEZ_DATE_TIME = 'input[id="PoliceUnBlockNumber"]'
const FRAUD_UNFREEZ_DATE_TIME = 'input[id="UnBlock7Days"]'
const UNFREEZ_DATE_TIME = 'input[id="UnBlock72Hours"]'
const RECEIVER_NAME_INPUT ='#ownerfirstname'
const SENDER_EMAIL_INPUT = '#contactEmail'

const CASE_DETAIL = 'textarea[id="caseDetail"]'
const CONTACT_NAME = '#contactFullName'
const SENDER_PHONE_INPUT = 'input[placeholder="เบอร์โทรศัพท์ผู้เสียหาย "]'
const RECEIVER_PHONE_INPUT = '#accountPhone'
const SERDER_SURENAME_INPUT = 'input[placeholder="นามสกุลผู้เสียหาย"]'
const RECEIVER_SURENAME_INPUT ='#ownerlastname'
const SENDER_PERSON_NO_INPUT = 'input[placeholder="เลขที่บัตรประชาชน / หนังสือเดินทาง"]'
const RECEIVER_PERSON_NO_INPUT = '#owneridcard'
const SENDER_PERSON_TYPE_INPUT = 'input[placeholder="ประเภทบุคคลของเจ้าของบัญชีผู้เสียหาย"]'
const PROMPTPAY_TYPE ='#promptPayType'
const RECEIVER_BANK ='#bank'
const PROMPTPAY_VALUE ='#promptPayId'
const RECEIVER_PERSON_TYPE_INPUT = '#accountholdertype'
const CASE_ID = 'input[placeholder="หมายเลขเคสอ้างอิงธนาคาร"]'
const CASE_DETECT = 'input[placeholder="การตรวจพบรายการ"]'
const POLICE_CASE_ID = 'input[placeholder="หมายแจ้งความของตำรวจ (Case ID ตำรวจ)"]'
const PHONE_NO = 'input[placeholder="เบอร์โทรศัพท์ผู้เสียหาย "]'
const CASE_TYPE = 'input[placeholder="ลักษณะเคสที่เสียหาย "]'

class ViewPage {
  static displayTxnRow(row,depth,name,surename,acc,bank,count,total_amount){
    cy.get('div[aria-rowindex="'+row+'"]').should('have.attr','data-depth',depth)
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]').should('contain.text',name)
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]').should('contain.text',surename)
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]').should('contain.text',acc)
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="2"]').should('contain.text',bank)
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="3"]').should('contain.text',count)
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="4"]').should('contain.text',total_amount)
  }
  static displayCaseId(case_id){
    cy.get(CASE_ID).should('have.value',case_id)
    cy.get(CASE_ID).should('have.attr','readonly')
  }
  static displayCaseDetect(case_detect){
    cy.get(CASE_DETECT).should('have.value',case_detect)
    cy.get(CASE_DETECT).should('have.attr','readonly')
  }
  static displayCasePoliceCaseId(police_case_id){
    cy.get(POLICE_CASE_ID).should('have.value',police_case_id)
    cy.get(POLICE_CASE_ID).should('have.attr','readonly')
  }
  static displayCasePhoneNumber(phone_no){
    cy.get(PHONE_NO).should('have.value',phone_no)
    cy.get(PHONE_NO).should('have.attr','readonly')
  }
  static displayCaseType(case_type){
    cy.get(CASE_TYPE).should('have.value',case_type)
    cy.get(CASE_TYPE).should('have.attr','readonly')
  }
  static clickViewButtonFirst(){
    cy.get(VIEW_BUTTON).first().click()
  }
  static viewPagePoliceNumberDisplay(police_num){
    cy.get('input[value="'+police_num+'"]').should('be.visible')
  }
  static clickBack(){
    cy.get(BACK_BUTTON).click()
  } 
  static clickClose(){
    cy.get('button').contains(CLOSE_BUTTON).click()
  }
  static displaySenderName(name){
    cy.get(SENDER_NAME_INPUT).should('have.value',name)
    cy.get(SENDER_NAME_INPUT).should('have.attr','readonly')
  } 
  static displayFreezeTypeBank(type){
    cy.get(RECEIVER_FREEZE_TYPE_BANK).should('have.value',type)
    cy.get(RECEIVER_FREEZE_TYPE_BANK).should('have.attr','readonly')
  }
  static displayFreezeAmountBank(amount){
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).should('have.value',amount)
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).should('have.attr','readonly')
  }
  static displayFreezeTypePolice(type){
    cy.get(RECEIVER_FREEZE_TYPE_POLICE).should('have.value',type)
    cy.get(RECEIVER_FREEZE_TYPE_POLICE).should('have.attr','readonly')
  }
  static displayFreezeAmountPolice(amount){
    cy.get(RECEIVER_FREEZE_AMOUNT_POLICE).should('have.value',amount)
    cy.get(RECEIVER_FREEZE_AMOUNT_POLICE).should('have.attr','readonly')
  }
  static displayFreezeNoPolice(number){
    cy.get(RECEIVER_FREEZE_NO_POLICE).should('have.value',number)
    cy.get(RECEIVER_FREEZE_NO_POLICE).should('have.attr','readonly')
  }
  static displayUnfreezeNoPolice(number){
    cy.get('input[value="'+number+'"]').should('have.attr','readonly')
  }
  static displayBalance(balance){
    cy.get(BALANCE).should('have.value',balance)
    cy.get(BALANCE).should('have.attr','readonly')
  }
  static displayFreezDate72h(dateime){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE_TIME).should('contain.value',"2566")
    cy.get(FREEZ_DATE_TIME).should('contain.value',dateime)
    cy.get(FREEZ_DATE_TIME).should('have.attr','readonly')
  }
  static displayFraudFreezDate(dateime){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FRAUD_FREEZ_DATE_TIME).eq(1).should('contain.value',"2566")
    cy.get(FRAUD_FREEZ_DATE_TIME).eq(1).should('contain.value',dateime)
    cy.get(FRAUD_FREEZ_DATE_TIME).eq(1).should('have.attr','readonly')
  }
  static displayPoliceFreezDate(dateime){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(POLICE_FREEZ_DATE_TIME).eq(0).should('contain.value',"2566")
    cy.get(POLICE_FREEZ_DATE_TIME).eq(0).should('contain.value',dateime)
    cy.get(POLICE_FREEZ_DATE_TIME).eq(0).should('have.attr','readonly')
  }
  static displayFraudUnfreezDate(dateime){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FRAUD_UNFREEZ_DATE_TIME).eq(0).should('contain.value',"2566")
    cy.get(FRAUD_UNFREEZ_DATE_TIME).eq(0).should('contain.value',dateime)
    cy.get(FRAUD_UNFREEZ_DATE_TIME).eq(0).should('have.attr','readonly')
  }
  static displayPoliceUnfreezDate(dateime){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(POLICE_UNFREEZ_DATE_TIME).eq(0).should('contain.value',"2566")
    cy.get(POLICE_UNFREEZ_DATE_TIME).eq(0).should('contain.value',dateime)
    cy.get(POLICE_UNFREEZ_DATE_TIME).eq(0).should('have.attr','readonly')
  }
  static displayPoliceDate(dateime){
    const dayjs = require("dayjs")
    const todayDates = dayjs().format("-MM-")
    // cy.get(POLICE_DATE_TIME).should('contain.value',"2566")
    cy.get(POLICE_DATE_TIME).should('contain.value',dateime)
    cy.get(POLICE_DATE_TIME).should('have.attr','readonly')
  }
  static displayUnfreezDate72h(dateime){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(UNFREEZ_DATE_TIME).should('contain.value',"2566")
    cy.get(UNFREEZ_DATE_TIME).should('contain.value',dateime)
    cy.get(UNFREEZ_DATE_TIME).should('have.attr','readonly')
  }
  static displayReceiverName(name){
    cy.get(RECEIVER_NAME_INPUT).should('have.value',name)
    cy.get(RECEIVER_NAME_INPUT).should('have.attr','readonly')
  } 
  static displaySenderEmail(email){
    cy.get(SENDER_EMAIL_INPUT).should('have.value',email)
    cy.get(SENDER_EMAIL_INPUT).should('have.attr','readonly')   
  }
  static displayCaseDetail(detail){
    cy.get(CASE_DETAIL).should('have.text',detail)
    cy.get(CASE_DETAIL).should('have.attr','readonly')
  }
  static displayContactName(name){
    cy.get(CONTACT_NAME).should('have.text',detail)
    cy.get(CONTACT_NAME).should('have.attr','readonly')
  }
  static displayMasterCaseType(type){
    cy.get(CASE_TYPE).should('have.value',type)
    cy.get(CASE_TYPE).should('have.attr','readonly')
  }
  static displaySenderPhone(phone){
    cy.get(SENDER_PHONE_INPUT).should('have.value',phone)
    cy.get(SENDER_PHONE_INPUT).should('have.attr','readonly')
  } 
  static displayReceiverPhone(phone){
    cy.get(RECEIVER_PHONE_INPUT).should('have.value',phone)
    cy.get(RECEIVER_PHONE_INPUT).should('have.attr','readonly')
  } 
  static displaySenderSureName(surename){
    cy.get(SERDER_SURENAME_INPUT).should('have.value',surename)
    cy.get(SERDER_SURENAME_INPUT).should('have.attr','readonly')
  }
  static displayReceiverSureName(surename){
    cy.get(RECEIVER_SURENAME_INPUT).should('have.value',surename)
    cy.get(RECEIVER_SURENAME_INPUT).should('have.attr','readonly')
  }
  static displaySenderPersonNo(person_no){
    cy.get(SENDER_PERSON_NO_INPUT).should('have.value',person_no)
    cy.get(SENDER_PERSON_NO_INPUT).should('have.attr','readonly')
  }
  static displayReceiverPersonNo(person_no){
    cy.get(RECEIVER_PERSON_NO_INPUT).should('have.value',person_no)
    cy.get(RECEIVER_PERSON_NO_INPUT).should('have.attr','readonly')
  }
  static displaySerderPersonType(person_type){
    cy.get(SENDER_PERSON_TYPE_INPUT).should('have.value',person_type)
    cy.get(SENDER_PERSON_TYPE_INPUT).should('have.attr','readonly')
  }
  static displayPromptPayType(type){
    cy.get(PROMPTPAY_TYPE).should('have.value',type)
    cy.get(PROMPTPAY_TYPE).should('have.attr','readonly')
  }
  static displayReceiverBank(bank){
    cy.get(RECEIVER_BANK).should('have.value',bank)
    cy.get(RECEIVER_BANK).should('have.attr','readonly')  
  }
  static displayPromptPayValue(value){
    cy.get(PROMPTPAY_VALUE).should('have.value',value)
    cy.get(PROMPTPAY_VALUE).should('have.attr','readonly')
  }
  static displayReceiverPersonType(person_type){
    cy.get(RECEIVER_PERSON_TYPE_INPUT).should('have.value',person_type)
    cy.get(RECEIVER_PERSON_TYPE_INPUT).should('have.attr','readonly')
  }
  static clickViewDetail(row){
    cy.get('button[aria-label="ดูรายละเอียด"]').eq(row).click()
  }
  static subCaseDateOfFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="Block72Hours-label"]',{ timeout: 50000 }).should('contain.text',"วันที่และเวลาที่อายัด 72 hrs")
    cy.get('input[id="Block72Hours"]',{ timeout: 50000 }).should('contain.value',datetime)
    cy.get('input[id="Block72Hours"]',{ timeout: 50000 }).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfUnFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="UnBlock72Hours-label"]',{timeout:5000}).should('contain.text',"วันที่และเวลาที่ปลด 72 hrs")
    cy.get('input[id="UnBlock72Hours"]',{timeout:5000}).should('contain.value',datetime)
    cy.get('input[id="UnBlock72Hours"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfReportPoliceDisplay(datetime){
    cy.get('label[id="ExtendBlock7Days-label"]',{timeout:5000}).eq(0).should('contain.text',"วันที่และเวลาที่แจ้งความ (ขยายจาก 72 ชม เป็น 7 วัน)")
    cy.get('input[id="ExtendBlock7Days"]',{timeout:5000}).eq(0).should('contain.value',datetime)
    cy.get('input[id="ExtendBlock7Days"]',{timeout:5000}).eq(0).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfFreezeAcc7dayDisplay(datetime){
    cy.get('label[id="ExtendBlock7Days-label"]',{timeout:5000}).eq(1).should('contain.text',"วันที่และเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)")
    cy.get('input[id="ExtendBlock7Days"]',{timeout:5000}).eq(1).should('contain.value',datetime)
    cy.get('input[id="ExtendBlock7Days"]',{timeout:5000}).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfUnFreezeAcc7dayDisplay(datetime)  {
    cy.get('label[id="UnBlock7Days-label"]',{timeout:5000}).should('contain.text',"วันที่และเวลาที่ปลด 7 วัน")
    cy.get('input[id="UnBlock7Days"]',{timeout:5000}).should('contain.value',datetime)
    cy.get('input[id="UnBlock7Days"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  } 
  static subCaseDateOfFreezeByPoliceDisplay(datetime){
    cy.get('label[id="PoliceBlock-label"]',{timeout:5000}).should('contain.text',"วันที่และเวลาที่อายัดจากตำรวจ")
    cy.get('input[id="PoliceBlock"]',{timeout:5000}).should('contain.value',datetime)
    cy.get('input[id="PoliceBlock"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfUnFreezeByPoliceDisplay(datetime){
    cy.get('label[id="PoliceUnBlockNumber-label"]',{timeout:5000}).should('contain.text',"วันที่และเวลาที่ปลดจากตำรวจ")
    cy.get('input[id="PoliceUnBlockNumber"]',{timeout:5000}).should('contain.value',datetime)
    cy.get('input[id="PoliceUnBlockNumber"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseTypeOfFreezeByBankDisplay(type){
    cy.get('label[id="FreezeType-label"]',{timeout:5000}).should('contain.text',"ประเภทของการอายัดจากธนาคาร")
    cy.get('input[id="FreezeType"]',{timeout:5000}).should('contain.value',type)
    cy.get('input[id="FreezeType"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseAmountFreezeByBankDisplay(amount){
    cy.get('label[id="BlockedAmount-label"]',{timeout:5000}).should('contain.text',"จำนวนเงินธุรกรรมที่ระงับ")
    cy.get('input[id="BlockedAmount"]',{timeout:5000}).should('contain.value',amount)
    cy.get('input[id="BlockedAmount"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseBalanceDisplay(amount){
    cy.get('label[id="RemainingAmount-label"]',{timeout:5000}).should('contain.text',"จำนวนเงินคงเหลือหลังอายัด")
    cy.get('input[id="RemainingAmount"]',{timeout:5000}).should('contain.value',amount)
    cy.get('input[id="RemainingAmount"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseTypeOfFreezeByPoliceDisplay(type){
    cy.get('label[id="PoliceBlockType-label"]',{timeout:5000}).should('contain.text',"ประเภทของหมายอายัดจากตำรวจ")
    cy.get('input[id="PoliceBlockType"]',{timeout:5000}).should('contain.value',type)
    cy.get('input[id="PoliceBlockType"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCasePoliceFreezeNumberDisplay(number){
    cy.get('label[id="PoliceBlockNumber-label"]',{timeout:5000}).should('contain.text',"ใส่หมายอายัดจากตำรวจ")
    cy.get('input[id="PoliceBlockNumber"]',{timeout:5000}).should('contain.value',number)
    cy.get('input[id="PoliceBlockNumber"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseAmountFreezeByPoliceDisplay(amount){
    // cy.get('label[id="PoliceBlockAmount-label"]',{timeout:5000}).should('contain.text',"จำนวนวงเงินที่อายัดจากตำรวจ")
    cy.get('input[id="PoliceBlockAmount"]',{timeout:5000}).should('contain.value',amount)
    cy.get('input[id="PoliceBlockAmount"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
  }
  static subCasePoliceUnFreezeNumberDisplay(number){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(6).should('contain.text',"ใส่หมายปลดอายัดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(6).should('contain.value',number)
    cy.get('input[id="bank"]',{timeout:5000}).eq(6).should('have.attr', 'readonly', 'readonly')
  }

}
export default ViewPage


