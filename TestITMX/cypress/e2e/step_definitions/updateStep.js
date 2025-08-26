import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import UpdatePage from './updatePage';
import ViewPage from './viewPage';


Then('click edit first record',() =>{
  UpdatePage.clickEditButtonFirst()
})

When('edit police number to {string} value',police_num =>{
  if(police_num == "EMPTY"){
    UpdatePage.clearPoliceNumberValue()
    UpdatePage.clickSave()
  }
  else if(police_num == "more_than_128"){
    UpdatePage.clearPoliceNumberValue()
    police_num = "222222222 222more_then128digit333333999999999999999999999999999999849599999999999999999999999999999999999dfdfdfddfsdfsa3434343444444499"
    UpdatePage.editPoliceValue(police_num)
    UpdatePage.clickSave()
  }
  else{
    UpdatePage.clearPoliceNumberValue()
    UpdatePage.editPoliceValue(police_num)
    UpdatePage.clickSave()
  }
})
When('edit police date to {string} value',date =>{
  if(date == "EMPTY"){
    UpdatePage.clearPoliceDateValue()
    UpdatePage.clickSave()
    UpdatePage.closeUpdatePage()
   }else{
    // UpdatePage.clearPoliceDateValue()
    UpdatePage.editPoliceDateValue(date)
    UpdatePage.clickSave()
    UpdatePage.closeUpdatePage()
  }
})
When('edit police time to minute {int} and secoud {int}',(min,sec) => {
  UpdatePage.clickTimeInput()
  UpdatePage.selectPoliceTimeMin(min)
  UpdatePage.clickTimeInput()
  UpdatePage.selectPoliceTimeSec(sec)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
When('edit police time to empty',() => {
  UpdatePage.clickTimeClear()
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()

})
Then('edit police time back to original minute {int} and secoud {int}',(min,sec) => {
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clickTimeInput()
  UpdatePage.selectPoliceTimeMin(min)
  UpdatePage.clickTimeInput()
  UpdatePage.selectPoliceTimeSec(sec)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
When('edit police date to {string} invalid value',date =>{
  if(date == "EMPTY"){
    UpdatePage.clearPoliceDateValue()
    UpdatePage.clickSave()
    UpdatePage.closeUpdatePage()
   }else{
    UpdatePage.clearPoliceDateValue()
    UpdatePage.editPoliceDateValue(date)
    UpdatePage.displayPoliceDateRedLableError()
    UpdatePage.clickSave()
    UpdatePage.closeUpdatePage()
  }
})
Then ('should be disable dialog error police date of master case',() =>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_police_date_master_case)
  })
})
Then('should be display police number on update page is {string}',police_num => {
  if(police_num == "EMPTY"){
    police_num = ""
    UpdatePage.updatePagePoliceNumberDisplay(police_num)
  }
  else if(police_num == "more_than_128"){
      police_num = "222222222 222more_then128digit333333999999999999999999999999999999849599999999999999999999999999999999999dfdfdfddfsdfsa343434344"
      UpdatePage.updatePagePoliceNumberDisplay(police_num)
  }else{
    UpdatePage.updatePagePoliceNumberDisplay(police_num)
  }
  UpdatePage.closeUpdatePage()
})
Then('should be display police time on update page is {string}',time =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.updatePagePoliceTimeDisplay(time)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver bank on update page is {string}',bank =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayReceiverBank(bank)
  UpdatePage.closeUpdatePage()
})
Then('should be display police date on update page is {string}',date =>{
  UpdatePage.clickEditButtonFirst()
  if(date == "EMPTY"){
    UpdatePage.updatePagePoliceDateDisplay("")
  }else{
    UpdatePage.updatePagePoliceDateDisplay(date)
  }
  UpdatePage.closeUpdatePage()
 
})
Then('should be display police number on view page is {string}',police_num =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(5000)
  if(police_num == "EMPTY"){
    ViewPage.viewPagePoliceNumberDisplay("")
  }
  else if(police_num == "more_than_128"){
    police_num = "222222222 222more_then128digit333333999999999999999999999999999999849599999999999999999999999999999999999dfdfdfddfsdfsa343434344"
    ViewPage.viewPagePoliceNumberDisplay(police_num)
  }
  else{
    ViewPage.viewPagePoliceNumberDisplay(police_num)
  }
  ViewPage.clickBack()
})

Then('edit police number back to the original value {string}',police_num =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearPoliceNumberValue()
  UpdatePage.editPoliceValue(police_num)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('update receiver bank freeze type freeze amount and balance back to original',() =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnReceiverFreezeTypeByBank()
  UpdatePage.clearDataOnBalance()
  UpdatePage.clearDataOnFreezAmountByBank()
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('edit police date back to the original value {string}',date =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearPoliceDateValue()
  UpdatePage.editPoliceDateValueToOriginal(date)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('close update page',()=>{
  UpdatePage.closeUpdatePage()
})
Then('should be disable field police number on update page',() =>{
  UpdatePage.policeNumberFieldIsDisable()
})
Then('should be disable field and display sender name on update page is {string}',name=>{
  UpdatePage.senderNameFieldIsDisable()
  UpdatePage.senderNameDisplay(name)
})
Then('should be disable field and display receiver name on update page is {string}',name=>{
  UpdatePage.receiverNameFieldIsDisable()
  UpdatePage.receiverNameDisplay(name)
})
Then('should be disable field and display receiver bank on update page is {string}',bank=>{
  UpdatePage.receiverBankFieldIsDisable()
  UpdatePage.receiverBankDisplay(bank)
})
Then('should be disable field and display sender bank on update page is {string}',bankname=>{
  UpdatePage.senderBankNameFieldIsDisable()
  UpdatePage.senderBankNameDisplay(bankname)
})
Then('should be disable field and display sender email on update page is {string}',email=>{
  UpdatePage.senderEmailFieldIsDisable()
  UpdatePage.senderEmailDisplay(email)
})
Then('should be disable field and display case detail on update page is {string}',name=>{
  UpdatePage.caseDetailFieldIsDisable()
  UpdatePage.caseDetailDisplay(name)
})
Then('should be disable field and display contact name on update page is {string}',name=>{
  UpdatePage.contactNameFieldIsDisable()
  UpdatePage.contactNameDisplay(name)
})
Then('should be disable field and display contact phone on update page is {string}',name=>{
  UpdatePage.contactPhoneFieldIsDisable()
  UpdatePage.contactPhoneDisplay(name)
})
Then('should be disable field and display account number on update page is {string}',name=>{
  UpdatePage.senderAccNoFieldIsDisable()
  UpdatePage.senderAccNoDisplay(name)
})
Then('should be disable field and display receiver account number on update page is {string}',name=>{
  UpdatePage.receiverAccNoFieldIsDisable()
  UpdatePage.receiverAccNoDisplay(name)
})
Then('should be disable field and display sender phone on update page is {string}',phone=>{
  UpdatePage.senderNameFieldIsDisable()
  UpdatePage.senderPhoneNoDisplay(phone)
})
Then('should be disable field and display receiver phone on update page is {string}',phone=>{
  UpdatePage.receiverPhoneNoFieldIsDisable()
  UpdatePage.receiverPhoneNoDisplay(phone)
})
Then('should be disable field and display promptpay on update page with type {string} and proxy value {string}',(type,value) =>{
  UpdatePage.promptPayTypeFieldIsDisable()
  UpdatePage.promptPayValueFieldIsDisable()
  UpdatePage.promptPayTypeDisplay(type)
  UpdatePage.promptPayValueDisplay(value)
})
Then('should be disable field police date on update page',()=>{
  UpdatePage.policeDateFieldIsDisable()
})
Then('should be diable field and display type of detect on update page is {string}',type_detect =>{
  UpdatePage.typeDetectIsDisable()
  UpdatePage.typeDetectValueDisplay(type_detect)
})
Then('should be diable field and display case type on update page is {string}',type =>{
  UpdatePage.caseTypeIsDisable()
  UpdatePage.caseTypeValueDisplay(type)
})
Then('should be diable field and display contact relation on update page is {string}',type =>{
  UpdatePage.contactRelationIsDisable()
  UpdatePage.contactRelationValueDisplay(type)
})
Then('should be disable field and display police time on update page is {string}',time =>{
  UpdatePage.policeTimeIsDisable()
  UpdatePage.policeTimeDisplay(time)
})
When('edit sender name is {string} value',name =>{
  if(name == "EMPTY"){
    UpdatePage.clearDataOnSenderName()
  }else if(name == "more_then_256"){
    UpdatePage.clearDataOnSenderName()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInSenderName(name_over_limit)
  }else{
    UpdatePage.clearDataOnSenderName()
    UpdatePage.fillInSenderName(name)
  }
})
When('edit freeze no by police is {string}',number =>{
  if(number == "EMPTY"){
    UpdatePage.clearDataOnReceiverFreezeNoByPolice()
  }else{
  UpdatePage.fillInPoliceFreezeNo(number)
  }
})
When('edit unfreeze no by police is {string}',number =>{
  if(number == "EMPTY"){
    UpdatePage.clearDataOnReceiverUnfreezeNoByPolice()
  }else{
    UpdatePage.fillInPoliceUnfreezeNo(number)
  }
})

When('edit freeze amount by police is {string}',number =>{
  UpdatePage.fillInPoliceFreezeAmount(number)
})

When('edit receiver name is {string} value',name =>{
  if(name == "EMPTY"){
    UpdatePage.clearDataOnReceiverName()
  }else if(name == "more_then_256"){
    UpdatePage.clearDataOnReceiverName()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInReceiverName(name_over_limit)
  }else{
    UpdatePage.clearDataOnReceiverName()
    UpdatePage.fillInReceiverName(name)
  }
})
When('edit receiver bank to {string}',bank =>{
  UpdatePage.selectReceiverBank(bank)
})
When('edit receiver feeze date 72H to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editFreezeDateByBank(date)
  UpdatePage.editFreezeTimeByBank(min,sec)
})
When('edit receiver same bank feeze date 72H to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editUnfreezeDateByBank(date)
  UpdatePage.editFreezeTimeByBank(min,sec)
})
When('edit receiver fraud feeze date 7 days to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editFraudFreezeDate(date)
  UpdatePage.editFraudFreezeTime(min,sec)
})
When('edit receiver same bank fraud feeze date 7 days to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editFraudUnfreezeDate(date)
  UpdatePage.editFraudFreezeTime(min,sec)
})
When('edit receiver police feeze date 7 days to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editPoliceFreezeDate(date)
  UpdatePage.editPoliceFreezeTime(min,sec)
})
When('edit receiver same bank police feeze date 7 days to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editPoliceUnfreezeDate(date)
  UpdatePage.editPoliceFreezeTime(min,sec)
})
When('edit receiver fraud unfeeze date 7 days to 2566-MM-{string}',date =>{
  UpdatePage.editFraudUnfreezeDate(date)
})
When('edit receiver same bank fraud unfeeze date 7 days to 2566-MM-{string}',date =>{
  UpdatePage.editPoliceFreezeDate(date)
})
When('edit receiver police unfeeze date 7 days to 2566-MM-{string}',date =>{
  UpdatePage.editPoliceUnfreezeDate(date)
})
When('edit receiver same bank police unfeeze date 7 days to 2566-MM-{string}',date =>{
  UpdatePage.editPoliceUnfreezeDateSameBank(date)
})
When('edit receiver police report date to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editPoliceReportDate(date)
  UpdatePage.editPoliceReportTime(min,sec)
})
When('edit receiver same bank police report date to 2566-MM-{string} and time to minute {int} and secoud {int}',(date,min,sec) =>{
  UpdatePage.editFraudFreezeDate(date)
  UpdatePage.editPoliceReportTime(min,sec)
})
When('edit receiver unfeeze date 72H to 2566-MM-{string}',date =>{
  UpdatePage.editUnfreezeDateByBank(date)
})
When('edit receiver same bank unfeeze date 72H to 2566-MM-{string}',date =>{
  UpdatePage.editPoliceReportDate(date)
})
When('edit sender email is {string} value',email =>{
  if(email == "EMPTY"){
    UpdatePage.clearDataOnSenderEmail()
  }else if(email == "more_then_256"){
    UpdatePage.clearDataOnSenderEmail()
    const email_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww@wwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInSenderEmail(email_over_limit)
  }else{
    UpdatePage.clearDataOnSenderEmail()
    UpdatePage.fillInSenderEmail(email)
  }
})
When('edit case detail is {string} value',name =>{
  if(name == "EMPTY"){
    UpdatePage.clearDataOnCaseDetail()
  }else if(name == "more_then_1024"){
    UpdatePage.clearDataOnCaseDetail()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
    UpdatePage.fillInCaseDetail(name_over_limit)
  }else{
    UpdatePage.clearDataOnCaseDetail()
    UpdatePage.fillInCaseDetail(name)
  }
})
When('edit contact name is {string} value',name =>{
  if(name == "EMPTY"){
    UpdatePage.clearDataOnContactName()
  }else if(name == "more_then_256"){
    UpdatePage.clearDataOnContactName()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInContactName(name_over_limit)
  }else{
    UpdatePage.clearDataOnContactName()
    UpdatePage.fillInContactName(name)
  }
})
When('edit sender account number is {string} value',acc =>{
  if(acc == "EMPTY"){
    UpdatePage.clearDataOnSenderAccNo()
  }else if(acc == "more_then_34"){
    UpdatePage.clearDataOnSenderAccNo()
    const name_over_limit = "22222222222222222222222222222222224"
    UpdatePage.fillInSenderAccNo(name_over_limit)
  }else{
    UpdatePage.clearDataOnSenderAccNo()
    UpdatePage.fillInSenderAccNo(acc)
  }
})
When('edit receiver account number is {string}',acc =>{
  if(acc == "EMPTY"){
    UpdatePage.clearDataOnReceiverAccNo()
  }else if(acc == "more_then_34"){
    UpdatePage.clearDataOnReceiverAccNo()
    const name_over_limit = "22222222222222222222222222222222224"
    UpdatePage.fillInReceiverAccNo(name_over_limit)
  }else{
    UpdatePage.clearDataOnReceiverAccNo()
    UpdatePage.fillInReceiverAccNo(acc)
  }
})
When('edit contact phone is {string} value',phone =>{
  if(phone == "EMPTY"){
    UpdatePage.clearDataOnContactPhone()
  }else if(phone == "more_then_35"){
    UpdatePage.clearDataOnContactPhone()
    const phoine_over_limit = "0972490000-9480rerde3,940,ต่อ 12ss3309,eeee"
    UpdatePage.fillInContactPhone(phoine_over_limit)
  }else{
    UpdatePage.clearDataOnContactPhone()
    UpdatePage.fillInContactPhone(phone)
  }
})

When('edit contact person to {string} value',relation =>{
  UpdatePage.fillInContactPerson(relation)
})
When('edit sender phone no is {string} value',phone =>{
  if(phone == "EMPTY"){
    UpdatePage.clearDataOnSenderPhoneNo()
  }else if(phone == "more_then_35"){
    UpdatePage.clearDataOnSenderPhoneNo()
    const name_over_limit = "12222222222222948405888-9e899999933333333333"
    UpdatePage.fillInSenderPhoneNo(name_over_limit)
  }else{
    UpdatePage.clearDataOnSenderPhoneNo()
    UpdatePage.fillInSenderPhoneNo(phone)
  }
})
When('edit receiver phone no is {string} value',phone =>{
  if(phone == "EMPTY"){
    UpdatePage.clearDataOnReceiverPhoneNo()
  }else if(phone == "more_then_35"){
    UpdatePage.clearDataOnReceiverPhoneNo()
    const name_over_limit = "12222222222222948405888-9e899999933333333333"
    UpdatePage.fillInReceiverPhoneNo(name_over_limit)
  }else{
    UpdatePage.clearDataOnReceiverPhoneNo()
    UpdatePage.fillInReceiverPhoneNo(phone)
  }
})
When('edit receiver promptpay mobile number is {string} value',proxy =>{
    UpdatePage.selectPromtpayType("เบอร์โทร")
  if(proxy == "EMPTY"){
    UpdatePage.clearDataOnReceiverPromptpayValue()
  }else{
    UpdatePage.clearDataOnReceiverPromptpayValue()
    UpdatePage.fillInReceiverPromptpayValue(proxy)
  }
})
When('edit receiver promptpay NATID number is {string} value',proxy =>{
  UpdatePage.selectPromtpayType("หมายเลขบัตรประชาชน")
if(proxy == "EMPTY"){
  UpdatePage.clearDataOnReceiverPromptpayValue()
}else{
  UpdatePage.clearDataOnReceiverPromptpayValue()
  UpdatePage.fillInReceiverPromptpayValue(proxy)
}
})
When('edit receiver promptpay BILLERID is {string} value',proxy =>{
  UpdatePage.selectPromtpayType("เลขนิติบุคคล (Biller Id)")
if(proxy == "EMPTY"){
  UpdatePage.clearDataOnReceiverPromptpayValue()
}else{
  UpdatePage.clearDataOnReceiverPromptpayValue()
  UpdatePage.fillInReceiverPromptpayValue(proxy)
}
})
When('edit receiver promptpay E-Wallet is {string} value',proxy =>{
  UpdatePage.selectPromtpayType("e-wallet")
if(proxy == "EMPTY"){
  UpdatePage.clearDataOnReceiverPromptpayValue()
}else{
  UpdatePage.clearDataOnReceiverPromptpayValue()
  UpdatePage.fillInReceiverPromptpayValue(proxy)
}
})
When('edit receiver promptpay unknown is {string} value',proxy =>{
  UpdatePage.selectPromtpayType("ไม่มี")
if(proxy == "EMPTY"){
  UpdatePage.clearDataOnReceiverPromptpayValue()
}else{
  UpdatePage.clearDataOnReceiverPromptpayValue()
  UpdatePage.fillInReceiverPromptpayValue(proxy)
}
})
When('edit sender surename is {string} value',surename =>{
  if(surename == "EMPTY"){
    UpdatePage.clearDataOnSenderSureName()
  }else if(surename == "more_then_256"){
    UpdatePage.clearDataOnSenderSureName()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInSenderSureName(name_over_limit)
    cy.wait(2000)
  }else{
    UpdatePage.clearDataOnSenderSureName()
    UpdatePage.fillInSenderSureName(surename)
  }
})
When('edit receiver surename is {string} value',surename =>{
  if(surename == "EMPTY"){
    UpdatePage.clearDataOnReceiverSureName()
  }else if(surename == "more_then_256"){
    UpdatePage.clearDataOnReceiverSureName()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInReceiverSureName(name_over_limit)
    cy.wait(2000)
  }else{
    UpdatePage.clearDataOnReceiverSureName()
    UpdatePage.fillInReceiverSureName(surename)
  }
})
When('edit sender person number is {string} value',person_number => {
  if(person_number == "EMPTY"){
    UpdatePage.clearDataOnSenderPersonNo()
  }else if(person_number == "more_then_256"){
    UpdatePage.clearDataOnSenderPersonNo()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInSenderPersonNo(name_over_limit)
  }else{
    UpdatePage.clearDataOnSenderPersonNo()
    UpdatePage.fillInSenderPersonNo(person_number)
  }
})

When('edit receiver person number is {string} value',person_number => {
  if(person_number == "EMPTY"){
    UpdatePage.clearDataOnReceiverPersonNo()
  }else if(person_number == "more_then_256"){
    UpdatePage.clearDataOnReceiverPersonNo()
    const name_over_limit = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwd"
    UpdatePage.fillInReceiverPersonNo(name_over_limit)
  }else{
    UpdatePage.clearDataOnReceiverPersonNo()
    UpdatePage.fillInReceiverPersonNo(person_number)
  }
})
When('edit sender person type is {string} value',type =>{
  if(type == "EMPTY"){
    UpdatePage.clearDataOnSenderPersonType()
  }else{
    UpdatePage.fillInSenderPersonType(type)
  }
})
When('edit freeze amount by Banks is {string}',amount =>{
  if(amount == "EMPTY"){
    UpdatePage.clearDataOnFreezAmountByBank()
  }else{
    UpdatePage.fillInFreezAmountByBank(amount)
  }
})
When('disable field freeze amount by Banks',() =>{
  UpdatePage.DisableFieldFreezAmountByBank()
})
When('disable field balance by Banks',() =>{
  UpdatePage.DisableFieldBalance()
})

When('edit balance by Banks is {string}',amount =>{
  if(amount == "EMPTY"){
    UpdatePage.clearDataOnBalance()
  }else{
    UpdatePage.fillInBalance(amount)
  }
})
When('edit freeze type by Banks is {string}',type =>{
  if(type == "EMPTY"){
    UpdatePage.clearDataOnReceiverFreezeTypeByBank()
  }else{
    UpdatePage.fillInReceiverFreezeTypeByBank(type)
  }
})
When('edit freeze type by police is {string}',type =>{
  if(type == "EMPTY"){
    UpdatePage.clearDataOnReceiverFreezeTypeByPolice()
  }else{
    UpdatePage.fillInReceiverFreezeTypeByPolice(type)
  }
})

When('edit receiver person type is {string} value',type =>{
  cy.scrollTo(0, 1000)
  if(type == "EMPTY"){
    UpdatePage.clearDataOnReceiverPersonType()
  }else{
    UpdatePage.fillInReceiverPersonType(type)
  }
})
When('edit case type to {string} value',type =>{
  if(type == "EMPTY"){
    UpdatePage.clearDataOnSenderPersonType()
  }else{
    UpdatePage.fillInCaseType(type)
  }
})
Then('update sender name back to original {string}',name=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnSenderName()
  UpdatePage.fillInSenderName(name)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('update receiver name back to original {string}',name=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnReceiverName()
  UpdatePage.fillInReceiverName(name)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('update receiver bank back to original {string}',bank=>{
  UpdatePage.clickEditButtonFirst()
  cy.wait(2000)
  UpdatePage.selectReceiverBank(bank)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('update sender email back to original {string}',email=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnSenderEmail()
  UpdatePage.fillInSenderEmail(email)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('update case detail back to original {string}',type=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnCaseDetail()
  UpdatePage.fillInCaseDetail(type)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update contact name back to original {string}',type=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnContactName()
  UpdatePage.fillInContactName(type)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update sender account number back to original {string}',acc=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnSenderAccNo()
  UpdatePage.fillInSenderAccNo(acc)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update receiver account number back to original {string}',acc=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnReceiverAccNo()
  UpdatePage.fillInReceiverAccNo(acc)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update contact phone back to original {string}',phone=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnContactPhone()
  UpdatePage.fillInContactPhone(phone)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update contact person back to original {string}',person=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.fillInContactPerson(person)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('edit contact relation is {string} value',relation =>{
    UpdatePage.fillInContactPerson(relation)
})
Then('update sender phone no back to original {string}',phone=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnSenderPhoneNo()
  UpdatePage.fillInSenderPhoneNo(phone)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update receiver phone no back to original {string}',phone=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnReceiverPhoneNo()
  UpdatePage.fillInReceiverPhoneNo(phone)
  UpdatePage.clickSave()
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('update case type back to original {string}',type=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.fillInCaseType(type)
  UpdatePage.clickSave()
  UpdatePage.closeUpdatePage()
})
Then('should be display error sender name on screen',()=>{
  UpdatePage.errSenderNameInvalidOnScreen()
})
Then('should be display error receiver name on screen',()=>{
  UpdatePage.errReceiverNameInvalidOnScreen()
})
Then('should be display error sender account number on screen',()=>{
  UpdatePage.errSenderAccNoInvalidOnScreen()
})
Then('should be display error receiver account number on screen',()=>{
  UpdatePage.errReceiverAccNoInvalidOnScreen()
})
Then('should be display error sender phone on screen',()=>{
  UpdatePage.errSenderPhoneNoInvalidOnScreen()
})
Then('should be display error receiver surename on screen',()=>{
  UpdatePage.errReceiverSurenameInvalidOnScreen()
})
Then('should be display error sender person number on screen',()=>{
  UpdatePage.errSenderPersonNoInvalidOnScreen()
})
Then('should be display error promptpay value on screen',()=>{
  UpdatePage.errPromptPayValueInvalidOnScreen()
})
When('sender surename is disable field and empty value',() =>{
  UpdatePage.senderSurenameIsDisableField()
  UpdatePage.senderSurenameDisplay("")
})
When('receiver surename is disable field and empty value',() =>{
  UpdatePage.receiverSurenameIsDisableField()
  UpdatePage.receiverSurenameDisplay("")
})
Then('should be display error sender person type on screen',()=>{
  UpdatePage.errSenderPersonTypeInvalidOnScreen()
})
Then('should be display error receiver person type on screen',()=>{
  UpdatePage.errReceiverPersonTypeInvalidOnScreen()
})
Then ('click edit data',()=>{
  UpdatePage.clickSave()
})
Then ('click edit data with invalid data',()=>{
  UpdatePage.clickSaveWithInvalidData()
})

Then('should be display popup error sender name on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_name_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error freez amount bank on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_receiver_freeze_amount_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error invalid format freez amount bank on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_receiver_freeze_amount_invalid_format)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error receiver name on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_receiver_name_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error receiver promptpay on update page',() =>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_promptpay_type_invalid)
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_promptpay_value_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error sender email on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_email_invalid)
  })
  UpdatePage.closeUpdatePage()
})

Then('should be display popup error sender account number on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_acc_no_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error receiver account number on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_receiver_acc_no_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error sender phone on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_phone_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error sender surename on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_surename_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error sender personal id on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_personalID_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error receiver personal id on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.txn_natid_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error sender person type on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_person_typ_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error receiver person type on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_receiver_person_typ_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error receiver surename on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_receiver_surename_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display popup error sender person number on update page',()=>{
  cy.fixture('error_message').then(testdata=>{
    UpdatePage.displayPopupErrorOnUdatePage(testdata.update_sender_person_no_invalid)
  })
  UpdatePage.closeUpdatePage()
})
Then('should be display sender name on update page is {string}',name=>{
  UpdatePage.clickEditButtonFirst()
  if(name == "more_then_256"){
    name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  }
  UpdatePage.displaySenderName(name)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver bank freeze type {string} freeze amount {string} and balance {string} on update page',(type,amount,balance) =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayFreezeTypeBank(type)
  UpdatePage.displayFreezeAmountBank(amount)
  UpdatePage.displayBalance(balance)
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver police freeze type {string} freeze amount {string} freeze no {string} and unfreeze no {string} on update page',(type,amount,freeze,unfreeze) =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayFreezeTypePolice(type)
  UpdatePage.displayFreezeAmountPolice(amount)
  UpdatePage.displayFreezeNoPolice(freeze)
  UpdatePage.displayUnfreezeNoPolice(unfreeze)
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver police freeze type {string} freeze amount {string} freeze no {string} and unfreeze no {string} on view page',(type,amount,freeze,unfreeze) =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayFreezeTypePolice(type)
  ViewPage.displayFreezeAmountPolice(amount)
  ViewPage.displayFreezeNoPolice(freeze)
  ViewPage.displayUnfreezeNoPolice(unfreeze)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display receiver freez amount bank on update page is {string}',amount =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayFreezeAmountBank(amount)
  cy.wait(2000)
  UpdatePage.closeUpdatePage()
 
})
Then('should be display receiver name on update page is {string}',name=>{
  UpdatePage.clickEditButtonFirst()
  if(name == "more_eq_256"){
     name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  }
  UpdatePage.displayReceiverName(name)
  UpdatePage.closeUpdatePage()
})
Then('should be display sender email on update page is {string}',email=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displaySenderEmail(email)
  UpdatePage.closeUpdatePage()
})
Then('should be display sender account number on update page is {string}',acc=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displaySenderAccNo(acc)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver account number on update page is {string}',acc=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayReceiverAccNo(acc)
  UpdatePage.closeUpdatePage()
})
Then('should be display case detail on update page is {string}',name=>{
  UpdatePage.clickEditButtonFirst()
  if(name == "more_then_1024"){
    name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  }
  UpdatePage.displayCaseDetail(name)
  UpdatePage.closeUpdatePage()
})
Then('should be display contact name on update page is {string}',name=>{
  UpdatePage.clickEditButtonFirst()
  if(name=="more_then_256"){
    name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  }
  UpdatePage.displayContactName(name)
  UpdatePage.closeUpdatePage()
})

Then('should be display contact phone on update page is {string}',phone=>{
  UpdatePage.clickEditButtonFirst()
  if(phone == "more_then_35"){
    phone = "0972490000-9480rerde3,940,ต่อ 12ss3"
  }
  UpdatePage.displayContactPhone(phone)
  UpdatePage.closeUpdatePage()
})
Then('should be display contact person on update page is {string}',person=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayContactPerson(person)
  UpdatePage.closeUpdatePage()
})
Then('should be display case type on update page is {string}',type=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayCaseType(type)
  UpdatePage.closeUpdatePage()
})
Then('should be display sender phone on update page is {string}',phone=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displaySenderPhone(phone)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver phone on update page is {string}',phone=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayReceiverPhone(phone)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver feeze date 72H on update page is 2566-MM-{string} and time {string}',(date,time)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayFreezDate72h(date)
  UpdatePage.displayFreezTime72h(time)
})
Then('should be display receiver same bank feeze date 72H on update page is 2566-MM-{string} and time {string}',(date,time)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayUnfreezDate72h(date)
  UpdatePage.displayUnfreezTime72h(time)
})
Then('should be display receiver fraud feeze date 7 days on update page is 2566-MM-{string} and time {string}',(date,time)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayFraudFreezDate(date)
  UpdatePage.displayFraudFreezTime(time)
})
Then('should be display receiver police feeze date 7 days on update page is 2566-MM-{string} and time {string}',(date,time)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayPoliceFreezDate(date)
  UpdatePage.displayPoliceFreezTime(time)
})
Then('should be display receiver police report date on update page is 2566-MM-{string} and time {string}',(date,time)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayPoliceDate(date)
  UpdatePage.displayPoliceTime(time)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver unfeeze date 72H on update page is 2566-MM-{string}',date=>{
  UpdatePage.displayUnfreezDate72h(date)
  UpdatePage.displayUnfreezTime72h()
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver same bank unfeeze date 72H on update page is 2566-MM-{string}',date=>{
  UpdatePage.displayPoliceDate(date)
  UpdatePage.displayPoliceTime()
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver fraud unfeeze date 7 days on update page is 2566-MM-{string}',date=>{
  UpdatePage.displayFraudUnfreezDate(date)
  UpdatePage.displayFraudUnfreezTime()
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver police unfeeze date 7 days on update page is 2566-MM-{string}',date=>{
  UpdatePage.displayPoliceUnfreezDate(date)
  UpdatePage.displayPoliceUnfreezTime()
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver feeze date 72H on view page is 2566-MM-{string} and unfreez is 2566-MM-{string}',(freezdate,unfreezdate)=>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayFreezDate72h(freezdate)
  ViewPage.displayUnfreezDate72h(unfreezdate)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display receiver fraud feeze date 7 day on view page is 2566-MM-{string} and unfreez is 2566-MM-{string}',(freezdate,unfreezdate)=>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayFraudFreezDate(freezdate)
  ViewPage.displayFraudUnfreezDate(unfreezdate)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display receiver police feeze date 7 day on view page is 2566-MM-{string} and unfreez is 2566-MM-{string}',(freezdate,unfreezdate)=>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayPoliceFreezDate(freezdate)
  ViewPage.displayPoliceUnfreezDate(unfreezdate)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display receiver freez amount bank on view page is {string}',amount =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayFreezeAmountBank(amount)
  ViewPage.clickClose()
  ViewPage.clickBack()
 
})
Then('should be display receiver police report date on view page is 2566-MM-{string}',(freezdate)=>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayPoliceDate(freezdate)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display sender name on view page is {string}',name =>{
  ViewPage.clickViewButtonFirst()
  if(name == "more_then_256"){
    name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  }
  ViewPage.displaySenderName(name)
  ViewPage.clickBack()
})
Then('should be display receiver bank freeze type {string} freeze amount {string} and balance {string} on view page',(type,amount,balance) =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayFreezeTypeBank(type)
  ViewPage.displayFreezeAmountBank(amount)
  ViewPage.displayBalance(balance)
  ViewPage.clickClose()
  ViewPage.clickBack()
})

Then('should be display receiver name on view page is {string}',name =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  if(name == "more_eq_256"){
    name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
 }
  ViewPage.displayReceiverName(name)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display sender email on view page is {string}',email =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(0)
  ViewPage.displaySenderEmail(email)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display case detail on view page is {string}',name =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(0)
  if(name == "more_then_1024"){
     name = "CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  }

  ViewPage.displayCaseDetail(name)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display contact on view page is {string}',name =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(0)
  ViewPage.displayContactName(name)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display case type on view page is {string}',type =>{
  ViewPage.clickViewButtonFirst()
  ViewPage.displayMasterCaseType(type)
  ViewPage.clickBack()
})
Then('should be display sender phone on view page is {string}',phone =>{
  ViewPage.clickViewButtonFirst()
  ViewPage.displaySenderPhone(phone)
  ViewPage.clickBack()
})
Then('should be display receiver phone on view page is {string}',phone =>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  ViewPage.displayReceiverPhone(phone)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display sender surename is {string} person number is {string} and  person type is {string} on update page',(surename,person_no,person_type)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displaySenderSureName(surename)
  UpdatePage.displaySenderPersonNo(person_no)
  UpdatePage.displaySerderPersonType(person_type)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver promptpay on update page with type {string} and proxy value {string}',(type,value)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.displayPromptPayType(type)
  UpdatePage.displayPromptPayValue(value)
  UpdatePage.closeUpdatePage()

})
Then('should be display sender surename is {string} person number is {string} and  person type is {string} on view page',(surename,person_no,person_type)=>{
  ViewPage.clickViewButtonFirst()
  ViewPage.displaySenderSureName(surename)
  ViewPage.displaySenderPersonNo(person_no)
  ViewPage.displaySerderPersonType(person_type)
  ViewPage.clickBack()
})
Then('should be display receiver promptpay on view page  with type {string} and proxy value {string}',(type,value)=>{
  ViewPage.clickViewButtonFirst()
  ViewPage.clickViewDetail(1)
  ViewPage.displayPromptPayType(type)
  ViewPage.displayPromptPayValue(value)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display receiver bank on view page is {string}',bank=>{
  ViewPage.clickViewButtonFirst()
  ViewPage.clickViewDetail(1)
  ViewPage.displayReceiverBank(bank)
  ViewPage.clickClose()
  ViewPage.clickBack()
})
Then('should be display receiver surename is {string} person number is {string} and  person type is {string} on update page',(surename,person_no,person_type)=>{
  UpdatePage.clickEditButtonFirst()
  if(surename == 'more_eq_256'){
    surename = 'CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'
  }
  UpdatePage.displayReceiverPersonNo(person_no)
  UpdatePage.displayReceiverPersonType(person_type)
  UpdatePage.closeUpdatePage()
})
Then('should be display receiver surename is {string} person number is {string} and  person type is {string} on view page',(surename,person_no,person_type)=>{
  ViewPage.clickViewButtonFirst()
  cy.wait(2000)
  ViewPage.clickViewDetail(1)
  if(surename == 'more_eq_256'){
    surename = 'CMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwdCMBTwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'
  }
  ViewPage.displayReceiverSureName(surename)
  ViewPage.displayReceiverPersonNo(person_no)
  ViewPage.displayReceiverPersonType(person_type)
  ViewPage.clickClose()
  ViewPage.clickBack()
})

Then('update sender name back to original sender surename is {string} person number is {string} and  person type is {string}',(surename,person_no,person_type)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.fillInSenderPersonType(person_type)
  UpdatePage.clearDataOnSenderSureName()
  UpdatePage.fillInSenderSureName(surename)
  UpdatePage.clearDataOnSenderPersonNo()
  UpdatePage.fillInSenderPersonNo(person_no)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver feeze date {string} unfeeze date {string} 72H back to original',(freezdate,unfreezdate)=>{
    UpdatePage.clickEditButtonFirst()
    UpdatePage.editUnfreezeDateByBank(unfreezdate)
    UpdatePage.editFreezeDateByBank(freezdate)   
    UpdatePage.clickSave()
    cy.wait(2000)
})
Then('update receiver same bank feeze date {string} unfeeze date {string} 72H back to original',(freezdate,unfreezdate)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editPoliceReportDate(unfreezdate)
  UpdatePage.editUnfreezeDateByBank(unfreezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver fraud feeze date {string} unfeeze date {string} 7 day back to original',(freezdate,unfreezdate)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editFraudUnfreezeDate(unfreezdate)
  UpdatePage.editFraudFreezeDate(freezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver same bank fraud feeze date {string} unfeeze date {string} 7 day back to original',(freezdate,unfreezdate)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editPoliceFreezeDate(unfreezdate)
  UpdatePage.editFraudUnfreezeDate(freezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver police feeze date {string} unfeeze date {string} 7 day back to original',(freezdate,unfreezdate)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editPoliceUnfreezeDate(unfreezdate)
  UpdatePage.editPoliceFreezeDate(freezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver same bank police feeze date {string} unfeeze date {string} 7 day back to original',(freezdate,unfreezdate)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editPoliceUnfreezeDateSameBank(unfreezdate)
  UpdatePage.editPoliceUnfreezeDate(freezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver police freeze back to original',() =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.clearDataOnReceiverFreezeTypeByPolice()
  UpdatePage.clearDataOnReceiverFreezeAmountByPolice()
  UpdatePage.clearDataOnReceiverFreezeNoByPolice()
  UpdatePage.clearDataOnReceiverUnfreezeNoByPolice()
  UpdatePage.clickSave()
  cy.wait(2000)

})
Then('update receiver police report date {string} back to original',freezdate =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editPoliceReportDate(freezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver same bank police report date {string} back to original',freezdate =>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.editFraudFreezeDate(freezdate)
  UpdatePage.clickSave()
  cy.wait(2000)
})
Then('update receiver promptpay back to original with type {string} and proxy value {string}',(type,value)=>{
  UpdatePage.clickEditButtonFirst()
  UpdatePage.selectPromtpayType(type)
  UpdatePage.clearDataOnReceiverPromptpayValue()
  UpdatePage.fillInReceiverPromptpayValue(value)
  UpdatePage.clickSave()
  cy.wait(2000)
  })

Then('should be disable field ข้อมูลการอายัดผู้รับโอน',() =>{
  UpdatePage.freezDate72HrsIsDisableField()
  UpdatePage.freezTime72HrsIsDisableField()
  UpdatePage.unfreezDate72HrsIsDisableField()
  UpdatePage.unfreezTime72HrsIsDisableField()
  UpdatePage.reportPoliceDate7DayIsDisableField()
  UpdatePage.reportPoliceTime7DayIsDisableField()
  UpdatePage.fraudFreezDate7DayIsDisableField()
  UpdatePage.fraudFreezTime7DayIsDisableField()
  UpdatePage.fraudUnfreezDate7DayIsDisableField()
  UpdatePage.fraudUnfreezTime7DayIsDisableField()
  UpdatePage.policeFreezDate7DayIsDisableField()
  UpdatePage.policeFreezTime7DayIsDisableField()
  UpdatePage.policeUnfreezDate7DayIsDisableField()
  UpdatePage.policeUnfreezTime7DayIsDisableField()
  UpdatePage.bankFreezTypeIsDisableField()
  UpdatePage.bankFreezAmountIsDisableField()
  UpdatePage.balanceIsDisableField()
  UpdatePage.policeFreezTypeIsDisableField()
  UpdatePage.policeFreezNoIsDisableField()
  UpdatePage.policeFreezAmountIsDisableField()
  UpdatePage.policeUnfreezNoIsDisableField()
  UpdatePage.FreezCommentIsDisableField()
})
Then('should be disable sender surename field and display sender surename on update page is {string}',surename =>{
  UpdatePage.senderSurenameIsDisableField()
  UpdatePage.senderSurenameDisplay(surename)
})
Then('should be disable sender person number field and display sender person number on update page is {string}',person_no =>{
  UpdatePage.senderPersonNoIsDisableField()
  UpdatePage.displaySenderPersonNo(person_no)
})
Then('should be disable sender person type field and display sender person type on update page is {string}',person_type =>{
  UpdatePage.displaySerderPersonType(person_type)
  UpdatePage.senderSenderPersonTypeIsDisableField()
})
Then('should be disable receiver surename field and display receiver surename on update page is {string}',surename =>{
  UpdatePage.receiverSurenameIsDisableField()
  UpdatePage.receiverSurenameDisplay(surename)
})
Then('should be disable receiver person number field and display receiver person number on update page is {string}',person_no =>{
  UpdatePage.receiverPersonNoIsDisableField()
  UpdatePage.displayReceiverPersonNo(person_no)
})
Then('should be disable receiver person type field and display receiver person type on update page is {string}',person_type =>{
  UpdatePage.displayReceiverPersonType(person_type)
  UpdatePage.receiverPersonTypeIsDisableField()
})

Then('should be able sender surename field and display receiver surename on update page is {string}',surename =>{
    UpdatePage.fillInSenderSureName(surename)
    UpdatePage.clickSave()
    cy.wait(5000)
    UpdatePage.displaySenderSureName(surename)
  })
Then('should be able receiver field and display receiver surename on update page is {string}',surename =>{
    // UpdatePage.fillInReceiverSureName(surename)
    cy.get('#panel2a-content > .MuiAccordionDetails-root > .css-1d3bbye > .MuiGrid-grid-xs-12 > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > #ownerLastName')
    .type(surename)
    UpdatePage.clickSave()
    cy.wait(5000)
    UpdatePage.displayReceiverSureName(surename)
  })
Then('should be able receiver field and display receiver surename on update page is {string} and personal id is {string}',(surename,personalid) =>{
    cy.get('#panel2a-content > .MuiAccordionDetails-root > .css-1d3bbye > .MuiGrid-grid-xs-12 > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > #ownerLastName')
    .type(surename)
    cy.get('#panel2a-content > .MuiAccordionDetails-root > .css-1d3bbye > .MuiGrid-grid-xs-12 > .MuiGrid-container > :nth-child(4) > .MuiFormControl-root > .MuiInputBase-root > #ownerIdCard')    .click()
    .clear()
    .type(personalid)
    UpdatePage.clickSave()
    cy.wait(5000)
    UpdatePage.displayReceiverSureName(surename)
    UpdatePage.displayReceiverPersonNo(personalid)
  })
Then('confirm to save',() =>{
  UpdatePage.clickSaveWithInvalidData()
})
Then('clear sure name and confirm to save',() =>{
  UpdatePage.clearDataOnReceiverSureName()
  UpdatePage.clickSaveWithInvalidData()
})
Then('should be validate display receiver money tranfer {string} and row is {string}',(folder,row)=>{
  UpdatePage.displayLable_Money_Tranfer(folder,row)
})