import dayjs from "dayjs";
import utc from "dayjs/plugin/utc";
import timezone from "dayjs/plugin/timezone";

const casebank_id = '#caseId_Bank'
const view_accountNumber = '#ownerAccountNumber'
const casepolice_id = '#letterId_Police_Warrant'
const personalID = '#idCard'
const OwnerName = '#caseID'
const OwnerLastName = '#lastname'
const SenderAccount = '#sender_account_number'
const ReceiverAccount = '#receiver_account_number'
const LabelBank = '#bank-label'
const LabelBank_2 = ':nth-child(4) > :nth-child(2) > .MuiAutocomplete-root > .MuiFormControl-root > .MuiInputBase-root > #bank'
const NowDate = '#fromDate'
const EndDate = '#endDateTime'
const Searching = '#search'
const Cancel = '#clear'
const InAction_caseID = '#caseid'
const InAction_policeID = '#policecasenumber'
const InAction_caseType = '#detectivetype'
const InAction_caseDate = '#caseDateTime'
const InAction_ownerName = '#ownerfirstname'
const InAction_ownerLastName = '#ownerlastname'
const InAction_ownerPersonalType = '#accountholdertype'
const InAction_ownerPersonalID = '#owneridcard'
const InAction_ownerPhone = '#victimPhoneNumber'
const InAction_ReceiverPhone = '#accountPhone'
const InAction_ownerCaseDetail = '#caseDetail'
const InAction_FullNamecontact = '#contactFullName'
const InAction_Phonecontact = '#contactPhone'
const InAction_relationshipcontact = '#contactRelationShip'
const InAction_Emailcontact = '#contactEmail'
const InAction_bank = '#bank'
const InAction_bankaccount = '#accountnumber'
const InAction_block72h = '#Block72Hours'
const InAction_UnBlock72H = '#UnBlock72Hours'
const InAction_block7d = '#ExtendBlock7Days'
const InAction_Unblock7d = '#UnBlock7Days'
const InAction_PoliceBlock = '#PoliceBlock'
const InAction_PoliceBlockNumber = '#PoliceUnBlockNumber'
const InAction_FreezeType = '#FreezeType'
const InAction_BlockedAmount = 'input#\\:r5e\\:'
const InAction_RemainingAmount = 'input#\\:r5f\\:'
const Rank = '#receiver_rank'
// locator เปลื่ยน บางครั้งที่ retest > r5i r5f r5e

export class CrossBankCasePage {
  static todayThai(){
    const d = new Date()
    const day = `${d.getDate()}`.padStart(2, '0')
    const month = `${d.getMonth() + 1}`.padStart(2, '0')
    const year = d.getFullYear() + 543
    return `${day}/${month}/${year}`
  }
  static todayThaiV1(){
    const d = new Date()
    const day = `${d.getDate()}`.padStart(2, '0')
    const month = `${d.getMonth() + 1}`.padStart(2, '0')
    const year = d.getFullYear() + 543
    return `${year}-${month}-${day}`
  }
  static todayThaiMinusOne() {
    const d = new Date()
    d.setDate(d.getDate() - 1)
    const day = d.getDate()
    const month = d.getMonth() + 1
    const year = d.getFullYear() + 543
    // return `${day}/${month}/${year}`
    return `${day}`
  }
  
  static setDateStart_End() {
    const d = new Date();
    const day = `${d.getDate()}`.padStart(2, '0');
    const month = `${d.getMonth() + 1}`.padStart(2, '0');
    const year = d.getFullYear() + 543;
    const start = `${year}/${month}/${day} 00:00`;
    const end = `${year}/${month}/${day} 23:59`;
  
    return { start, end };
  }
  static convertTimezone(time_con){
    dayjs.extend(utc);
    dayjs.extend(timezone);
    const localTime = dayjs.utc(time_con).tz("Asia/Bangkok");
    const yearthai = localTime.year() + 543;
    const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
    cy.log(datetime_change)
    return datetime_change
  }
  static convertTimezoneV2(time_con){
    dayjs.extend(utc);
    dayjs.extend(timezone);
    const localTime = dayjs.utc(time_con).tz("Asia/Bangkok");
    const yearthai = localTime.year() + 543;
    const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm`);
    cy.log(datetime_change)
    return datetime_change
  }
  
  static LabelSender(){
    cy.get(SenderAccount).should('be.visible').and('have.attr','placeholder','เลขที่บัญชีผู้โอน')
    cy.get(LabelBank).should('be.visible').and('have.text','ธนาคารผู้โอน')
    cy.get(NowDate).should('be.visible').and('have.value',CrossBankCasePage.todayThai())
  }
  static LabelReceiver(){
    cy.get(ReceiverAccount).should('be.visible').and('have.attr','placeholder','เลขที่บัญชีผู้ต้องสงสัย')
    cy.get(LabelBank_2).should('be.visible')
    cy.get(EndDate).should('be.visible').and('have.value',CrossBankCasePage.todayThai())
  }
  static InputCasebankID(masterCaseId){
    if (masterCaseId  === 'click on searching') {
      cy.get(Searching).click()   
    }else if (masterCaseId){
      Cypress.env("InputmasterCaseID",masterCaseId)
      cy.log(`Before count ${masterCaseId.length} characters`)
      cy.get(casebank_id).type(masterCaseId).invoke('val').then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()   
     }else{
      cy.log('CasebankID no data input')
    }
  }
  static Viewing_InputCasebankID(masterCaseId){
    if (masterCaseId  === 'click on searching') {
      cy.get(Searching).click()   
    }else if (masterCaseId){
      Cypress.env("InputmasterCaseID",masterCaseId)
      cy.log(`Before count ${masterCaseId.length} characters`)
      cy.get(casebank_id).type(masterCaseId).invoke('val').then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()   
     }else{
      cy.log('CasebankID no data input')
    }
  }
  static Viewing_InputAccount_number(acc){
    if (acc  === 'click on searching') {
      cy.get(Searching).click()   
    }else if (acc){
      Cypress.env("InputmasterCaseID",acc)
      cy.log(`Before count ${acc.length} characters`)
      cy.get(view_accountNumber).type(acc).invoke('val').then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()   
     }else{
      cy.log('CasebankID no data input')
    }
  }
  static Viewing_InputSenderBankName(bankName){
    if (bankName) {
      Cypress.env("Input_sen_bankName",bankName)
      cy.get('button.MuiButtonBase-root.css-134lf0w').eq(0).click();
      cy.get('#bank-listbox').should('be.visible').within(()=>{
        cy.contains(bankName).click()
      })
      cy.get(Searching).click()
    } else {
      cy.log('NowDate no data input')
    }
  }
  static InputCasePoliceID(po_id){
    if (po_id) {
      Cypress.env("Input_po_id",po_id)
      cy.log(`Before count ${po_id.length} characters`)
      cy.get(casepolice_id).type(po_id).invoke('val').then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()
    }else{
      cy.log('Case ID Police no data input')
    }
  }
  static InputRank(rank){
    if (rank) {
      Cypress.env("Input_rank",rank)
      cy.log(`Before count ${rank.length} characters`)
      cy.get(Rank).type(rank).invoke('val').then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()
    }else{
      cy.log('RankReceiver no data input')
    }
  }
  static InputCasePersonalID(sen_per){
    if (sen_per) {
      Cypress.env("Input_sen_per",sen_per)
      cy.log(`Before count ${sen_per.length} characters`)
      cy.get(personalID).type(sen_per).invoke('val')
      .then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()
    }else{
      cy.log('Personal ID no data input')
    }
  }
  static InputCaseSenderFristName(sen_name){
    if (sen_name) {
      Cypress.env("Input_sen_name",sen_name)
      cy.log(`Before count ${sen_name.length} characters`)
      cy.get(OwnerName).type(sen_name).invoke('val')
      .then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()
    }else{
      cy.log('Frist Name no data input')
    }
  }
  static InputCaseSenderLastName(sen_lastname){
    if (sen_lastname) {
      Cypress.env("Input_sen_lastname",sen_lastname)
      cy.log(`Before count ${sen_lastname.length} characters`)
      cy.get(OwnerLastName).type(sen_lastname).invoke('val')
      .then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()
    }else{
      cy.log('Last Name no data input')
    }
  }
  static InputCaseSenderAccount(sen_acc){
    if (sen_acc) {
      Cypress.env("Input_sen_acc",sen_acc)
      cy.log(`Before count: ${sen_acc.length}`)
      cy.get(SenderAccount).type(sen_acc).invoke('val')
      .then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      });
      cy.get(Searching).click()
    }else{
      cy.log('Sender Account no data input')
    }
  }
  static InputCaseRecieverAccount(recei_acc){
    if (recei_acc) {
      Cypress.env("Input_recei_acc",recei_acc)
      cy.log(`Before count: ${recei_acc.length}`)
      cy.get(ReceiverAccount).type(recei_acc).invoke('val')
      .then((text) => {
        cy.log(`Typed value: ${text}`);
        cy.log(`After count: ${text.length}`);
      })
      cy.get(Searching).click()
    }else{
      cy.log('Reciever Account no data input')
    }
  }
  static InputCaseType(casetype){
    if (casetype) {
      Cypress.env("Input_sen_bankName",casetype)
      cy.get('button.MuiButtonBase-root.css-134lf0w').eq(0).click();
      cy.get('#casetype-listbox').should('be.visible').within(()=>{
        cy.contains(casetype).click()
      })
    } else {
      cy.log('CaseType no data input')
    }
  }
  static InputSenderBankName(sen_bankName){
    if (sen_bankName) {
      Cypress.env("Input_sen_bankName",sen_bankName)
      cy.get('button.MuiButtonBase-root.css-134lf0w').eq(1).click();
      cy.get('#bank-listbox').should('be.visible').within(()=>{
        cy.contains(sen_bankName).click()
      })
    } else {
      cy.log('NowDate no data input')
    }
  }
  static InputRecieverBankName(recei_bankName){
    if (recei_bankName) {
      Cypress.env("Input_recei_bankName",recei_bankName)
      cy.get('button.MuiButtonBase-root.css-134lf0w').eq(2).click();
      cy.get('#bank-listbox').should('be.visible').within(()=>{
        cy.contains(recei_bankName).click()
      })
    } else {
      cy.log('NowDate no data input')
    }
  }
  static InputNowDate(date){
    if (date) {
      cy.get('button.MuiButtonBase-root.css-1cxgm0z').eq(0).click();
      cy.get('div.MuiCalendarOrClockPicker-root.css-j7qwjs').should('be.visible').within(()=>{
        cy.contains(date).click()
      })
    } else {
      cy.log('NowDate no data input')
    }
  }
  static clearNowDate(){
    cy.get(NowDate).clear().type('{selectall}{backspace}');
  }
  static clearEndDate(){
    cy.get(EndDate).clear().type('{selectall}{backspace}');
  }
  static CLickSearch(sear){
    if (sear === 'skip') {
      cy.log('skip scarching')
    }else{
      cy.get(Searching).click()
    }
  }
  static InputEndDate(date){
    if (date) {
      cy.get('button.MuiButtonBase-root.css-1cxgm0z').eq(1).click();
      cy.get('div.MuiPickersFadeTransitionGroup-root.MuiCalendarPicker-viewTransitionContainer.css-1h73gvd').within(()=>{
        cy.contains(date).click()
      })
    } else {
      cy.log('EndDate no data input')
    }
    }
  static CLickForSearch(){
    cy.get(Searching).click()
  }
  static LabelCaseID(){
    cy.get(casebank_id).should('be.visible').and('have.attr','placeholder','หมายเลขเคสอ้างอิงธนาคาร(Bank Case ID)')
    cy.get(casepolice_id).should('be.visible').and('have.attr','placeholder','หมายเลขเคสอ้างอิงตำรวจ(Case ID ตำรวจ)')
    cy.get(personalID).should('be.visible').and('have.attr','placeholder','หมายเลขบัตรประชาชนหรือหนังสือเดินทาง')
    cy.get(OwnerName).should('be.visible').and('have.attr','placeholder','ชื่อเจ้าของบัญชี')
    cy.get(OwnerLastName).should('be.visible').and('have.attr','placeholder','นามสกุลเจ้าของบัญชี')
  }
  static LablCrossBank(){
    cy.contains('Cross-Bank Case Searching',{timeout:20000})
    CrossBankCasePage.LabelCaseID()
    CrossBankCasePage.LabelSender()
    CrossBankCasePage.LabelReceiver()
  }
  static LablCrossBankViewing(){
    cy.contains('Cross-Bank Case Viewing History',{timeout:20000})
    cy.get(casebank_id).should('be.visible').and('have.attr','placeholder','หมายเลขเคสอ้างอิงธนาคาร(Bank Case ID)')
    cy.get(view_accountNumber).should('be.visible').and('have.attr','placeholder','เลขที่บัญชี')
    cy.get('#bank').should('be.visible').and('have.value','ทุกธนาคาร (ALL)')
  }
  static HeaderViewingHistoryUnder(){
    cy.get('table.MuiTable-root.css-14xemkg').within(()=>{
      cy.get('.css-1f2qhs8').eq(0).should('have.text','ลำดับ')
      cy.get('.css-pj3kdi').eq(0).should('have.text','หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID)')
      cy.get('.css-pj3kdi').eq(1).should('have.text','วันและเวลาเข้าชมข้อมูล')
      cy.get('.css-pj3kdi').eq(2).should('have.text','รหัสผู้ใช้ (User ID)')
      cy.get('.css-pj3kdi').eq(3).should('have.text','รหัสธนาคารของผู้ใช้งานที่เข้าชม (Bank Code)')
      cy.get('.css-pj3kdi').eq(4).should('have.text','ชื่อธนาคารของผู้ใช้งานที่เข้าชม')
    })
  }
  static DisplayViewingHistoryUnder(){
    cy.get('table.MuiTable-root.css-14xemkg').within(()=>{
      cy.get('tr.MuiTableRow-root.css-1iqa9fy').then(ele=>{
        const count = ele.length
        for(let i = 0 , number = 1; i < count; i++, number++){
          cy.log('this is round',i)
          cy.get('.css-u5wn8w').eq(i).should('have.text',number)
          cy.get('.css-sko2jg').eq(i).should('not.be.empty')
          cy.get('.css-8vpusv').eq(i).should('not.be.empty')
          cy.get('.css-ah6o47').eq(i).should('not.be.empty')
          cy.get('.css-12ognkk').eq(i).should('not.be.empty')
          cy.get('.css-1b8cvj7').eq(i).should('not.be.empty')
        }
      })
    })
  }
  static Display_Validate_ViewingHistoryUnder(dataarray){
    cy.get('table.MuiTable-root.css-14xemkg').within(()=>{
      cy.get('tr.MuiTableRow-root.css-1iqa9fy').then(row=>{
        const count = row.length
        for(let i = 0 , number = 1; i < count; i++, number++){
          cy.log('this is row',i)
          const rowData = dataarray[i]
          cy.log(JSON.stringify(rowData))
          cy.get('.css-u5wn8w').eq(i).should('have.text',number)
          cy.get('.css-sko2jg').eq(i).should('have.text',rowData[0])
          cy.get('.css-8vpusv').eq(i).should('have.text',rowData[3])
          cy.get('.css-ah6o47').eq(i).should('have.text',rowData[4])
          cy.get('.css-12ognkk').eq(i).should('have.text',rowData[5])
          cy.get('.css-1b8cvj7').eq(i).should('have.text',rowData[2])
        }
      })
    })
  }
static DisplayCrossBankUnder(){
  cy.get('table.MuiTable-root').within(()=>{
        cy.get('.css-sko2jg').then(ele=>{
          const count = ele.length
          cy.log(count)
          for(let i = 0;i < count;i++){
            cy.get('.css-sko2jg').eq(i)
            cy.get('.css-k78ent').eq(i)
            cy.get('.css-13gvmk7').eq(i)
            cy.get('.css-1s3k28m').eq(i)
            cy.get('.css-10xd3ej').eq(i)
            cy.get('.css-2tink5').eq(i)
            cy.get('.css-geoga7').eq(i)
            cy.get('.css-1vrr0qk').eq(i)
            cy.get('.css-1g0ygrp').eq(i)
            cy.get('.css-ajxfj4').eq(i)
            cy.get('.css-fv7180').eq(i)
            cy.get('.css-mqskto').eq(i)
            cy.get('.css-155dfca').eq(i)
          }
        })
    })
}
static DisplayCrossBankUnder_Today(){
  cy.get('tr.MuiTableRow-root.css-geodqq').then( $tr =>{
    for(let i = 0; i < $tr.length; i++){
      cy.get('tr.MuiTableRow-root.css-geodqq').eq(i).within(()=>{
        cy.get('td.css-mqskto').then((td)=>{
          const date_in_col = td.text().substring(0,10)
          cy.log(date_in_col)
          expect(date_in_col).to.include(CrossBankCasePage.todayThaiV1());
        })
      })
    }
  })
}
static DisplayCrossBank_All(){
  cy.get('table.MuiTable-root').within(()=>{
    cy.fixture('bankname.json').then((bankDict) => {
      const masterCaseId  = Cypress.env("InputmasterCaseID")
      const po_id  = Cypress.env("Input_po_id")
      const sen_per  = Cypress.env("Input_sen_per")
      const sen_name  = Cypress.env("Input_sen_name")
      const sen_lastname  = Cypress.env("Input_sen_lastname")
      const sen_acc  = Cypress.env("Input_sen_acc")
      const recei_acc  = Cypress.env("Input_recei_acc")
      const sen_bankName  = Cypress.env("Input_sen_bankName")
      const recei_bankName  = Cypress.env("Input_recei_bankName")
      const SenderbankName = sen_bankName
      const SenderbankCode = bankDict[SenderbankName];
      const RecieverbankName = recei_bankName
      const RecieverbankCode = bankDict[RecieverbankName];
      cy.log(`รหัสของ Sender "${SenderbankName}" คือ ${SenderbankCode}`);
      cy.log(`รหัสของ Reciever "${RecieverbankName}" คือ ${RecieverbankCode}`);
      cy.get('.css-sko2jg').should('have.text',masterCaseId)
      cy.get('.css-k78ent').should('not.be.empty')
      cy.get('.css-13gvmk7').should('not.be.empty')
      cy.get('.css-1s3k28m').should('have.text',SenderbankCode)
      cy.get('.css-10xd3ej').should('have.text',sen_acc)
      cy.get('.css-2tink5').should('have.text',`${sen_name} ${sen_lastname}`)
      cy.get('.css-geoga7').should('have.text',RecieverbankCode)
      cy.get('.css-1vrr0qk').should('have.text',recei_acc)
      cy.get('.css-1g0ygrp').should('not.be.empty')
      cy.get('.css-ajxfj4').should('not.be.empty')
      cy.get('.css-fv7180').should('not.be.empty')
      cy.get('.css-mqskto').should('not.be.empty')
      cy.get('.css-1fgmb02').should('have.text',po_id)
      cy.get('.css-1pzqfkr').should('not.be.empty')
      cy.get('.css-155dfca')
    });
  })
}
static Display_Validate_CrossBankUnder(folder){
  cy.get('table.MuiTable-root').within(()=>{
    cy.fixture(folder).then((data)=>{
      cy.get('.css-sko2jg').should('have.text',data.bankcaseID)
      cy.get('.css-k78ent').should('have.text',data.Row)
      cy.get('.css-13gvmk7').should('have.text',data.SenderName)
      cy.get('.css-1s3k28m').should('have.text',data.SenderBankName)
      cy.get('.css-10xd3ej').should('have.text',data.SenderBankAccount)
      cy.get('.css-2tink5').should('have.text',data.ReceiverName)
      cy.get('.css-geoga7').should('have.text',data.ReceiverBankName)
      cy.get('.css-1vrr0qk').should('have.text',data.ReceiverBankAccount)
      cy.get('.css-1g0ygrp').should('have.text',data.Tran_Strat)
      cy.get('.css-ajxfj4').should('have.text',data.Tran_End)
      cy.get('.css-fv7180').should('have.text',data.Money)
      cy.get('.css-mqskto')
      cy.get('.css-155dfca')
    })
  })
}
static Display_Validate_CrossBankUnder_All(folder){
  cy.get('table.MuiTable-root').within(()=>{
    cy.fixture(folder).then((data)=>{
      cy.get('.css-sko2jg').should('have.text',data.bankcaseID)
      cy.get('.css-k78ent').should('have.text',data.Row)
      cy.get('.css-13gvmk7').should('have.text',data.SenderName)
      cy.get('.css-1s3k28m').should('have.text',data.SenderBankName)
      cy.get('.css-10xd3ej').should('have.text',data.SenderBankAccount)
      cy.get('.css-2tink5').should('have.text',data.ReceiverName)
      cy.get('.css-geoga7').should('have.text',data.ReceiverBankName)
      cy.get('.css-1vrr0qk').should('have.text',data.ReceiverBankAccount)
      cy.get('.css-1g0ygrp').should('have.text',data.Tran_Strat)
      cy.get('.css-ajxfj4').should('have.text',data.Tran_End)
      cy.get('.css-fv7180').should('have.text',data.Money)
      cy.get('.css-mqskto').should('have.text',data.Time_sys)
      cy.get('.css-1fgmb02').should('have.text',data.Po_case_id)
      cy.get('.css-1pzqfkr').should('have.text',data.Po_report_date)
      cy.get('.css-155dfca').should('exist')
    })
  })
}
static Display_CrossBankUnder_All(query_data){
  cy.get('table.MuiTable-root').within(()=>{
    cy.log(JSON.stringify(query_data))
      cy.get('.css-sko2jg').should('have.text',query_data[0])
      cy.get('.css-k78ent').should('have.text',query_data[1])
      cy.get('.css-13gvmk7').should('have.text',`${query_data[2]} ${query_data[3]}`)
      cy.get('.css-es0gcz').should('contain',query_data[4])
      cy.get('.css-1s3k28m').should('have.text',query_data[5])
      cy.get('.css-10xd3ej').should('have.text',query_data[6])
      cy.get('.css-2tink5').should('have.text',`${query_data[7]} ${query_data[8]}`)
      cy.get('.css-geoga7').should('have.text',query_data[9])
      cy.get('.css-1vrr0qk').should('have.text',query_data[10])
      cy.get('.css-1g0ygrp').should('have.text',query_data[11])
      cy.get('.css-ajxfj4').should('have.text',query_data[12])
      cy.get('.css-fv7180').should('have.text',query_data[13])
      cy.get('.css-mqskto').should('have.text',query_data[14])
      cy.get('.css-1fgmb02').should('have.text',query_data[15])
      cy.get('.css-1pzqfkr').should('have.text',query_data[16])
      cy.get('.css-155dfca').should('exist')
  })
}
static LabelCrossBankUnder(){
  cy.get('table.MuiTable-root').within(()=>{
    cy.get('div.css-pj3kdi').eq(0).should('be.visible').and('have.attr','title','หมายเลขเคสอ้างอิงธนาคาร(Bank Case ID)')
    cy.get('div.css-12s6zw6').should('be.visible').and('have.attr','title','แถว')
    cy.get('div.css-1f2qhs8').eq(0).should('be.visible').and('have.attr','title','ชื่อผู้โอน')
    cy.get('div.css-1f2qhs8').eq(1).should('be.visible').and('have.attr','title','ลักษณะเคส')
    cy.get('div.css-1f2qhs8').eq(2).should('be.visible').and('have.attr','title','ธนาคารผู้โอน')
    cy.get('div.css-1f2qhs8').eq(3).should('be.visible').and('have.attr','title','เลขที่บัญชีผู้โอน')
    cy.get('div.css-1f2qhs8').eq(4).should('be.visible').and('have.attr','title','ชื่อผู้ต้องสงสัย')
    cy.get('div.css-1f2qhs8').eq(5).should('be.visible').and('have.attr','title','ธนาคารผู้ต้องสงสัย')
    cy.get('div.css-pj3kdi').eq(1).should('be.visible').and('have.attr','title','เลขที่บัญชีผู้ต้องสงสัย')
    cy.get('div.css-pj3kdi').eq(2).should('be.visible').and('have.attr','title','เวลาของ Transaction เริ่มต้น')
    cy.get('div.css-1f2qhs8').eq(4).scrollIntoView()
    cy.get('div.css-pj3kdi').eq(3).should('be.visible').and('have.attr','title','เวลาของ Transaction สิ้นสุด')
    cy.get('div.css-1f2qhs8').eq(6).should('be.visible').and('have.attr','title','ยอดเงิน')
    cy.get('div.css-1f2qhs8').eq(7).should('be.visible').and('have.attr','title','วันที่เข้าระบบ')
    cy.get('div.css-pj3kdi').eq(4).should('be.visible').and('have.attr','title','หมายเลขเคสตำรวจ (Case ID ตำรวจ)')
    cy.get('div.css-pj3kdi').eq(5).should('be.visible').and('have.attr','title','วันที่แจ้งความจากตำรวจ')
    cy.get('div.css-1iisq5m').scrollIntoView()
    cy.get('div.css-1iisq5m').should('be.visible').and('have.text', 'Actions')
  })
}
static prepareDataJSON_Search_crossbank(desc_asc,header) {
  const promisedata = [];
  const { start, end } = CrossBankCasePage.setDateStart_End()
  const jsonfileData = JSON.stringify({
    masterCaseId: "",
    policeCaseId: "",
    detectiveTypeId: "",
    ownerFirstName: "",
    ownerLastName: "",
    ownerIdCard: "",
    senderAccountNumber: "",
    senderBankCode: "",
    receiverAccountId: "",
    receiverAccountNumber: "",
    receiverBankCode: "",
    caseCreateStartDate: start,
    caseCreateEndDate: end,
    page: {
        offset: 0,
        maxRecordPerPage: 10,
        totalRecords: 0,
        orderBy: header,
        orderType: desc_asc
    }
  });  
  cy.log(jsonfileData);
  
  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/core/api/fraud-cases/search",
    body: jsonfileData,
    headers: {
      "Content-Type": "application/json",
      "X-Roles": "xxx",
      "X-User-Id": "xxx",
      "X-Institution-Id": "002xxx",
    },
  }).then((response) => {
    expect(response.status).to.eq(200);
    cy.log(JSON.stringify(response.body.fraudCasesSearchResult));      

    return Promise.all(promisedata).then(() => {
      Cypress.env("crossbank_array", response.body.fraudCasesSearchResult);
      cy.log("Array Results:", response.body.fraudCasesSearchResult);

      Cypress.env("crossbank", response.body);
      cy.log("Object Results:", response.body);

      return response.body;
    });
  });
}


static Query_Fraudcase(string) {
  return `
  SELECT ${string} 
FROM FRAUDCASE f
WHERE POLICE_CASE_NUMBER IS NOT NULL
ORDER BY CREATE_DATE_TIME DESC FETCH NEXT 1 ROWS ONLY
  `;
}
static QueryInputPolice_Case_ID(string){
  const query = CrossBankCasePage.Query_Fraudcase();
  cy.task('queryOracleDatabase', { query }).then((result) => {
    const CaseID = result[0][1]
    const PO_ID = result[0][3]
    Cypress.env("queryresult", result);
    cy.log(result)
    cy.log(JSON.stringify(result))
    cy.log(CaseID)
    cy.log(PO_ID)
  }
  )}

static query_validate_police_case_id(){
  const checkresult = Cypress.env("queryresult")
  // cy.log(JSON.stringify(checkresult))
  const po_id = checkresult[0][0]
  cy.log(po_id)
  cy.get('table.MuiTable-root').within(()=>{
    cy.get('.css-1fgmb02').then(($elements) => {
      const count = $elements.length;
      cy.log(`มีทั้งหมด ${count} elements`);
      for (let i = 0; i < count; i++) {
          cy.get('.css-1fgmb02').eq(i).should('have.text', po_id)
      }
  })
  })
}
static query_validate_display_cross_bank_alot(){
  const result = Cypress.env("queryresult")
  cy.log(result)
  result.forEach((row, index) => {
    const [MASTER_CASE_ID, SUB_CASE_RANK , SHORT_NAME] = row;
    cy.log(`sdasdasdasdasd ${MASTER_CASE_ID}`);
  });
}

static valid_result_with_input_data(){
  CrossBankCasePage.DisplayCrossBank_All()
}
static ClickClear(){
  cy.get(Cancel).click()
  cy.wait(2000)
}
static DisplayInformation(folder){
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(0).click()
  cy.get('div.rs-table-row').then($el => {
    if ($el.length > 1) {
      for (let index = 1, index_col = 0; index < $el.length; index++) {
        cy.get('div.rs-table-row').eq(index).then(row => {
          // row 1 header not validate
          const text = row.text().replace(/\s+/g, ' ').trim()
          cy.log(`Row ${index + 1}:`, row.text());
          cy.fixture(folder).then((data)=>{
            cy.get('#caseID').should('have.value',data.bankcaseID).and('have.attr','readonly')
            // cy.get('input#caseID.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi').eq(1).should('have.value',data.CaseType).and('have.attr','readonly')
            cy.get(':nth-child(1) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','ผู้เสียหายแจ้งเอง มาตรา 7').and('have.attr','readonly')
            cy.get(':nth-child(1) > .MuiGrid-container > :nth-child(3) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','').and('have.attr','readonly')
            cy.get('.MuiCardContent-root > :nth-child(1) > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root').should('have.value','')
            cy.get('.MuiCardContent-root > :nth-child(2) > :nth-child(1) > .MuiBox-root').should('have.text','ข้อมูลผู้เสียหาย')
            cy.get(':nth-child(2) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','Max').and('have.attr','readonly')
            cy.get(':nth-child(2) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','Test').and('have.attr','readonly')
            cy.get(':nth-child(2) > .MuiGrid-container > :nth-child(3) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','บุคคลธรรมดา').and('have.attr','readonly')
            cy.get(':nth-child(3) > .MuiGrid-container > :nth-child(1) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','4040620627193').and('have.attr','readonly')
            cy.get(':nth-child(3) > .MuiGrid-container > :nth-child(2) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','0800000022').and('have.attr','readonly')
            cy.get(':nth-child(3) > .MuiGrid-container > :nth-child(3) > .MuiFormControl-root > .MuiInputBase-root > #caseID').should('have.value','หลอกลวงซื้อขายสินค้า หรือบริการ').and('have.attr','readonly')
            // cy.get('div.rs-table-row').eq(index).within(()=>{
            //   cy.get('p.MuiTypography-root.MuiTypography-body1').eq(index_col)
            //     .invoke('text')
            //     .then((actualText) => {
            //     const cleanActual = actualText.replace(/\s+/g, ' ').trim();
            //     const expected = data[`Name_All_${index}`].replace(/\s+/g, ' ').trim();
            //     expect(cleanActual).to.eq(expected);
            //     });
            //   cy.get('p.MuiTypography-root.MuiTypography-body1').eq(index_col)
            // })
            expect(text).to.include(data[`Name_${index}`]);
            expect(text).to.include(data[`BankName_${index}`]);
            expect(text).to.include(data[`BankAccount_${index}`]);
            // expect(text).to.include(data[`Tran_amount_${index}`]);
            expect(text).to.include(data[`Money_${index}`]);
          })
        });
      }
    } else {
      cy.log('not found data in row');
    }
  });
}
static DisplayDashboard(folder){
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(1).click()
  cy.get('div.rs-table-row').then($el => {
    if ($el.length > 1) {
      for (let index = 1; index < $el.length; index++) {
        cy.get('div.rs-table-row').eq(index).then(row => {
          // row 1 header not validate
          const text = row.text().replace(/\s+/g, ' ').trim()
          cy.log(`Row ${index + 1}:`, row.text());
          cy.fixture(folder).then((data)=>{
            expect(text).to.include(data[`Name_${index}`]);
            expect(text).to.include(data[`BankName_${index}`]);
            expect(text).to.include(data[`BankAccount_${index}`]);
            expect(text).to.include(data[`Tran_amount_${index}`]);
            expect(text).to.include(data[`Money_${index}`]);
          })
        });
      }
    } else {
      cy.log('not found data in row');
    }
  });
}
static DisplayDashboard_Click_Action(folder){
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(1).click()
  cy.get('div.rs-table-row').then($el => {
    if ($el.length > 1) {
      for (let index = 1; index < $el.length; index++) {
        cy.get('div.rs-table-row').eq(index).within(() => {
        cy.get('button.css-15mydm5').eq(0).click()
      });
      cy.get('div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation24.MuiDialog-paper.MuiDialog-paperScrollPaper.MuiDialog-paperWidthLg.MuiDialog-paperFullWidth.css-1nhstuc').within(()=>{
      cy.get('span.MuiTypography-root.MuiTypography-button.css-kc1170')
      // .should('be.visible')
      .invoke('text')
      .then((text) => {
        if (text.trim() === 'ข้อมูลของผู้ต้องสงสัย') {
          cy.log(text.trim)
          CrossBankCasePage.Display_in_Action_Dashboard_Receiver(folder);
        } else if (text.trim() === 'ข้อมูลผู้เสียหาย') {
          CrossBankCasePage.Display_in_Action_Dashboard_Sender(folder);
        } else {
          cy.log('data not true');
        }
      })
      });
      }
    } else {
      cy.log('not found data in row');
    }
  });
}
static DisplayInformation_Click_Action(folder){
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(0).click()
  cy.get('div.rs-table-row').then($el => {
    if ($el.length > 1) {
      for (let index = 1; index < $el.length; index++) {
        cy.get('div.rs-table-row').eq(index).within(() => {
        cy.get('button.css-15mydm5').eq(0).click()
      });
      cy.get('div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation24.MuiDialog-paper.MuiDialog-paperScrollPaper.MuiDialog-paperWidthLg.MuiDialog-paperFullWidth.css-1nhstuc').within(()=>{
      cy.get('span.MuiTypography-root.MuiTypography-button.css-kc1170')
      // .should('be.visible')
      .invoke('text')
      .then((text) => {
        if (text.trim() === 'ข้อมูลของผู้ต้องสงสัย') {
          cy.log(text.trim)
          CrossBankCasePage.Display_in_Action_Dashboard_Receiver(folder);
        } else if (text.trim() === 'ข้อมูลผู้เสียหาย') {
          CrossBankCasePage.Display_in_Action_Dashboard_Sender(folder);
        } else {
          cy.log('data not true');
        }
      })
      });
      }
    } else {
      cy.log('not found data in row');
    }
  });
}
static LabelInFormation_Under(){
  cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-treetable').within(()=>{
    cy.get('span.MuiTypography-root').eq(0).should('have.text','รายละเอียดบัญชี (CSV)')
    cy.get('span.MuiTypography-root').eq(1).should('have.text','ธนาคารเจ้าของบัญชี')
    cy.get('span.MuiTypography-root').eq(2).should('have.text','จำนวน Transaction')
    cy.get('span.MuiTypography-root').eq(3).should('have.text','จำนวนเงิน')
  })
}
static LabelDashboard_Under(){
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(1).click()
  cy.get('div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-12').eq(0).within(()=>{
    cy.get('span.MuiTypography-root')
    cy.get('span.MuiTypography-root').eq(0).should('have.text','รายละเอียดบัญชี (CSV)')
    cy.get('span.MuiTypography-root').eq(1).should('have.text','ธนาคารเจ้าของบัญชี')
    cy.get('span.MuiTypography-root').eq(2).should('have.text','จำนวน Transaction')
    cy.get('span.MuiTypography-root').eq(3).should('have.text','จำนวนเงิน')
  })
}
static  Display_in_Action_Dashboard_Sender(folder){
cy.fixture(folder).then((data)=>{
  cy.get(InAction_caseID).should('have.value',data.bankcaseID).and('have.attr','readonly')
  cy.get(InAction_policeID).should('have.value',data.PoliceCaseID).and('have.attr','readonly')
  cy.get(InAction_caseType).should('have.value',data.CaseType).and('have.attr','readonly')
  cy.get(InAction_caseDate).should('have.value',data.PoliceCaseDate).and('have.attr','readonly')
  cy.get(InAction_ownerName).should('have.value',data.NameSender).and('have.attr','readonly')
  cy.get(InAction_ownerLastName).should('have.value',data.LastNameSender).and('have.attr','readonly')
  cy.get(InAction_ownerPersonalType).should('have.value',data.PersonalTypeSender).and('have.attr','readonly')
  cy.get(InAction_ownerPersonalID).should('have.value',data.PersonalIDSender).and('have.attr','readonly')
  cy.get(InAction_ownerPhone).should('have.value',data.PhoneSender).and('have.attr','readonly')
  cy.get(InAction_ownerCaseDetail).should('have.value',data.CaseDetailSender).and('have.attr','readonly')
  cy.get(InAction_FullNamecontact).should('have.value',data.FullNameContactSender).and('have.attr','readonly')
  cy.get(InAction_Phonecontact).should('have.value',data.PhoneContactSender).and('have.attr','readonly')
  cy.get(InAction_relationshipcontact).should('have.value',data.ReletionContactSender).and('have.attr','readonly')
  cy.get(InAction_Emailcontact).should('have.value',data.EmailContactSender).and('have.attr','readonly')
  cy.get(InAction_bank).should('have.value',data.bankSender).and('have.attr','readonly')
  cy.get(InAction_bankaccount).should('have.value',data.bankAccountSender).and('have.attr','readonly')
  CrossBankCasePage.detail_display_under_sender(data)
})
// button close
cy.get('.MuiDialogActions-root > .MuiButtonBase-root').click()
}
static Display_in_Action_Dashboard_Receiver(folder){
  cy.fixture(folder).then((data)=>{
    cy.get(InAction_caseID).should('have.value',data.bankcaseID).and('have.attr','readonly')
    cy.get(InAction_policeID).should('have.value',data.PoliceCaseID).and('have.attr','readonly')
    cy.get(InAction_caseType).should('have.value',data.CaseType).and('have.attr','readonly')
    cy.get(InAction_caseDate).should('have.value',data.PoliceCaseDate).and('have.attr','readonly')
    cy.get(InAction_ownerName).should('have.value',data.NameReceiver).and('have.attr','readonly')
    cy.get(InAction_ownerLastName).should('have.value',data.LastNameReceiver).and('have.attr','readonly')
    cy.get(InAction_ownerPersonalType).should('have.value',data.PersonalTypeReceiver).and('have.attr','readonly')
    cy.get(InAction_ownerPersonalID).should('have.value',data.PersonalIDReceiver).and('have.attr','readonly')
    cy.get(InAction_ReceiverPhone).should('have.value',data.PhoneReceiver).and('have.attr','readonly')
    cy.get(InAction_bank).should('have.value',data.bankReceiver).and('have.attr','readonly')
    cy.get(InAction_bankaccount).should('have.value',data.bankAccountReceiver).and('have.attr','readonly')
    cy.get(InAction_block72h).should('have.value',data.block72h).and('have.attr','readonly')
    cy.get(InAction_UnBlock72H).should('have.value',data.UnBlock72H).and('have.attr','readonly')
    cy.get(InAction_block7d).should('have.value',data.block7d).and('have.attr','readonly')
    cy.get(InAction_Unblock7d).should('have.value',data.Unblock7d).and('have.attr','readonly')
    cy.get(InAction_PoliceBlock).should('have.value',data.PoliceBlock).and('have.attr','readonly')
    cy.get(InAction_PoliceBlockNumber).should('have.value',data.PoliceBlockNumber).and('have.attr','readonly')
    cy.get(InAction_FreezeType).should('have.value',data.FreezeType).and('have.attr','readonly')
    // cy.get(InAction_BlockedAmount).should('have.value','').and('have.attr','disabled')
    // cy.get(InAction_RemainingAmount).should('have.value',data.RemainingAmount).and('have.attr','disabled')
    // cy.get(InAction_PoliceBlockType).should('have.value',data.PoliceBlockType).and('have.attr','readonly')
    // cy.get(InAction_PoliceBlockNumberV1).should('have.value',data.PoliceBlockNumberV1).and('have.attr','readonly')
    // cy.get(InAction_PoliceBlockAmount).should('have.value',data.PoliceBlockAmount).and('have.attr','readonly')
    // cy.get(InAction_InputPoliceBlockAmount).should('have.value',data.InputPoliceBlockAmount).and('have.attr','readonly')
    // cy.get(InAction_bankCaseDetail).should('have.value',data.bankCaseDetail).and('have.attr','readonly')
    CrossBankCasePage.detail_display_under_receiver()
  })
  // button close
  cy.get('.MuiDialogActions-root')
cy.get('.MuiDialogActions-root > .MuiButtonBase-root').click()
}

static detail_display_under_sender(data){
  cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-cell-bordered').should('have.attr','aria-colcount','7').within(()=>{
  cy.get('div.rs-table-row.rs-table-row-header').within(()=>{
    // header
    cy.contains('วันเวลาที่ทำรายการ')
    cy.contains('เลขบัญชีผู้รับโอน')
    cy.contains('ธนาคารผู้รับโอน')
    cy.contains('ชื่อ-นามสกุลผู้รับโอน')
    cy.contains('จำนวนเงิน')
    cy.contains('Instruction ID(TXN ID)')
    cy.contains('IP Address')
  })
  // data input valid
  cy.get('div.rs-table-row').then((ele)=>{
  let count = ele.length
  cy.log(count)
  for(let i = 1;i < count; i++){
    cy.get('div.rs-table-row').eq(i).within(()=>{
      cy.get('div.rs-table-cell-content').eq(0).should('have.text',data[`list_date_receiver_${i}`])
      cy.get('div.rs-table-cell-content').eq(1).should('have.text',data[`accountNumber_receiver_${i}`])
      cy.get('div.rs-table-cell-content').eq(2).should('have.text',data[`bankshortName_receiver_${i}`])
      cy.get('div.rs-table-cell-content').eq(3).invoke('text').then((text) => {
        expect(text.trim().replace(/\s+/g, ' ')).to.eq(data[`Name_receiver_${i}`].replace(/\s+/g, ' '));
      });
      cy.get('div.rs-table-cell-content').eq(4).should('have.text',data[`Money_receiver_${i}`])
      cy.get('div.rs-table-cell-content').eq(5).should('have.value',data.Instruction_ID)
      cy.get('div.rs-table-cell-content').eq(6).should('have.text',data[`IP_receiver_${i}`])
    })
  }
  })
  })
}
static detail_display_under_receiver(){
  cy.contains('รายละเอียดการรับโอนเงิน')
  cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-cell-bordered').should('have.attr','aria-colcount','7').within(()=>{
  cy.get('div.rs-table-row.rs-table-row-header').within(()=>{
    // header
    cy.contains('วันเวลาที่ทำรายการ')
    cy.contains('เลขบัญชีผู้รับโอน')
    cy.contains('ธนาคารผู้รับโอน')
    cy.contains('ชื่อ-นามสกุลผู้รับโอน')
    cy.contains('จำนวนเงิน')
    cy.contains('Instruction ID(TXN ID)')
    cy.contains('IP Address')
  })
  cy.contains('No data found')
})
}
static Querychecksoft(desc_asc,header) {
  return `
  SELECT f.MASTER_CASE_ID , b1.SUB_CASE_RANK , b.SHORT_NAME , b2.CREATE_DATETIME,t.TRANSACTION_TIME , SUM(t.AMOUNT) / 100 AS AMOUNT, f.POLICE_CASE_NUMBER , f.CASE_DATE_TIME
    FROM FRAUDCASE f
    JOIN BANKFRAUDCASE b1 ON f.MASTER_CASE_ID = b1.MASTER_CASE_ID
    JOIN BANKACCOUNT ba1 ON b1.ACCOUNT_ID = ba1.ID
    JOIN BANKFRAUDCASE b2 ON b1.SUB_CASE_ID = b2.PARENT_SUB_CASE_ID
    JOIN BANKACCOUNT ba2 ON b2.ACCOUNT_ID = ba2.ID
    JOIN PERSON p ON ba1.PERSON_ID = p.ID
    JOIN BANK b ON ba1.BANK_CODE = b.BANK_CODE
    JOIN TRANSFER t ON ba2.ID = t.RECEIVER_ID 
                   AND t.SUB_CASE_ID = b1.SUB_CASE_ID 
                   AND t.SENDER_ID = ba1.ID
    WHERE TRUNC(f.CREATE_DATE_TIME) = TRUNC(SYSDATE)
    GROUP BY 
      f.MASTER_CASE_ID,
      b1.SUB_CASE_RANK,
      p.PERSONAL_ID,
      f.CASE_DATE_TIME,
      ba1.ACCOUNT_NUMBER,
      p.FIRST_NAME,
      p.LAST_NAME,
      b.SHORT_NAME,
      t.TRANSACTION_TIME,
      b2.CREATE_DATETIME,
      f.POLICE_CASE_NUMBER,
      t.SENDER_ID,
      t.RECEIVER_ID
  ORDER BY ${header} ${desc_asc}
  FETCH FIRST 1 ROW ONLY
  `;
}
static QueryTrasition_strst_end(desc_asc,header,max_min) {
  return `
  SELECT f.MASTER_CASE_ID ,
         b1.SUB_CASE_RANK ,
         b.SHORT_NAME ,
         b2.CREATE_DATETIME,
         MIN(t.TRANSACTION_TIME) ,
         MAX(t.TRANSACTION_TIME) ,
         f.POLICE_CASE_NUMBER ,
         f.CASE_DATE_TIME
  FROM FRAUDCASE f
  JOIN BANKFRAUDCASE b1 ON f.MASTER_CASE_ID = b1.MASTER_CASE_ID
  JOIN BANKACCOUNT ba1 ON b1.ACCOUNT_ID = ba1.ID
  JOIN BANKFRAUDCASE b2 ON b1.SUB_CASE_ID = b2.PARENT_SUB_CASE_ID
  JOIN BANKACCOUNT ba2 ON b2.ACCOUNT_ID = ba2.ID
  JOIN PERSON p ON ba1.PERSON_ID = p.ID
  JOIN BANK b ON ba1.BANK_CODE = b.BANK_CODE
  JOIN TRANSFER t ON ba2.ID = t.RECEIVER_ID AND t.SUB_CASE_ID = b1.SUB_CASE_ID AND t.SENDER_ID = ba1.ID
  WHERE TRUNC(f.CREATE_DATE_TIME) = TRUNC(SYSDATE)
  GROUP BY f.MASTER_CASE_ID ,
         b1.SUB_CASE_RANK ,
         b1.SUB_CASE_ID ,
         b2.SUB_CASE_ID ,
         b.SHORT_NAME ,
         b2.CREATE_DATETIME,
         f.POLICE_CASE_NUMBER ,
         f.CASE_DATE_TIME
  ORDER BY ${max_min}(${header}) ${desc_asc} 
  FETCH FIRST 10 ROW ONLY
    `;
  }
static Querychecksoft_for_amount(desc_asc,header) {
  return `
  SELECT 
    f.MASTER_CASE_ID, 
    b1.SUB_CASE_RANK, 
    b.SHORT_NAME, 
    b2.CREATE_DATETIME, 
    SUM(t.AMOUNT) / 100 AS AMOUNT
FROM FRAUDCASE f
JOIN BANKFRAUDCASE b1 ON f.MASTER_CASE_ID = b1.MASTER_CASE_ID
JOIN BANKACCOUNT ba1 ON b1.ACCOUNT_ID = ba1.ID
JOIN BANKFRAUDCASE b2 ON b1.SUB_CASE_ID = b2.PARENT_SUB_CASE_ID
JOIN BANKACCOUNT ba2 ON b2.ACCOUNT_ID = ba2.ID
JOIN PERSON p ON ba1.PERSON_ID = p.ID
JOIN BANK b ON ba1.BANK_CODE = b.BANK_CODE
JOIN TRANSFER t ON ba2.ID = t.RECEIVER_ID 
               AND t.SUB_CASE_ID = b1.SUB_CASE_ID 
               AND t.SENDER_ID = ba1.ID
WHERE TRUNC(f.CREATE_DATE_TIME) = TRUNC(SYSDATE)
GROUP BY 
    f.MASTER_CASE_ID,
    b1.SUB_CASE_RANK,
    b.SHORT_NAME,
    b2.CREATE_DATETIME,
    p.PERSONAL_ID,
    ba1.ACCOUNT_NUMBER,
    p.FIRST_NAME,
    p.LAST_NAME,
    t.SENDER_ID,
    t.RECEIVER_ID
ORDER BY ${header} ${desc_asc}
FETCH FIRST 1 ROW ONLY
  `;
}
static QueryReceiverCase(desc_asc,header) {
  return `
  select t.RECEIVER_ID , bk2.SHORT_NAME , bk2.BANK_CODE ,bk2.BANK_NAME 
  FROM FRAUDCASE f
  JOIN BANKFRAUDCASE b1 ON f.MASTER_CASE_ID = b1.MASTER_CASE_ID
  JOIN BANKACCOUNT ba1 ON b1.ACCOUNT_ID = ba1.ID
  JOIN BANKFRAUDCASE b2 ON b1.SUB_CASE_ID = b2.PARENT_SUB_CASE_ID
  JOIN BANKACCOUNT ba2 ON b2.ACCOUNT_ID = ba2.ID
  JOIN PERSON p1 ON ba1.PERSON_ID = p1.ID
  JOIN PERSON p2 ON ba2.PERSON_ID = p2.ID
  JOIN BANK bk1 ON ba1.BANK_CODE = bk1.BANK_CODE
  JOIN BANK bk2 ON ba2.BANK_CODE = bk2.BANK_CODE
  JOIN TRANSFER t ON ba2.ID = t.RECEIVER_ID
  WHERE TRUNC(f.CREATE_DATE_TIME) = TRUNC(SYSDATE)
  GROUP BY 
      b1.SUB_CASE_RANK,
      bk2.SHORT_NAME,
      t.RECEIVER_ID,
      bk2.SHORT_NAME,
      bk2.BANK_CODE ,
      bk2.BANK_NAME
  ORDER BY bk2.BANK_CODE ${desc_asc} 
  FETCH FIRST 10 ROW ONLY
  `;
}
static QueryAllField() {
  return `
    select b1.MASTER_CASE_ID , f.POLICE_CASE_NUMBER , p1.PERSONAL_ID , p1.FIRST_NAME , p1.LAST_NAME , ba1.ACCOUNT_NUMBER , bk1.BANK_NAME ,BA2.ACCOUNT_NUMBER , BK2.BANK_NAME , c.type_name ,b1.SUB_CASE_RANK, SUM(AMOUNT) / 100 AS AMOUNT , b1.UPDATE_DATETIME,MIN(t.TRANSACTION_TIME),MAX(t.TRANSACTION_TIME),f.CASE_DATE_TIME,p2.FIRST_NAME , p2.LAST_NAME  
  FROM FRAUDCASE f
  JOIN BANKFRAUDCASE b1 ON f.MASTER_CASE_ID = b1.MASTER_CASE_ID
  JOIN BANKACCOUNT ba1 ON b1.ACCOUNT_ID = ba1.ID
  JOIN BANKFRAUDCASE b2 ON b1.SUB_CASE_ID = b2.PARENT_SUB_CASE_ID
  JOIN BANKACCOUNT ba2 ON b2.ACCOUNT_ID = ba2.ID
  JOIN PERSON p1 ON ba1.PERSON_ID = p1.ID
  JOIN PERSON p2 ON ba2.PERSON_ID = p2.ID
  JOIN BANK bk1 ON ba1.BANK_CODE = bk1.BANK_CODE
  JOIN BANK bk2 ON ba2.BANK_CODE = bk2.BANK_CODE
  JOIN TRANSFER t ON ba2.ID = t.RECEIVER_ID AND t.SUB_CASE_ID = b1.SUB_CASE_ID AND t.SENDER_ID = ba1.ID
  JOIN CASETYPE c ON f.CASE_TYPE_ID = c.ID 
  WHERE f.POLICE_CASE_NUMBER IS NOT NULL AND bk1.BANK_NAME != 'ธนาคารพัฒนาวิสาหกิจขนาดกลางและขนาดย่อมแห่งประเทศไทย'
  GROUP BY b1.MASTER_CASE_ID ,b1.SUB_CASE_RANK, f.POLICE_CASE_NUMBER , p1.PERSONAL_ID , p1.FIRST_NAME , p1.LAST_NAME , ba1.ACCOUNT_NUMBER , bk1.BANK_NAME ,BA2.ACCOUNT_NUMBER , BK2.BANK_NAME , c.TYPE_NAME , AMOUNT , b1.UPDATE_DATETIME,f.CASE_DATE_TIME,p2.FIRST_NAME , p2.LAST_NAME 
  ORDER BY MAX(t.TRANSACTION_TIME) DESC
  fetch first 1 rows ONLY
  `;
}
static QueryAllField_Viewing_Sender() {
  return `
    SELECT CBVDA.BANK_CASE_ID , CBVDA.SENDER_ACCOUNT_NUMBER ,b1.BANK_NAME , CBVDA.AUDIT_DATE_TIME , CBVDA.USER_ID , CBVDA.USER_BANK_CODE 
  FROM CROSS_BANK_VIEW_DETAIL_AUDIT cbvda
  JOIN bank b1 ON cbvda.SENDER_ACCOUNT_BANK_CODE = b1.BANK_CODE
  JOIN BANK b2 ON cbvda.RECEIVER_ACCOUNT_BANK_CODE = b2.BANK_CODE
  WHERE CBVDA.BANK_CASE_ID = '25660505CMBT00001'
  ORDER BY CBVDA.AUDIT_DATE_TIME DESC 
  fetch first 10 rows ONLY
  `;
}
static QueryValidate(desc_asc,header){
  // f.MASTER_CASE_ID , b1.SUB_CASE_RANK , b.SHORT_NAME , b2.CREATE_DATETIME , SUM(t.AMOUNT) AS AMOUNT
  const query = CrossBankCasePage.Querychecksoft(desc_asc,header)
  cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env("queryresult", result);
    cy.log(result.length)
    if(header === 'f.MASTER_CASE_ID' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(0).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(0).click()
      cy.wait(3000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-sko2jg',{timeout:5000}).eq(index).should('have.text',MASTER_CASE_ID)
        })
      });
    }else if(header === 'f.MASTER_CASE_ID' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(0).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(0).click()
      cy.wait(3000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-sko2jg',{timeout:5000}).eq(index).should('have.text',MASTER_CASE_ID)
        })
      });
    }else if(header === 'b1.SUB_CASE_RANK' && desc_asc === 'ASC'){
      cy.get('th.MuiTableCell-root.MuiTableCell-head.MuiTableCell-alignLeft.MuiTableCell-sizeMedium.css-14uq0aa').eq(0).click()
      cy.get('th.MuiTableCell-root.MuiTableCell-head.MuiTableCell-alignLeft.MuiTableCell-sizeMedium.css-14uq0aa').eq(0).click()
      cy.wait(3000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-k78ent',{timeout:5000}).eq(index).should('have.text',SUB_CASE_RANK)
        })
      });
    }else if(header === 'b1.SUB_CASE_RANK' && desc_asc === 'DESC'){
      cy.get('th.MuiTableCell-root.MuiTableCell-head.MuiTableCell-alignLeft.MuiTableCell-sizeMedium.css-14uq0aa').eq(0).click()
      // cy.get('th.MuiTableCell-root.MuiTableCell-head.MuiTableCell-alignLeft.MuiTableCell-sizeMedium.css-14uq0aa').eq(0).click()
      cy.wait(3000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-k78ent',{timeout:5000}).eq(index).should('have.text',SUB_CASE_RANK)
        })
      });
    }else if(header === 'b.SHORT_NAME' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(2).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(2).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-1s3k28m',{timeout:5000}).eq(index).should('have.text',SHORT_NAME)
        })
      });
    }else if(header === 'b.SHORT_NAME' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(2).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(2).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-1s3k28m',{timeout:5000}).eq(index).should('have.text',SHORT_NAME)
        })
      });
    }else if(header === 'b2.CREATE_DATETIME' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(7).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(7).click()
      cy.wait(3000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          // const utcTime = new Date(CREATE_DATETIME);
          dayjs.extend(utc);
          dayjs.extend(timezone);
          const localTime = dayjs.utc(CREATE_DATETIME).tz("Asia/Bangkok");
          const yearthai = localTime.year() + 543;
          const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
          cy.get('.css-mqskto',{timeout:5000}).eq(index).should('have.text',datetime_change)
        })
      });
    }else if(header === 'b2.CREATE_DATETIME' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(7).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(7).click()
      cy.wait(3000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          // const utcTime = new Date(CREATE_DATETIME);
          dayjs.extend(utc);
          dayjs.extend(timezone);
          const localTime = dayjs.utc(CREATE_DATETIME).tz("Asia/Bangkok");
          const yearthai = localTime.year() + 543;
          const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
          cy.get('.css-mqskto',{timeout:5000}).eq(index).should('have.text',datetime_change)
        })
      });
    }else if(header === 'AMOUNT' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-fv7180',{timeout:5000}).eq(index).invoke('text')
          .then((text) => {
            const cleanText = parseFloat(text.replace(/,/g, ''));
            expect(cleanText).to.eq(Number(AMOUNT));
          });
        })
      });    
    }else if(header === 'AMOUNT' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          cy.get('.css-fv7180',{timeout:5000}).eq(index).invoke('text')
          .then((text) => {
            const cleanText = parseFloat(text.replace(/,/g, ''));
            expect(cleanText).to.eq(Number(AMOUNT));
          });
        })
      });    
    }else if(header === 'f.CASE_DATE_TIME' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(5).click()
      // cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(5).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          if (CASE_DATE_TIME === null) {
            cy.get('.css-1pzqfkr', { timeout: 5000 })
              .eq(index)
              .should('have.text', '');
          } else {
          dayjs.extend(utc);
          dayjs.extend(timezone);
          const localTime = dayjs.utc(CASE_DATE_TIME).tz("Asia/Bangkok");
          const yearthai = localTime.year() + 543;
          const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm`);
          cy.log(datetime_change)
          cy.get('.css-1pzqfkr',{timeout:5000}).eq(index).should('have.text',datetime_change)
          }
        })
      });    
    }else if(header === 'f.CASE_DATE_TIME' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(5).click()
      // cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(5).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          if (CASE_DATE_TIME === null) {
            cy.get('.css-1pzqfkr', { timeout: 5000 })
              .eq(index)
              .should('have.text', '');
          } else {
          dayjs.extend(utc);
          dayjs.extend(timezone);
          const localTime = dayjs.utc(CASE_DATE_TIME).tz("Asia/Bangkok");
          const yearthai = localTime.year() + 543;
          const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm`);
          cy.log(datetime_change)
          cy.get('.css-1pzqfkr',{timeout:5000}).eq(index).should('have.text',datetime_change)
          }
        })
      });    
    }else if(header === 'f.POLICE_CASE_NUMBER' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(4).click()
      // cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(4).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          if (POLICE_CASE_NUMBER === null) {
            cy.get('.css-1fgmb02', { timeout: 5000 })
              .eq(index)
              .should('have.text', '');
          } else {
          cy.get('.css-1fgmb02',{timeout:5000}).eq(index).should('have.text',POLICE_CASE_NUMBER)
          }
        })
      });    
    }else if(header === 'f.POLICE_CASE_NUMBER' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(4).click()
      // cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(4).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          if (POLICE_CASE_NUMBER === null) {
            cy.get('.css-1fgmb02', { timeout: 5000 })
              .eq(index)
              .should('have.text', '');
          } else {
          cy.get('.css-1fgmb02',{timeout:5000}).eq(index).should('have.text',POLICE_CASE_NUMBER)
          }
        })
      });    
    }else if(header === 't.TRANSACTION_TIME' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          dayjs.extend(utc);
          dayjs.extend(timezone);
          const localTime = dayjs.utc(TRANSACTION_TIME).tz("Asia/Bangkok");
          const yearthai = localTime.year() + 543;
          const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
          cy.log(datetime_change)
          cy.get('.css-1g0ygrp',{timeout:5000}).eq(index).should('have.text',datetime_change)
        })
      });    
    }else if(header === 't.TRANSACTION_TIME' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
      cy.wait(4000)
      result.forEach((row, index) => {
        const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,AMOUNT,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
        cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},AMOUNT = ${AMOUNT},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
        cy.get('table.MuiTable-root').within(()=>{
          dayjs.extend(utc);
          dayjs.extend(timezone);
          const localTime = dayjs.utc(TRANSACTION_TIME).tz("Asia/Bangkok");
          const yearthai = localTime.year() + 543;
          const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
          cy.log(datetime_change)
          cy.get('.css-1g0ygrp',{timeout:5000}).eq(index).should('have.text',datetime_change)
        })
      });    
    }else{
      cy.log('not match no value')
    }
  })
}
static APIvalidateCondition(header,valuevalid,desc_asc,index){
  if(header === 'receiverBankName' && desc_asc === 'DESC'){
    cy.log('DESC',valuevalid)
    cy.get('table.MuiTable-root').within(()=>{
    cy.get('.css-geoga7').eq(index).should('have.text', valuevalid)
    })
  }else if(header === 'receiverBankName' && desc_asc === 'ASC'){
    cy.log('ASC',valuevalid)
    cy.get('table.MuiTable-root').within(()=>{
        cy.get('.css-geoga7').eq(index).should('have.text', valuevalid)
    })
  }else{
    cy.log('value not match')
  }

}

static APIvalidateData(desc_asc,header){
  CrossBankCasePage.prepareDataJSON_Search_crossbank(desc_asc,header).then(()=>{
    const crossbankISarray = Cypress.env("crossbank_array")
    cy.log(crossbankISarray)
    crossbankISarray.forEach((item,index) => {
      cy.log(`Record #${index + 1}`,JSON.stringify(item))
      // cy.log(`masterCaseId #${index + 1}`, item.masterCaseId)
      const valuevalid = item[header]
      cy.log(`value for validate condition follow at filed is : ${header} #${index + 1}`, valuevalid)
      CrossBankCasePage.APIvalidateCondition(header,valuevalid,desc_asc,index)
    });
  })
}
static QueryValidate_transition_start_end(desc_asc,header,max_min){
  const query = CrossBankCasePage.QueryTrasition_strst_end(desc_asc,header,max_min)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  Cypress.env("queryresult", result);
  if(header === 't.TRANSACTION_TIME' && desc_asc === 'DESC' && max_min === 'MIN'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,TRANSACTION_TIME_END,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
      cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},TRANSACTION_TIME_END = ${TRANSACTION_TIME_END},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
      cy.get('table.MuiTable-root').within(()=>{
        dayjs.extend(utc);
        dayjs.extend(timezone);
        const localTime = dayjs.utc(TRANSACTION_TIME).tz("Asia/Bangkok");
        const yearthai = localTime.year() + 543;
        const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
        cy.log(datetime_change)
        cy.get('.css-1g0ygrp',{timeout:5000}).eq(index).should('have.text',datetime_change)
      })
    });    
  }else if(header === 't.TRANSACTION_TIME' && desc_asc === 'ASC' && max_min === 'MIN'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(2).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,TRANSACTION_TIME_END,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
      cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},TRANSACTION_TIME_END = ${TRANSACTION_TIME_END},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
      cy.get('table.MuiTable-root').within(()=>{
        dayjs.extend(utc);
        dayjs.extend(timezone);
        const localTime = dayjs.utc(TRANSACTION_TIME).tz("Asia/Bangkok");
        const yearthai = localTime.year() + 543;
        const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
        cy.log(datetime_change)
        cy.get('.css-1g0ygrp',{timeout:5000}).eq(index).should('have.text',datetime_change)
      })
    });    
  }else if(header === 't.TRANSACTION_TIME' && desc_asc === 'ASC' && max_min === 'MAX'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(3).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(3).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,TRANSACTION_TIME_END,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
      cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},TRANSACTION_TIME_END = ${TRANSACTION_TIME_END},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
      cy.get('table.MuiTable-root').within(()=>{
        dayjs.extend(utc);
        dayjs.extend(timezone);
        const localTime = dayjs.utc(TRANSACTION_TIME_END).tz("Asia/Bangkok");
        const yearthai = localTime.year() + 543;
        const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
        cy.log(datetime_change)
        cy.get('.css-ajxfj4',{timeout:5000}).eq(index).should('have.text',datetime_change)
      })
    });    
  }else if(header === 't.TRANSACTION_TIME' && desc_asc === 'DESC' && max_min === 'MAX'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(3).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(3).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,TRANSACTION_TIME,TRANSACTION_TIME_END,POLICE_CASE_NUMBER,CASE_DATE_TIME] = row;
      cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},TRANSACTION_TIME = ${TRANSACTION_TIME},TRANSACTION_TIME_END = ${TRANSACTION_TIME_END},POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},CASE_DATE_TIME = ${CASE_DATE_TIME}`);
      cy.get('table.MuiTable-root').within(()=>{
        dayjs.extend(utc);
        dayjs.extend(timezone);
        const localTime = dayjs.utc(TRANSACTION_TIME_END).tz("Asia/Bangkok");
        const yearthai = localTime.year() + 543;
        const datetime_change = localTime.format(`${yearthai}-MM-DD HH:mm:ss`);
        cy.log(datetime_change)
        cy.get('.css-ajxfj4',{timeout:5000}).eq(index).should('have.text',datetime_change)
      })
    });    
  }else{
    cy.log('no match data')
  }
})
}
static QueryValidate_amount(desc_asc,header){
  const query = CrossBankCasePage.Querychecksoft_for_amount(desc_asc,header)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  Cypress.env("queryresult", result);
  if(header === 'AMOUNT' && desc_asc === 'DESC'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(6).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(6).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,AMOUNT] = row;
      cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},AMOUNT = ${AMOUNT}`);
      cy.get('table.MuiTable-root').within(()=>{
        cy.get('.css-fv7180',{timeout:5000}).eq(index).invoke('text')
        .then((text) => {
          const cleanText = parseFloat(text.replace(/,/g, ''));
          expect(cleanText).to.eq(Number(AMOUNT));
        });
      })
    });     
  }else if(header === 'AMOUNT' && desc_asc === 'ASC'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(6).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(6).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [MASTER_CASE_ID, SUB_CASE_RANK,SHORT_NAME,CREATE_DATETIME,AMOUNT] = row;
      cy.log(`Row ${index}: MASTER_CASE_ID = ${MASTER_CASE_ID}, SUB_CASE_RANK = ${SUB_CASE_RANK}, SHORT_NAME = ${SHORT_NAME} , CREATE_DATETIME = ${CREATE_DATETIME},AMOUNT = ${AMOUNT}`);
      cy.get('table.MuiTable-root').within(()=>{
        cy.get('.css-fv7180',{timeout:5000}).eq(index).invoke('text')
        .then((text) => {
          const cleanText = parseFloat(text.replace(/,/g, ''));
          expect(cleanText).to.eq(Number(AMOUNT));
        });
      })
    });      
  }else{
    cy.log('no match data')
  }
})
}
static QueryValidate_receiver(desc_asc,header){
  const query = CrossBankCasePage.QueryReceiverCase(desc_asc,header)
  cy.task('queryOracleDatabase', { query }).then((result) => {
  Cypress.env("queryresult", result);
  if(header === 'Receiver_BankShortName' && desc_asc === 'DESC'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [RECEIVER_ID, SHORT_NAME,BANK_CODE,BANK_NAME] = row;
      cy.log(`Row ${index}: RECEIVER_ID = ${RECEIVER_ID}, SHORT_NAME = ${SHORT_NAME}, BANK_CODE = ${BANK_CODE} , BANK_NAME = ${BANK_NAME}`);
      cy.get('table.MuiTable-root').within(()=>{
        cy.get('.css-geoga7',{timeout:5000}).eq(index).should('have.text',SHORT_NAME)
    });     
    });     
  }else if(header === 'Receiver_BankShortName' && desc_asc === 'ASC'){
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(5).click()
    cy.wait(4000)
    result.forEach((row, index) => {
      const [RECEIVER_ID, SHORT_NAME,BANK_CODE,BANK_NAME] = row;
      cy.log(`Row ${index}: RECEIVER_ID = ${RECEIVER_ID}, SHORT_NAME = ${SHORT_NAME}, BANK_CODE = ${BANK_CODE} , BANK_NAME = ${BANK_NAME}`);
      cy.get('table.MuiTable-root').within(()=>{
        cy.get('.css-geoga7',{timeout:5000}).eq(index).should('have.text',SHORT_NAME)
    });      
    });      
  }else{
    cy.log('no match data')
  }
})
}
static SetprocessDecrypted(per_sen, name_sen, last_sen ,acc_sen, acc_recei,name_recei,last_recei) {
  const decryptedRow = {};
  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
    body: per_sen,
    headers: { "Content-Type": "text/plain" },
  }).then((personalIdResponse) => {
    decryptedRow.personalId = personalIdResponse.body;

    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: name_sen,
      headers: { "Content-Type": "text/plain" },
    });
  }).then((firstNameResponse) => {
    decryptedRow.firstName = firstNameResponse.body;

    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: last_sen,
      headers: { "Content-Type": "text/plain" },
    });
  }).then((lastNameResponse) => {
    decryptedRow.lastName = lastNameResponse.body;

    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: acc_sen,
      headers: { "Content-Type": "text/plain" },
    });
  }).then((AccountSenderResponse) => {
    decryptedRow.accSen = AccountSenderResponse.body;

    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: acc_recei,
      headers: { "Content-Type": "text/plain" },
    });
  }).then((AccountReceiResponse) => {
    decryptedRow.accRecei = AccountReceiResponse.body;

    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: name_recei,
      headers: { "Content-Type": "text/plain" },
    });
  }).then((NameReceiResponse) => {
    decryptedRow.NameRecei = NameReceiResponse.body;

    return cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: last_recei,
      headers: { "Content-Type": "text/plain" },
    });
  }).then((LastReceiResponse) => {
    decryptedRow.LastRecei = LastReceiResponse.body;
    
    return decryptedRow;
  });
}

static SetprocessDecryptedViewing(acc_sen) {
  const decryptedRow = {};
  return cy.request({
    method: "POST",
    url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
    body: acc_sen,
    headers: { "Content-Type": "text/plain" },
  }).then((res) => {
    decryptedRow.acc_sen = res.body;
    return decryptedRow;
  });
}






}