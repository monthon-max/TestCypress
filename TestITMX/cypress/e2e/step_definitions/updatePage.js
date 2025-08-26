const EDIT_BUTTON = 'button[aria-label="แก้ไข"]'
const POLICE_NUM_INPUT = '#policeCaseNumber'
const SAVE_BUTTON = '#save'
const CLOSE_BUTTON = '#closer'
const TYPE_DETECT_LISTBOX = '#การตรวจพบรายการ'
const REPORT_POLICE_DATE_INPUT = 'input[placeholder="yyy-mm-dd"]'
const TIME_INUPT = '#startTime'
const SENDER_NAME_MASTER = '#ownerFirstName'
const REC_SENDER_NAME_MASTER ='input[id="ownerFirstName"]'
const SENDER_BANK_NAME = '#bank'
const SENDER_EMAIL = '#email'
const CASE_DETAIL = '#caseDetail'
const CONTACT_NAME = '#contactorName'
const SENDER_ACC_NO = '#accountNumber'
const RECEIVER_ACC_NO ='input[id="accountNumber"]'
const CONTACT_PHONE = '#ContactorNumber'
const CONTACT_PERSON = '#contactRelationShip'
const SENDER_NAME_ERROR_TEXT = '#ownerFirstName-helper-text'
const SENDER_ACC_NO_ERROR_TEXT = '#accountNumber-helper-text'
const FIRST_NAME_LEBLE = '#ownerFirstName-label'
const REC_FIRST_NAME_LEBLE = 'label[id="ownerFirstName-label"]'
const SENDER_ACC_NO_LEBLE = '#accountNumber-label'
const RECEIVER_ACC_NO_LEBLE ='label[id="accountNumber-label"]'

const SENDER_PHONE_LEBLE = '#accountPhone-label'
const SENDER_PHONE_ERROR_TEXT = '#accountPhone-helper-text'
const SURENAME_INPUT = '#ownerLastName'
const FREEZ_DATE ='input[placeholder="yyy-mm-dd"]'
const FREEZ_TIME ='input[placeholder="เวลา"]'
const BANK_FREEZ_TYPE = 'input[id="subCaseFreezeType"]'
const BANK_FREEZ_AMOUNT ='input[name="subCaseBlockedAmount"]'
const BALANCE_AMOUNT='input[name="subCaseRemainingAmount"]'
const POLICE_FREEZ_TYPE = 'input[id="subCasePoliceBlockType"]'
const POLICE_FREEZ_NO ='input[id="subCasePoliceBlockNumber"]'
const POLICE_FREEZ_AMOUNT ='input[name="subCasePoliceBlockAmount"]'
const POLICE_UNFREEZ_NO = 'input[id="subCasePoliceUnBlockNumber"]'
const FREEZ_COMMENT = 'textarea[id="bankCaseDetail"]'
const REC_SURENAME_INPUT ='input[id="ownerLastName"]'
const SENDER_PHONE_NO = '#accountPhone'
const RECEIVER_PHONE_NO = 'input[id="accountPhone"]'
const PROMPTPAY_TYPE = '#promptPayType'
const RECEIVER_BANK ='input[id="bank"]'
const PROMPTPAY_VALUE ='#promptPayId'
const PERSON_NO_INPUT = '#ownerIdCard'
const REC_PERSON_NO_INPUT = 'input[id="ownerIdCard"]'
const PERSON_TYPE_INPUT = '#accountHolderType'
const RECEIVER_FREEZE_TYPE_BANK = 'input[id="subCaseFreezeType"]'
const RECEIVER_FREEZE_AMOUNT_BANK ='input[name="subCaseBlockedAmount"]'
const REC_PERSON_TYPE_INPUT = 'input[id="accountHolderType"]'
const CASE_TYPE_INPUT ='#casetype'
const PERSON_TYPE_LABEL ='#accountHolderType-label'
const REC_PERSON_TYPE_LABEL ='label[id="accountHolderType-label"]'
const SENDER_PERSON_TYPE_ERROR_TEXT ='#accountHolderType-helper-text'
const SENDER_SURENAME_LABEL ='#ownerLastName-label'
const RECEIVER_SURENAME_LABEL ='label[id="ownerLastName-label"]'
const SENDER_SURENAME_ERROR_TEXT ='#ownerLastName-helper-text'
const SENDER_PERSON_NO_LABEL ='#ownerIdCard-label'
const PROMPTPAY_VALUE_LABEL ='#promptPayId-label'
const SENDER_PERSON_NO_ERROR_TEXT ='#ownerIdCard-helper-text'
const PROMPTPAY_VALUE_ERROR_TEXT ='#promptPayId-helper-text'

class UpdatePage {
  static clearDataOnSenderName(){
    cy.get(SENDER_NAME_MASTER).eq(0).clear()    
  }
  static clearDataOnReceiverName(){
    cy.get(REC_SENDER_NAME_MASTER).eq(1).clear()    
  }
  static clearDataOnSenderEmail(){
    cy.get(SENDER_EMAIL).eq(0).clear()
  }
  static clearDataOnCaseDetail(){
    cy.get(CASE_DETAIL).eq(0).clear()    
  }
  static clearDataOnContactName(){
    cy.get(CONTACT_NAME).eq(0).clear()    
  }
  static clearDataOnSenderAccNo(){
    cy.get(SENDER_ACC_NO).eq(0).clear()    
  }
  static clearDataOnReceiverAccNo(){
    cy.get(RECEIVER_ACC_NO).eq(1).clear()
  }
  static clearDataOnContactPhone(){
    cy.get(CONTACT_PHONE).eq(0).clear()    
  }
  static clearDataOnSenderPhoneNo(){
    cy.get(SENDER_PHONE_NO).eq(0).clear()
  }
  static clearDataOnReceiverPhoneNo(){
    cy.get(RECEIVER_PHONE_NO).eq(1).clear()  
  }
  static clearDataOnReceiverPromptpayValue(){
    cy.get(PROMPTPAY_VALUE).eq(0).clear()  
  }
  static selectPromtpayType(type){
    cy.get(PROMPTPAY_TYPE).eq(0).click()
    cy.get('div[role="presentation"]').contains(type).click()
  }
  static selectReceiverBank(bank){
    cy.get(RECEIVER_BANK).eq(1).click()
    cy.get('div[role="presentation"]').contains(bank).click()
  }
  static editFreezeDateByBank(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(0).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(0).click()
      cy.get('button').contains(date).click()
    }
  }
  static editFraudFreezeDate(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(3).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(3).click()
      cy.get('button').contains(date).click()
    }
  }
  static editPoliceFreezeDate(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(5).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(5).click()
      cy.get('button').contains(date).click()
    }
  }
  static editFraudUnfreezeDate(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(4).click()
      cy.contains("Clear").click()
    }else{
    cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(4).click()
    cy.get('button').contains(date).click()
    }
  }
  static editPoliceUnfreezeDate(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(6).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(6).click()
      cy.get('button').contains(date).click()
    }
  }
  static editPoliceUnfreezeDateSameBank(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(7).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(7).click()
      cy.get('button').contains(date).click()
    }
  }
  
  static editPoliceReportDate(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(2).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(2).click()
      cy.get('button').contains(date).click()
    }
  }
  static editUnfreezeDateByBank(date){
    if(date == "EMPTY"){
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(1).click()
      cy.contains("Clear").click()
    }else{
      cy.get('button[class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-1cxgm0z"]').eq(1).click()
      cy.get('button').contains(date).click()
    }
  }
  static editFreezeTimeByBank(min,sec){
    cy.get(FREEZ_TIME).eq(1).click()
    UpdatePage.selectPoliceTimeMin(min)
    cy.get(FREEZ_TIME).eq(1).click()
    UpdatePage.selectPoliceTimeSec(sec)
  }
  static editFraudFreezeTime(min,sec){
    cy.get(FREEZ_TIME).eq(4).click()
    UpdatePage.selectPoliceTimeMin(min)
    cy.get(FREEZ_TIME).eq(4).click()
    UpdatePage.selectPoliceTimeSec(sec)
  }
  static editPoliceFreezeTime(min,sec){
    cy.get(FREEZ_TIME).eq(6).click()
    UpdatePage.selectPoliceTimeMin(min)
    cy.get(FREEZ_TIME).eq(6).click()
    UpdatePage.selectPoliceTimeSec(sec)
  }
  static editPoliceReportTime(min,sec){
    cy.get(FREEZ_TIME).eq(3).click()
    UpdatePage.selectPoliceTimeMin(min)
    cy.get(FREEZ_TIME).eq(3).click()
    UpdatePage.selectPoliceTimeSec(sec)
  }
  static editUnfreezeTimeByBank(min,sec){
    cy.get(FREEZ_TIME).eq(2).click()
    UpdatePage.selectPoliceTimeMin(min)
    cy.get(FREEZ_TIME).eq(2).click()
    UpdatePage.selectPoliceTimeSec(sec)
  }
  static clearDataOnSenderSureName(){
    cy.get(SURENAME_INPUT).eq(0).clear()
  }
  static clearDataOnReceiverSureName(){
    cy.get(REC_SURENAME_INPUT).eq(1).clear()
  }
  static clearDataOnSenderPersonNo(){
    cy.get(PERSON_NO_INPUT).eq(0).clear()
  }
  static clearDataOnReceiverPersonNo(){
    cy.get(REC_PERSON_NO_INPUT).eq(1).clear()
  }
  static clearDataOnSenderPersonType(){
    cy.get(PERSON_TYPE_INPUT).eq(0).click()
    cy.get('button[aria-label="Clear"]').eq(0).click()
  }
  static clearDataOnFreezAmountByBank(){
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).eq(0).clear() 
  }
  static clearDataOnBalance(){
    cy.get(BALANCE_AMOUNT).eq(0).clear() 
  }
  static clearDataOnReceiverFreezeTypeByBank(){
    cy.get(RECEIVER_FREEZE_TYPE_BANK).eq(0).clear() 
  }
  static clearDataOnReceiverFreezeTypeByPolice(){
    cy.get(POLICE_FREEZ_TYPE).eq(0).clear() 
  }
  static clearDataOnReceiverFreezeAmountByPolice(){
    cy.get(POLICE_FREEZ_AMOUNT).eq(0).clear() 
  }
  static clearDataOnReceiverFreezeNoByPolice(){
    cy.get(POLICE_FREEZ_NO).eq(0).clear() 
  }
  static clearDataOnReceiverUnfreezeNoByPolice(){
    cy.get(POLICE_UNFREEZ_NO).eq(0).clear() 
  }  
  static clearDataOnReceiverPersonType(){
    cy.get(REC_PERSON_TYPE_INPUT).eq(1).click()
    cy.get('button[aria-label="Clear"]').eq(3).click()
  }
  static fillInSenderName(name){
    cy.get(SENDER_NAME_MASTER).eq(0).type(name)
  }
  static fillInPoliceFreezeNo(number){
    cy.get(POLICE_FREEZ_NO).eq(0).clear()
    cy.get(POLICE_FREEZ_NO).eq(0).type(number)
  }
  static fillInPoliceUnfreezeNo(number){
    cy.get(POLICE_UNFREEZ_NO).eq(0).clear()
    cy.get(POLICE_UNFREEZ_NO).eq(0).type(number)
  }
  
  static fillInPoliceFreezeAmount(amount){
    cy.get(POLICE_FREEZ_AMOUNT).eq(0).clear()
    cy.get(POLICE_FREEZ_AMOUNT).eq(0).type(amount)
  }
  static fillInReceiverName(name){
    cy.get(REC_SENDER_NAME_MASTER).eq(1).type(name)
  }
  static fillInSenderEmail(email){
    cy.get(SENDER_EMAIL).eq(0).type(email)
  }
  static fillInCaseDetail(detail){
    cy.get(CASE_DETAIL).eq(0).type(detail)
  }
  static fillInContactName(contact){
    cy.get(CONTACT_NAME).eq(0).type(contact)
  }
  static fillInSenderAccNo(acc){
    cy.get(SENDER_ACC_NO).eq(0).type(acc)
  }
  static fillInReceiverAccNo(acc){
    cy.get(RECEIVER_ACC_NO).eq(1).type(acc)
  }
  static fillInContactPhone(phone){
    cy.get(CONTACT_PHONE).eq(0).type(phone)
  }
  static fillInContactPerson(phone){
    cy.get(CONTACT_PERSON).eq(0).click()
    cy.contains(phone).click()  }

  static fillInSenderPhoneNo(phone){
    cy.get(SENDER_PHONE_NO).eq(0).type(phone)
  }
  static fillInReceiverPhoneNo(phone){
    cy.get(RECEIVER_PHONE_NO).eq(1).type(phone)
  }
  static fillInReceiverPromptpayValue(proxy){
    cy.get(PROMPTPAY_VALUE).eq(0).type(proxy)
  }
  static fillInSenderPersonType(person_type){
    cy.get(PERSON_TYPE_INPUT).eq(0).click()
    cy.contains(person_type).click()
  }
  static fillInFreezAmountByBank(amount){
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).eq(0).clear()
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).eq(0).type(amount)
  }
  static DisableFieldFreezAmountByBank(){
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).eq(0).should('have.attr','disabled')
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).eq(0).should('have.value','0.00')
  }
  static DisableFieldBalance(){
    cy.get(BALANCE_AMOUNT).eq(0).should('have.attr','disabled')
    cy.get(BALANCE_AMOUNT).eq(0).should('have.value','0.00')
  }
  static fillInBalance(amount){
    cy.get(BALANCE_AMOUNT).eq(0).clear()
    cy.get(BALANCE_AMOUNT).eq(0).type(amount)
  }
  static fillInReceiverFreezeTypeByBank(type){
    cy.get(RECEIVER_FREEZE_TYPE_BANK).eq(0).click()
    cy.contains(type).click()
  }
  static fillInReceiverFreezeTypeByPolice(type){
    cy.get(POLICE_FREEZ_TYPE).eq(0).click()
    cy.contains(type).click()
  }
  static fillInReceiverPersonType(person_type){
    cy.get(REC_PERSON_TYPE_INPUT).eq(1).click()
    cy.contains(person_type).click()
  }
  static fillInCaseType(type){
    cy.get(CASE_TYPE_INPUT).eq(0).click()
    cy.contains(type).click()
  }
  static fillInSenderSureName(surename){
    cy.get(SURENAME_INPUT).eq(0).type(surename)
  }
  static fillInReceiverSureName(surename){
    cy.get(REC_SURENAME_INPUT).eq(1).type(surename)
  }
  static fillInSenderPersonNo(person_no){
    cy.get(PERSON_NO_INPUT).eq(0).type(person_no)
    cy.wait(2000)
  }
  static fillInReceiverPersonNo(person_no){
    cy.get(REC_PERSON_NO_INPUT).eq(1).type(person_no)
    cy.wait(2000)
  }
  static errSenderNameInvalidOnScreen(){
    cy.get(FIRST_NAME_LEBLE).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_NAME_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_NAME_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')
  }
  static errReceiverNameInvalidOnScreen(){
    cy.get(REC_FIRST_NAME_LEBLE).eq(1).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_NAME_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_NAME_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')   
  }
  static errSenderEmailInvalidOnScreen(){
    cy.get(SENDER_EMAIL_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_EMAIL_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')
  }
  static errSenderAccNoInvalidOnScreen(){
    cy.get(SENDER_ACC_NO_LEBLE).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_ACC_NO_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_ACC_NO_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')
  }
  static errReceiverAccNoInvalidOnScreen(){
    cy.get(RECEIVER_ACC_NO_LEBLE).eq(1).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_ACC_NO_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_ACC_NO_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')   
  }
  static errSenderPhoneNoInvalidOnScreen(){
    cy.get(SENDER_PHONE_LEBLE).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_PHONE_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_PHONE_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')
  }
  static errSenderSurenameInvalidOnScreen(){
    cy.get(SENDER_SURENAME_LABEL).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_SURENAME_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_SURENAME_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')
  }
  static errReceiverSurenameInvalidOnScreen(){
    cy.get(RECEIVER_SURENAME_LABEL).eq(1).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_SURENAME_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_SURENAME_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')
  }
  static errSenderPersonTypeInvalidOnScreen(){
    cy.get(PERSON_TYPE_LABEL).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_PERSON_TYPE_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_PERSON_TYPE_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')   
  }
  static errReceiverPersonTypeInvalidOnScreen(){
    cy.get(REC_PERSON_TYPE_LABEL).eq(1).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_PERSON_TYPE_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_PERSON_TYPE_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')   
  }
  static errSenderPersonNoInvalidOnScreen(){
    cy.get(SENDER_PERSON_NO_LABEL).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(SENDER_PERSON_NO_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(SENDER_PERSON_NO_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')   
  }
  static errPromptPayValueInvalidOnScreen(){
    cy.get(PROMPTPAY_VALUE_LABEL).eq(0).should('have.css','color','rgb(255, 77, 79)')
    cy.get(PROMPTPAY_VALUE_ERROR_TEXT).should('have.text','Invalid Data')
    cy.get(PROMPTPAY_VALUE_ERROR_TEXT).should('have.css','color','rgb(255, 77, 79)')   
  }
  static senderSurenameIsDisableField(){
    cy.get(SURENAME_INPUT).should('have.attr','readonly')
  }
  static freezDate72HrsIsDisableField(){
    cy.get(FREEZ_DATE).eq(1).should('have.attr','disabled')
  }
  static unfreezDate72HrsIsDisableField(){
    cy.get(FREEZ_DATE).eq(2).should('have.attr','disabled')
  }
  static reportPoliceDate7DayIsDisableField(){
    cy.get(FREEZ_DATE).eq(3).should('have.attr','disabled')
  }
  static fraudFreezDate7DayIsDisableField(){
    cy.get(FREEZ_DATE).eq(4).should('have.attr','disabled')
  }
  static fraudUnfreezDate7DayIsDisableField(){
    cy.get(FREEZ_DATE).eq(5).should('have.attr','disabled')
  }
  static policeFreezDate7DayIsDisableField(){
    cy.get(FREEZ_DATE).eq(6).should('have.attr','disabled')
  }
  static policeUnfreezDate7DayIsDisableField(){
    cy.get(FREEZ_DATE).eq(7).should('have.attr','disabled')
  }
  static freezTime72HrsIsDisableField(){
    cy.get(FREEZ_TIME).eq(1).should('have.attr','disabled')
  }
  static unfreezTime72HrsIsDisableField(){
    cy.get(FREEZ_TIME).eq(2).should('have.attr','disabled')
  }
  static reportPoliceTime7DayIsDisableField(){
    cy.get(FREEZ_TIME).eq(3).should('have.attr','disabled')
  }
  static fraudFreezTime7DayIsDisableField(){
    cy.get(FREEZ_TIME).eq(4).should('have.attr','disabled')
  }
  static fraudUnfreezTime7DayIsDisableField(){
    cy.get(FREEZ_TIME).eq(5).should('have.attr','disabled')
  }
  static policeFreezTime7DayIsDisableField(){
    cy.get(FREEZ_TIME).eq(6).should('have.attr','disabled')
  }
  static policeUnfreezTime7DayIsDisableField(){
    cy.get(FREEZ_TIME).eq(7).should('have.attr','disabled')
  }
  static bankFreezTypeIsDisableField(){
    cy.get(BANK_FREEZ_TYPE).eq(0).should('have.attr','disabled')
  }
  static bankFreezAmountIsDisableField(){
    cy.get(BANK_FREEZ_AMOUNT).eq(0).should('have.attr','disabled')
  }
  static balanceIsDisableField(){
    cy.get(BALANCE_AMOUNT).eq(0).should('have.attr','disabled')
  }
  static policeFreezTypeIsDisableField(){
    cy.get(POLICE_FREEZ_TYPE).eq(0).should('have.attr','disabled')
  }
  static policeFreezNoIsDisableField(){
    cy.get(POLICE_FREEZ_NO).eq(0).should('have.attr','readonly')
  }
  static policeFreezAmountIsDisableField(){
    cy.get(POLICE_FREEZ_AMOUNT).eq(0).should('have.attr','disabled')
  }
  static policeUnfreezNoIsDisableField(){
    cy.get(POLICE_UNFREEZ_NO).eq(0).should('have.attr','readonly')
  }
  static FreezCommentIsDisableField(){
    cy.get(FREEZ_COMMENT).eq(0).should('have.attr','readonly')
  }
  static receiverSurenameIsDisableField(){
    cy.get(REC_SURENAME_INPUT).eq(1).should('have.attr','readonly')
  }
  static senderPersonNoIsDisableField(){
    cy.get(PERSON_NO_INPUT).should('have.attr','readonly')   
  }
  static receiverPersonNoIsDisableField(){
    cy.get(REC_PERSON_NO_INPUT).eq(1).should('have.attr','readonly')   
  }
  static senderSenderPersonTypeIsDisableField(){
    cy.get(PERSON_TYPE_INPUT).should('have.attr','disabled')   
  }
  static receiverPersonTypeIsDisableField(){
    cy.get(REC_PERSON_TYPE_INPUT).eq(1).should('have.attr','disabled')   
  }
  static displayPopupErrorOnUdatePage(error){
    cy.get('ul').children().contains(error)
  }
  static displaySenderName(name){
    cy.get(SENDER_NAME_MASTER).eq(0).should('have.value',name)
  }
  static displayFreezeTypeBank(type){
    cy.get(RECEIVER_FREEZE_TYPE_BANK).eq(0).should('have.value',type)
  }
  static displayFreezeTypePolice(type){
    cy.get(POLICE_FREEZ_TYPE).eq(0).should('have.value',type)
  }
  static displayFreezeAmountBank(amount){
    cy.get(RECEIVER_FREEZE_AMOUNT_BANK).eq(0).should('have.value',amount)
  }
  static displayFreezeAmountPolice(amount){
    cy.get(POLICE_FREEZ_AMOUNT).eq(0).should('have.value',amount)
  }
  static displayFreezeNoPolice(amount){
    cy.get(POLICE_FREEZ_NO).eq(0).should('have.value',amount)
  }
  static displayUnfreezeNoPolice(amount){
    cy.get(POLICE_UNFREEZ_NO).eq(0).should('have.value',amount)
  }
  static displayBalance(balance){
    cy.get(BALANCE_AMOUNT).eq(0).should('have.value',balance)
  }
  static displayReceiverName(name){
    cy.get(REC_SENDER_NAME_MASTER).eq(1).should('have.value',name)
  }
  static displaySenderEmail(email){
    cy.get(SENDER_EMAIL).eq(0).should('have.value',email)
  }
  static displayCaseDetail(detail){
    cy.get(CASE_DETAIL).eq(0).should('have.value',detail)
  }
  static displayContactName(name){
    cy.get(CONTACT_NAME).eq(0).should('have.value',name)
  }
  static displaySenderAccNo(acc){
    cy.get(SENDER_ACC_NO).eq(0).should('have.value',acc)
  }
  static displayReceiverAccNo(acc){
    cy.get(RECEIVER_ACC_NO).eq(1).should('have.value',acc)
  }
  static displayContactPhone(phone){
    cy.get(CONTACT_PHONE).eq(0).should('have.value',phone)
  }
  static displayContactPerson(person){
    cy.get(CONTACT_PERSON).eq(0).should('have.value',person)
  }
  static displayCaseType(type){
    cy.get(CASE_TYPE_INPUT).eq(0).should('have.value',type)
  }
  static displaySenderPhone(phone){
    cy.get(SENDER_PHONE_NO).eq(0).should('have.value',phone)
  }
  static displayReceiverPhone(phone){
    cy.get(RECEIVER_PHONE_NO).eq(1).should('have.value',phone)
  }
  static displayFreezDate72h(date){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(1).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(1).should('contain.value',date)
  }
  static displayFraudFreezDate(date){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(4).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(4).should('contain.value',date)
  }
  static displayPoliceFreezDate(date){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(6).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(6).should('contain.value',date)
  }
  static displayPoliceDate(date){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(3).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(3).should('contain.value',date)
  }
  static displayUnfreezDate72h(date){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(2).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(2).should('contain.value',date)
  }

  static displayFraudUnfreezDate(date){
    const dayjs = require("dayjs")
    // const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(5).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(5).should('contain.value',date)
  }
  static displayPoliceUnfreezDate(date){
    const dayjs = require("dayjs")
    const todayDates = dayjs().format("-MM-")
    cy.get(FREEZ_DATE).eq(7).should('contain.value',"2566")
    cy.get(FREEZ_DATE).eq(7).should('contain.value',date)
  }
  static displayFreezTime72h(time){
    cy.get(FREEZ_TIME).eq(1).should('have.value',time)
  }
  static displayFraudFreezTime(time){
    cy.get(FREEZ_TIME).eq(4).should('have.value',time)
  }
  static displayPoliceFreezTime(time){
    cy.get(FREEZ_TIME).eq(6).should('have.value',time)
  }
  static displayPoliceTime(time){
    cy.get(FREEZ_TIME).eq(3).should('have.value',time)
  }
  
  static displayUnfreezTime72h(){
    cy.get(FREEZ_TIME).eq(2).should('not.have.value',"")
  }
  static displayFraudUnfreezTime(){
    cy.get(FREEZ_TIME).eq(4).should('not.have.value',"")
  }
  static displayPoliceUnfreezTime(){
    cy.get(FREEZ_TIME).eq(6).should('not.have.value',"")
  }
  static displaySenderSureName(surename){
    cy.get(SURENAME_INPUT).eq(0).should('have.value',surename)
  }
  static displayReceiverSureName(surename){
    cy.get(REC_SURENAME_INPUT).eq(1).should('have.value',surename)
  }
  static displaySenderPersonNo(person_no){
    cy.get(PERSON_NO_INPUT).eq(0).should('have.value',person_no)
  }
  static displayReceiverPersonNo(person_no){
    cy.get(REC_PERSON_NO_INPUT).eq(1).should('have.value',person_no)
  }
  static displaySerderPersonType(person_type){
    cy.get(PERSON_TYPE_INPUT).eq(0).should('have.value',person_type)
  }
  static displayPromptPayType(type){
    cy.get(PROMPTPAY_TYPE).eq(0).should('have.value',type)
  }
  static displayReceiverBank(bank){
    cy.get(RECEIVER_BANK).eq(1).should('have.value',bank)
  }
  static displayPromptPayValue(value){
    cy.get(PROMPTPAY_VALUE).eq(0).should('have.value',value)
  }
  static displayReceiverPersonType(person_type){
    cy.get(REC_PERSON_TYPE_INPUT).eq(1).should('have.value',person_type)
  }
  static clickEditButtonFirst(){
    cy.get(EDIT_BUTTON).first().click()
    cy.wait(2000)
  }
  static editPoliceValue(police_num){
    cy.get(POLICE_NUM_INPUT).type(police_num)
  }
  static editPoliceDateValue(date){
    cy.get('svg[data-testid="CalendarIcon"]').eq(0).click()
    cy.get('button[aria-label="Previous month"]').click()
    cy.get('button[class="MuiButtonBase-root MuiPickersDay-root MuiPickersDay-dayWithMargin css-fm19de"]').contains(date).click()
  }
  static editPoliceDateValueToOriginal(date){
    cy.get('svg[data-testid="CalendarIcon"]').eq(0).click()
    cy.get('button[aria-label="Next month"]').click()
    cy.get('button[class="MuiButtonBase-root MuiPickersDay-root MuiPickersDay-dayWithMargin css-fm19de"]').contains(date).click()
  }
  static clickSave(){
    cy.get(SAVE_BUTTON).click()
    cy.contains('h2','การบันทึกข้อมูล')
    cy.contains("ยืนยันการบันทึกข้อมูล")
    cy.get('button').contains('ยืนยัน').click()
  }
  static clickSaveWithInvalidData(){
    cy.get(SAVE_BUTTON).click()
  }
  static clearPoliceNumberValue(){
    cy.get(POLICE_NUM_INPUT).clear()
  }
  static clearPoliceDateValue(){
    cy.get(REPORT_POLICE_DATE_INPUT).eq(0).clear()
  }
  static updatePagePoliceNumberDisplay(police_num){
    cy.get(POLICE_NUM_INPUT).should('have.value',police_num)
  }
  static updatePagePoliceDateDisplay(date){
    cy.get('input[placeholder="yyy-mm-dd"]').should('have.value',date)
    // cy.get('input[value="'+date+'"]').should('be.visible')
  }
  static updatePagePoliceTimeDisplay(time){
    cy.get(TIME_INUPT).eq(0).should('have.value',time)
  }
  static closeUpdatePage(){
    cy.get(CLOSE_BUTTON).click()
  }
  static clickTimeClear(){
    cy.get('a[class="rc-time-picker-clear"]').eq(0).click()
  }
  static policeNumberFieldIsDisable(){
    cy.get(POLICE_NUM_INPUT).should('have.attr', 'readonly', 'readonly')
  }
  static senderNameFieldIsDisable(){
    cy.get(SENDER_NAME_MASTER).eq(0).should('have.attr', 'readonly', 'readonly')
  }
  static receiverPhoneNoFieldIsDisable(){
    cy.get(RECEIVER_PHONE_NO).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static promptPayTypeFieldIsDisable(){
    cy.get(PROMPTPAY_TYPE).eq(0).should('have.attr', 'disabled')
  }
  static promptPayValueFieldIsDisable(){
    cy.get(PROMPTPAY_VALUE).eq(0).should('have.attr', 'readonly', 'readonly')
  }
  static receiverNameFieldIsDisable(){
    cy.get(REC_SENDER_NAME_MASTER).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static receiverBankFieldIsDisable(){
    cy.get(RECEIVER_BANK).eq(1).should('have.attr', 'disabled')
  }
  static senderBankNameFieldIsDisable(){
    cy.get(SENDER_BANK_NAME).eq(0).should('have.attr', 'disabled')
  }
  static senderEmailFieldIsDisable(){
    cy.get(SENDER_EMAIL).eq(0).should('have.attr', 'readonly', 'readonly')
  }
  static caseDetailFieldIsDisable(){
    cy.get(CASE_DETAIL).eq(0).should('have.attr', 'readonly', 'readonly') 
  }
  static contactNameFieldIsDisable(){
    cy.get(CONTACT_NAME).eq(0).should('have.attr', 'readonly', 'readonly') 
  }
  static contactPhoneFieldIsDisable(){
    cy.get(CONTACT_PHONE).eq(0).should('have.attr', 'readonly', 'readonly') 
  }
  static senderAccNoFieldIsDisable(){
    cy.get(SENDER_ACC_NO).eq(0).should('have.attr', 'readonly', 'readonly') 
  }
  static receiverAccNoFieldIsDisable(){
    cy.get(RECEIVER_ACC_NO).eq(1).should('have.attr', 'readonly', 'readonly') 
  }
  static senderNameDisplay(name){
    cy.get(SENDER_NAME_MASTER).eq(0).should('have.value',name)
  }
  static receiverNameDisplay(name){
    cy.get(REC_SENDER_NAME_MASTER).eq(1).should('have.value',name)
  }
  static receiverBankDisplay(bank){
    cy.get(RECEIVER_BANK).eq(1).should('have.value',bank)
  }
  static senderBankNameDisplay(bank){
    cy.get(SENDER_BANK_NAME).eq(0).should('have.value',bank)
  }
  static senderEmailDisplay(email){
    cy.get(SENDER_EMAIL).eq(0).should('have.value',email)
  }
  static caseDetailDisplay(detail){
    cy.get(CASE_DETAIL).eq(0).should('have.value',detail)
  }
  static contactNameDisplay(contact){
    cy.get(CONTACT_NAME).eq(0).should('have.value',contact)
  }
  static contactPhoneDisplay(contact){
    cy.get(CONTACT_PHONE).eq(0).should('have.value',contact)
  }
  static senderAccNoDisplay(acc){
    cy.get(SENDER_ACC_NO).eq(0).should('have.value',acc)
  }
  static receiverAccNoDisplay(acc){
    cy.get(RECEIVER_ACC_NO).eq(1).should('have.value',acc)
  }
  static senderPhoneNoDisplay(phone){
    cy.get(SENDER_PHONE_NO).eq(0).should('have.value',phone) 
  }
  static receiverPhoneNoDisplay(phone){
    cy.get(RECEIVER_PHONE_NO).eq(1).should('have.value',phone) 
  }
  static promptPayTypeDisplay(type){
    cy.get(PROMPTPAY_TYPE).eq(0).should('have.value',type) 
  }
  static promptPayValueDisplay(value){
    cy.get(PROMPTPAY_VALUE).eq(0).should('have.value',value) 
  }
  static senderSurenameDisplay(name){
    cy.get(SURENAME_INPUT).eq(0).should('have.value',name)
  }
  static receiverSurenameDisplay(name){
    cy.get(REC_SURENAME_INPUT).eq(1).should('have.value',name)
  }
  static typeDetectIsDisable(){
    cy.get(TYPE_DETECT_LISTBOX).should('have.attr', 'disabled')
  }
  static caseTypeIsDisable(){
    cy.get(CASE_TYPE_INPUT).should('have.attr', 'disabled')  
  }
  static contactRelationIsDisable(){
    cy.get(CONTACT_PERSON).should('have.attr', 'disabled')  
  }
  static policeTimeIsDisable(){
    cy.get(TIME_INUPT).eq(0).should('have.attr', 'disabled') 
  }
  static policeDateFieldIsDisable(){
    cy.get(REPORT_POLICE_DATE_INPUT).eq(0).should('have.attr', 'disabled')
  }
  static typeDetectValueDisplay(type_detect){
    cy.get('input[value="'+type_detect+'"]').should('be.visible')
  }
  static caseTypeValueDisplay(type){
    cy.get('input[value="'+type+'"]').should('be.visible')
  }
  static contactRelationValueDisplay(relation){
    cy.get('input[value="'+relation+'"]').should('be.visible')
  }
  static policeTimeDisplay(time){
    cy.get(TIME_INUPT).eq(0).should('have.value',time)
  }
  static displayPoliceDateRedLableError(){
    cy.contains("วันที่แจ้งความจากตำรวจ").should('have.css','color','rgb(255, 77, 79)')
  }
  static clickTimeInput(){
    cy.get(TIME_INUPT).eq(0).click()
  }
  static selectPoliceTimeMin(min){
    cy.get('div[class="rc-time-picker-panel-select"]').eq(0).then(($ui) =>{
        cy.get('ul').children().contains(min).click()
    })
    cy.wait(2000)
    cy.get('body').click()
  }
  static selectPoliceTimeSec(sec){
    cy.get('div[class="rc-time-picker-panel-select"]').eq(1).then(($ui) =>{
        cy.get($ui).children().contains(sec).click()
    })
    cy.wait(2000)
    cy.get('body').click()
  }
  static displayLable_Money_Tranfer(folder,row){
    cy.fixture(folder).then(scenario1 =>{
      cy.contains(scenario1.header_moneytrafer)
      cy.contains(scenario1.label_moneytrafer_date)
      cy.contains(scenario1.label_moneytrafer_time)
      cy.contains(scenario1.label_moneytrafer_account)
      cy.contains(scenario1.label_moneytrafer_bank)
      cy.contains(scenario1.label_moneytrafer_amount)
      cy.contains(scenario1.label_moneytrafer_instructionID)
      cy.contains(scenario1.label_moneytrafer_IP)
      // Validate 
      let index = 1
      cy.get('table.MuiTable-root.css-1do02ev').within(()=>{
        for (let i = 0; i < row; i++ , index++) { 
          cy.get('input.MuiInputBase-inputAdornedEnd.css-merbdn').eq(i).should('have.value', scenario1[`trasition_${i}_date`])
          cy.get('input.rc-time-picker-input').eq(i).should('have.value', scenario1[`trasition_${i}_time`])
          cy.get(`:nth-child(${index}) > td.css-1yjuasj > .MuiTypography-root`).should('have.text', scenario1[`trasition_${i}_account`])
          cy.get('[name="subCaseRemainingAmount"]').eq(i).should('have.value', scenario1[`trasition_${i}_amount`])
          cy.get(`:nth-child(${index}) > :nth-child(6) > .MuiFormControl-root > .MuiInputBase-root > #outlined-basic`).should('have.value', scenario1[`trasition_${i}_instructionID`])
          cy.get(`:nth-child(${index}) > :nth-child(7) > .MuiFormControl-root > .MuiInputBase-root > #outlined-basic`).should('have.value', scenario1[`trasition_${i}_IP`])
          
        }    
      })     
    }) 
     
  }
}
export default UpdatePage


