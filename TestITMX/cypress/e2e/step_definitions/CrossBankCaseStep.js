import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import { CrossBankCasePage } from './CrossBankCasePage';

Then('should be display cross bank case searching preview page', () =>{
    CrossBankCasePage.LablCrossBank()
    CrossBankCasePage.LabelCrossBankUnder()
  })
Then('should be display cross bank viewing history case searching preview page', () =>{
  cy.wait(2000)
    CrossBankCasePage.LablCrossBankViewing()
  })
Then('should be display viewing cross bank case searching preview page', () =>{
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(0).should('have.text','Information')
  cy.get('button.MuiButtonBase-root.css-eamv01').eq(1).should('have.text','Dashboard')
  CrossBankCasePage.LabelInFormation_Under()
  CrossBankCasePage.LabelDashboard_Under()
  })
Then('click viewing action',()=>{
  cy.get('table.MuiTable-root').within(()=>{
      cy.get('.css-155dfca').should('exist').click()
  })
})
Then('cancel viewing action',()=>{
  cy.get('div.MuiGrid-root.MuiGrid-container.css-18ri96e').within(()=>{
    cy.get('#clear',{timeout:30000}).should('exist').click()
  })
})
Then('validate result cross bank csae searching with api', () => {
    const mastercaseId = '25660505CMBT00001'
    cy.log(mastercaseId)
    CrossBankCasePage.prepareDataJSON_Search_crossbank(mastercaseId).then(() => { 
      const jsoncross = Cypress.env("crossbank");
      cy.log('crossbank:', jsoncross)
      cy.log(jsoncross)
      const data = JSON.parse(jsoncross);
    });
});

Then('Searching is {string}', (string) => {
  CrossBankCasePage.InputCasebankID(string)    
});
Then('Click Viewing {string}', (string) => {
  cy.get('.css-155dfca').click() 
  cy.wait(2000)
});
Then('Searching with query is {string}', (string) => {
  const query = CrossBankCasePage.Query_Fraudcase(string);
  cy.task('queryOracleDatabase', { query }).then((result) => {
    const CaseID = result[0][1]
    const po_id = result[0][0]
    Cypress.env("queryresult", result);
    cy.get('#fromDate').clear().type('{selectall}{backspace}');
    CrossBankCasePage.InputCasePoliceID(po_id)  
  })  
});
Then('Searching with fix day startday today need yerterday', () => {
  const enddate = CrossBankCasePage.todayThaiMinusOne()
  cy.log(enddate)
  CrossBankCasePage.InputEndDate(enddate)       
});
Then('Searching is {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string}', (casebank_id,po_id,sen_per,sen_name,sen_lastname,sen_acc,sen_bankName,recei_acc,recei_bankName,nowdate,enddate,sear,TYPE_NAME,rank) => {
 /**
 * Inputs the provided casebank ID into the search field on the CrossBankCasePage.
 * casebank_id,po_id,sen_per,sen_name,sen_lastname,sen_acc,sen_bankName,recei_acc,recei_bankName,nowdate,enddate,sear,TYPE_NAME
 * หมายเลขเคสอ้างอิงธนาคาร(Bank Case ID) , หมายเลขเคสอ้างอิงตำรวจ(Case ID ตำรวจ) , หมายเลขบัตรประชาชนหรือหนังสือเดินทาง , ชื่อเจ้าของบัญชี , นามสกุลเจ้าของบัญชี , เลขที่บัญชีผู้โอน , ธนาคารผู้โอน , เลขที่บัญชีผู้ต้องสงสัย , ธนาคารผู้ต้องสงสัย , ตั้งแต่วันเริ่มต้น , ถึงวันที่ , skip ===  empty
 * condition nowdate ถ้ารับค่าเป็น ภาษา จะ clear เป็นตัวเลข fix follow number 1-30
 * @param {string} string - The casebank ID to input.
 */  
  CrossBankCasePage.InputCasebankID(casebank_id)    
  CrossBankCasePage.InputCasePoliceID(po_id)    
  CrossBankCasePage.InputCasePersonalID(sen_per)    
  CrossBankCasePage.InputCaseSenderFristName(sen_name)    
  CrossBankCasePage.InputCaseSenderLastName(sen_lastname)    
  CrossBankCasePage.InputCaseSenderAccount(sen_acc)    
  CrossBankCasePage.InputSenderBankName(sen_bankName)    
  CrossBankCasePage.InputCaseRecieverAccount(recei_acc)    
  CrossBankCasePage.InputRecieverBankName(recei_bankName)    
  if (isNaN(nowdate)) {
    CrossBankCasePage.clearNowDate()       
  }else{
    CrossBankCasePage.InputNowDate(nowdate)       
  }
  if (isNaN(enddate)) {
    CrossBankCasePage.clearEndDate()       
  }else{
    CrossBankCasePage.InputEndDate(enddate)       
  }     
  CrossBankCasePage.InputCaseType(TYPE_NAME)
  CrossBankCasePage.InputRank(rank)
  CrossBankCasePage.CLickSearch(sear)
});

Then('validate result cross bank csae searching with case {string}', (folder) => {
    CrossBankCasePage.Display_Validate_CrossBankUnder(folder)    
});
Then('validate result cross bank csae searching with case All {string}', (folder) => {
    CrossBankCasePage.Display_Validate_CrossBankUnder_All(folder)    
});
Then('validate result cross bank csae searching is {string}', (string) => {
  if (string === 'empty') {
    cy.contains('No records to display');
  } else if (string === 'no records to display') {
    cy.contains('No records to display');
  } else if (string === 'error message searching') {
    cy.contains('กรุณาระบุข้อมูลที่ต้องการค้นหา อย่างน้อย 1 รายการ',{timeout:50000});
  } else if (string === 'Start date cannot be after end date') {
    cy.contains('Start date cannot be after end date');
  } else if (string === 'have value in table') {
    CrossBankCasePage.DisplayCrossBankUnder();
  } else if (string === 'have data for today searching and click soft') {
    cy.get('tr.MuiTableRow-root.css-geodqq',{timeout:150000}).then( $tr =>{
      cy.get('.css-1b9bzuj > .Mui-TableHeadCell-Content > .Mui-TableHeadCell-Content-Labels > .Mui-TableHeadCell-Content-Wrapper').click()
      cy.wait(10000)
      cy.get('.css-1b9bzuj > .Mui-TableHeadCell-Content > .Mui-TableHeadCell-Content-Labels > .Mui-TableHeadCell-Content-Wrapper').click()
      for(let i = 0; i < $tr.length; i++){
        cy.get('tr.MuiTableRow-root.css-geodqq').eq(i).within(()=>{
          cy.get('td.css-mqskto').then((td)=>{
            const date_in_col = td.text().substring(0,10)
            cy.log(date_in_col)
            cy.contains(CrossBankCasePage.todayThaiV1(),{timeout:150000})
            // expect(date_in_col).to.include(CrossBankCasePage.todayThaiV1());
          })
        })
      }
    })
  } else if (string === 'have data for today searching') {
    CrossBankCasePage.DisplayCrossBankUnder_Today();
  } else if (string === 'valid police case id') {
    CrossBankCasePage.query_validate_police_case_id();
  } else if (string === 'valid result with input data') {
    CrossBankCasePage.valid_result_with_input_data()
  } else if (string === 'click clear and should be searching clear all') {
    CrossBankCasePage.ClickClear()
    CrossBankCasePage.LabelCaseID()
    cy.contains('No records to display');
  } else if (string === 'click soft bankcaseID') {
    cy.log('jjdjdj')
  } else {
    cy.log('not match keyword');
  }
});
Then('should be match with query data in table',()=>{
  const query_data = Cypress.env('row_decrypted')
  CrossBankCasePage.Display_CrossBankUnder_All(query_data)
})
Then('validate result cross bank case viewing is {string} and case is {string}', (string,folder) => {
  if (string === 'valid_data_information') {
    CrossBankCasePage.DisplayInformation(folder)
  } else if (string === 'valid_data_click_action_information') {
    CrossBankCasePage.DisplayInformation_Click_Action(folder)
  } else if (string === 'valid_data_dashboard') {
    CrossBankCasePage.DisplayDashboard(folder)
  } else if (string === 'valid_data_click_action_dashboard') {
    CrossBankCasePage.DisplayDashboard_Click_Action(folder)
  } else if (string === 'valid_data_viewing') {
    CrossBankCasePage.DisplayInformation(folder)
    CrossBankCasePage.DisplayDashboard(folder)
  } else if (string === 'valid_data_click_action_viewing') {
    CrossBankCasePage.DisplayDashboard_Click_Action(folder)
    CrossBankCasePage.DisplayInformation_Click_Action(folder)
  } else {
    cy.log('not match keyword');
  }
});
Given('Query Check result after click soft more or less {string} and header to validate is {string}',(desc_asc,header)=>{
    // ASC , DESC
    CrossBankCasePage.QueryValidate(desc_asc,header)
  })
Given('Query Check result after click soft more or less {string} and header to validate is {string} for receiver',(desc_asc,header)=>{
    // ASC , DESC
    CrossBankCasePage.QueryValidate_receiver(desc_asc,header)
  })
Given('Query Check result after click soft more or less {string} and header to validate is {string} for transition_start_end transition_start_end max or min in row is {string}',(desc_asc,header,max_min)=>{
    // ASC , DESC
    CrossBankCasePage.QueryValidate_transition_start_end(desc_asc,header,max_min)
  })
Given('Query Check result after click soft more or less {string} and header to validate is {string} for amount',(desc_asc,header)=>{
    // ASC , DESC
    CrossBankCasePage.QueryValidate_amount(desc_asc,header)
  })
Given('API Check result after click soft more or less {string} and header to validate is {string}',(desc_asc,header)=>{
    // ASC , DESC
    cy.log(header)
    cy.log(desc_asc)
    if(header === 'receiverBankName' && desc_asc === 'DESC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(4).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(4).click()
      cy.wait(3000)
      CrossBankCasePage.APIvalidateData(desc_asc,header)
      
    }else if(header === 'receiverBankName' && desc_asc === 'ASC'){
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(4).click()
      cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-1f2qhs8').eq(4).click()
      cy.wait(3000)
      CrossBankCasePage.APIvalidateData(desc_asc,header)

    }else{
      cy.log('value not match')
    }
})
Given('Searching is QueryData All Field',()=>{
  const query = CrossBankCasePage.QueryAllField()
  cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env("queryresult", result);
    result.forEach((row,i) => {
      const [MASTER_CASE_ID, POLICE_CASE_NUMBER,PERSONAL_ID_SENDER,FIRST_NAME_SENDER,LAST_NAME_SENDER,ACCOUNT_NUMBER_SENDER,BANK_NAME_SENDER,ACCOUNT_NUMBER_RECEIVER,BANK_NAME_RECEIVER,TYPE_NAME,SUB_CASE_RANK,AMOUNT,CREATE_DATE_TIME,Start_TRANSACTION_TIME,End_TRANSACTION_TIME,CASE_DATE_TIME,FIRST_NAME_Recei , LAST_NAME_Recei  ] = row;
      cy.log(`Row ${i}: MASTER_CASE_ID = ${MASTER_CASE_ID}, POLICE_CASE_NUMBER = ${POLICE_CASE_NUMBER},PERSONAL_ID_SENDER = ${PERSONAL_ID_SENDER}, FIRST_NAME_SENDER = ${FIRST_NAME_SENDER} , LAST_NAME_SENDER = ${LAST_NAME_SENDER},ACCOUNT_NUMBER_SENDER = ${ACCOUNT_NUMBER_SENDER},BANK_NAME_SENDER = ${BANK_NAME_SENDER},ACCOUNT_NUMBER_RECEIVER = ${ACCOUNT_NUMBER_RECEIVER},BANK_NAME_RECEIVER = ${BANK_NAME_RECEIVER},TYPE_NAME= ${TYPE_NAME},SUB_CASE_RANK=${SUB_CASE_RANK},AMOUNT=${AMOUNT},CREATE_DATE_TIME=${CREATE_DATE_TIME},Start_TRANSACTION_TIME=${Start_TRANSACTION_TIME},End_TRANSACTION_TIME=${End_TRANSACTION_TIME},CASE_DATE_TIME=${CASE_DATE_TIME},FIRST_NAME_Recei= ${FIRST_NAME_Recei},LAST_NAME_Recei=${LAST_NAME_Recei}`);
      CrossBankCasePage.SetprocessDecrypted(PERSONAL_ID_SENDER, FIRST_NAME_SENDER, LAST_NAME_SENDER,ACCOUNT_NUMBER_SENDER,ACCOUNT_NUMBER_RECEIVER,FIRST_NAME_Recei,LAST_NAME_Recei).then((decryptedRow) => {
        const personalId_sender = decryptedRow.personalId;
        const firstName_sender = decryptedRow.firstName;
        const lastName_sender = decryptedRow.lastName;
        const acc_sender = decryptedRow.accSen;
        const accRecei = decryptedRow.accRecei;
        const firstName_Recei = decryptedRow.NameRecei;
        const lastnameRecei = decryptedRow.LastRecei;
        cy.fixture('bankname.json').then((bankDict) => {
        const row_decrypted = [MASTER_CASE_ID,SUB_CASE_RANK,firstName_sender,lastName_sender,TYPE_NAME,bankDict[BANK_NAME_SENDER],acc_sender,firstName_Recei,lastnameRecei,bankDict[BANK_NAME_RECEIVER],accRecei,CrossBankCasePage.convertTimezone(Start_TRANSACTION_TIME),CrossBankCasePage.convertTimezone(End_TRANSACTION_TIME),AMOUNT,CrossBankCasePage.convertTimezone(CREATE_DATE_TIME),POLICE_CASE_NUMBER,CrossBankCasePage.convertTimezoneV2(CASE_DATE_TIME)]
        Cypress.env('row_decrypted',row_decrypted)
      })
        CrossBankCasePage.InputCasebankID(MASTER_CASE_ID)
        CrossBankCasePage.InputCasePoliceID(POLICE_CASE_NUMBER)
        CrossBankCasePage.InputCasePersonalID(personalId_sender)
        CrossBankCasePage.InputCaseSenderFristName(firstName_sender)
        CrossBankCasePage.InputCaseSenderLastName(lastName_sender)
        CrossBankCasePage.InputCaseSenderAccount(acc_sender)
        CrossBankCasePage.InputCaseType(TYPE_NAME)
        CrossBankCasePage.InputSenderBankName(BANK_NAME_SENDER)
        CrossBankCasePage.InputCaseRecieverAccount(accRecei)
        CrossBankCasePage.InputRecieverBankName(BANK_NAME_RECEIVER)
        CrossBankCasePage.clearNowDate()
        CrossBankCasePage.InputRank(SUB_CASE_RANK)
        CrossBankCasePage.CLickForSearch()
      });      
    });
  });
});
Given('QueryData All Field with Viewing History', () => {
  const query = CrossBankCasePage.QueryAllField_Viewing_Sender();
  cy.task('queryOracleDatabase', { query }).then((result) => {
    const allDecryptedRows = [];
    Cypress.env("queryresult", result);
    result.forEach((row, i) => {
      const [BANK_CASE_ID, SENDER_ACCOUNT_NUMBER, BANK_NAME, AUDIT_DATE_TIME, USER_ID, USER_BANK_CODE] = row;
      cy.log(`Row ${i}: BANK_CASE_ID = ${BANK_CASE_ID}, SENDER_ACCOUNT_NUMBER = ${SENDER_ACCOUNT_NUMBER}, BANK_NAME = ${BANK_NAME}, AUDIT_DATE_TIME = ${AUDIT_DATE_TIME}, USER_ID = ${USER_ID}, USER_BANK_CODE = ${USER_BANK_CODE}`);
      CrossBankCasePage.SetprocessDecryptedViewing(SENDER_ACCOUNT_NUMBER).then((decryptedRow) => {
        const account_sender = decryptedRow.acc_sen;
        const row_decrypted = [BANK_CASE_ID, account_sender, BANK_NAME, CrossBankCasePage.convertTimezone(AUDIT_DATE_TIME), USER_ID, USER_BANK_CODE];
        Cypress.env("queryall", row_decrypted);
        cy.log(`after decrypt all = ${row_decrypted}`);
        allDecryptedRows.push(row_decrypted);
        cy.log(`after decrypt all = ${row_decrypted}`);
      });
      Cypress.env("query_for_valid", allDecryptedRows)
    });
  });
});
Then('Searching Viewing History with case {string}',(Case)=>{
  const data = Cypress.env("queryall");
  cy.log(JSON.stringify(data))
  if (Case == 'TC003_001'){
    const bankcaseID = data[0]
    const account_number = data[1]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'TC003_002'){
    const bankcaseID = data[0]
    const account_number = data[1]
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_003'){
    const bankcaseID = data[0]
    const account_number = data[1]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'TC003_004'){
    const bankcaseID = data[0]
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_005'){
    const account_number = data[1]
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_006'){
    const bankcaseID = data[0]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
  }else if (Case == 'TC003_007'){
    const account_number = data[1]
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'TC003_008'){
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_010'){
    const bankcaseID = '25680428CMBT06880'
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
  }else if (Case == 'TC003_011'){
    const account_number = '4798573593753535'
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'TC003_012'){
    const account_number = '4798573593753535'
    const bankcaseID = '25680428CMBT06882'
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'TC003_013'){
    const bankcaseID = '25680428CMBT06889'
    const account_number = data[1]
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_014'){
    const bankcaseID = data[0]
    const account_number = '4798573593753535'
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_015'){
    const bankcaseID = data[0]
    const account_number = '4798573593753534'
    const bankname = 'ธนาคารทหารไทยธนชาต จำกัด (มหาชน)'
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_016'){
    const bankcaseID = data[0]
    const account_number = data[1]
    const bankname = 'ธนาคารทหารไทยธนชาต จำกัด (มหาชน)'
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
  }else if (Case == 'TC003_017'){
    const bankcaseID = data[0]
    const account_number = data[1]
    const bankname = data[2]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
    CrossBankCasePage.Viewing_InputSenderBankName(bankname)
    cy.get('#clear',{timeout:30000}).should('exist').click()
  }else if (Case == 'TC003_018'){
    const bankcaseID = '283459283457182392947261837598273616'
    const account_number = '100295892088391284'
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'TC003_019'){
    const bankcaseID = '@#$$%%%%())^%$<>__(_++!@#$*('
    const account_number = '@#$*()_)*&'
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else if (Case == 'click searching'){
    CrossBankCasePage.CLickForSearch()
  }else if (Case == 'click searching bankcaseID'){
    const bankcaseID = data[0]
    CrossBankCasePage.Viewing_InputCasebankID(bankcaseID)
  }else if (Case == 'click searching account number'){
    const account_number = data[1]
    CrossBankCasePage.Viewing_InputAccount_number(account_number)
  }else{
    cy.log('not match any case')
  }
})
Then('validate result cross bank viewing history is {string}',(string)=>{
  if(string == 'have a value in table'){
    CrossBankCasePage.HeaderViewingHistoryUnder()
    CrossBankCasePage.DisplayViewingHistoryUnder()
  }else if (string == 'validate viewing table'){
    const dataarray = Cypress.env("query_for_valid");
    cy.log(JSON.stringify(dataarray))
    CrossBankCasePage.HeaderViewingHistoryUnder()
    CrossBankCasePage.Display_Validate_ViewingHistoryUnder(dataarray)
  }else if (string == 'click soft data date validate viewing table'){
    cy.wait(3000)
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(1).click()
    CrossBankCasePage.HeaderViewingHistoryUnder()
    CrossBankCasePage.DisplayViewingHistoryUnder()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(1).click()
    CrossBankCasePage.HeaderViewingHistoryUnder()
    CrossBankCasePage.DisplayViewingHistoryUnder()
  }else if (string == 'click soft bankcaseID validate viewing table'){
    cy.wait(3000)
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(0).click()
    CrossBankCasePage.HeaderViewingHistoryUnder()
    CrossBankCasePage.DisplayViewingHistoryUnder()
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root.css-pj3kdi').eq(0).click()
    CrossBankCasePage.HeaderViewingHistoryUnder()
    CrossBankCasePage.DisplayViewingHistoryUnder()
  }else if (string == 'error message bankcase and bankname is not found'){
    cy.contains('กรุณากรอกหมายเลขเคสอ้างอิงธนาคารหรือเลขที่บัญชี')
  }else if (string == 'error message data not found'){
    cy.contains('ไม่พบข้อมูล')
  }else if (string == 'should be display value clear'){
    cy.get('#caseId_Bank').should('have.value', '')
    cy.get('#ownerAccountNumber').should('have.value', '')
    cy.get('#bank').should('have.value', 'ทุกธนาคาร (ALL)')
  }else if (string == 'should be display bankcase and account no value'){
    cy.get('#caseId_Bank').should('have.value', '')
    cy.get('#ownerAccountNumber').should('have.value', '')
  }else{
    cy.log('not match keyword')
  }
})


