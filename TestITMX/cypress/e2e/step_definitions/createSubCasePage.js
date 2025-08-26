const BANK_CASE_ID_INPUT = '#caseId_Bank'
const SEARCH_BUTTON = '#addchildcase'

class CreateSubCasePage {
  static displayLableSubCase(){
    cy.fixture('scenario1').then(scenario1 =>{
      cy.contains(scenario1.sub_case_id_label)
      cy.contains(scenario1.sub_case_name_label)
      // cy.contains(scenario1.sub_case_surename_label)
      cy.contains(scenario1.sub_case_account_owner_label)
      cy.contains(scenario1.sub_case_account_detail_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.account_detail_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.account_owner_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.transaction_count_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.amount_label)
      }) 
    }
  static caseIdOnSubCaseDisplay(horse){
    cy.fixture(horse).then(testdata =>{
      cy.get('#caseID').should('have.attr', 'readonly', 'readonly')
      cy.get('#caseID').should('have.value',testdata.case_id)
      }) 
  }
  static clickSubCaseViewDetailFirst(){
    cy.get('button[aria-label="ดูรายละเอียด"]',{timeout:5000}).first().click()
  }
  static clickSubCaseViewDetail(row){
    cy.get('button[aria-label="ดูรายละเอียด"]',{timeout:5000}).eq(row).click()
  }
  static subCaseIdDisplay(caseid){
    cy.contains('หมายเลขเคสอ้างอิงธนาคาร (Bank Case ID)',{timeout:5000})
    cy.get('#caseid',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    cy.get('#caseid',{timeout:5000}).should('have.value',caseid)
  }
// 
  static subCaseNameDisplay(name){
    cy.get('input[value="'+name+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+name+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseToNameDetailDisplay(name){
    cy.get('#ownerfirstname-label',{timeout:5000}).should('contain.text',"ชื่อผู้ต้องสงสัย")
    cy.get('input[value="'+name+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+name+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseToPersonTypeDisplay(persontype){
    cy.get('#accountholdertype-label',{timeout:5000}).should('contain.text',"ประเภทบุคคลของเจ้าของบัญชีผู้ต้องสงสัย")
    cy.get('input[value="'+persontype+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+persontype+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseToPersonIdDisplay(personId){
    cy.get('#owneridcard-label',{timeout:5000}).should('contain.text',"เลขที่บัตรประชาชน / หนังสือเดินทาง")
    cy.get('input[value="'+personId+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+personId+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseToPersonPhoneNoDisplay(phone){
    cy.get('#accountPhone-label',{timeout:5000}).should('contain.text',"เบอร์โทรศัพท์ผู้ต้องสงสัย")
    cy.get('input[value="'+phone+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+phone+'"]',{timeout:5000}).should('be.visible')
  }

  // 
  static subCaseNameDetailDisplay(name){
    // cy.get('#ownerfirstname-label',{timeout:5000}).should('contain.text',"ชื่อผู้โอน")
    cy.get('input[value="'+name+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+name+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseSureNameDisplay(surename){
    // cy.get('#ownerlastname-label',{timeout:5000}).should('contain.text',"นามสกุลผู้โอน")
    cy.get('input[value="'+surename+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+surename+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseToSureNameDisplay(surename){
    // cy.get('#ownerlastname-label',{timeout:5000}).should('contain.text',"นามสกุลผู้ต้องสงสัย")
    cy.get('input[value="'+surename+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+surename+'"]',{timeout:5000}).should('be.visible')
  }
  static subCasePersonTypeDisplay(masterCasePersontype){
    // cy.get('#accountholdertype-label',{timeout:5000}).should('contain.text',"ประเภทของเจ้าของบัญชีผู้โอน")
    cy.get('input[value="'+masterCasePersontype+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+masterCasePersontype+'"]',{timeout:5000}).should('be.visible')
  }
  static subCasePersonIdDisplay(masterCasePersonId){
    // cy.get('#owneridcard-label',{timeout:5000}).should('contain.text',"เลขที่บัตรประชาชน / หนังสือเดินทาง")
    cy.get('input[value="'+masterCasePersonId+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+masterCasePersonId+'"]',{timeout:5000}).should('be.visible')
  }
  static subCasePersonPhoneNoDisplay(phone){
    // cy.get('#victimPhoneNumber-label',{timeout:5000}).should('contain.text',"เบอร์โทรศัพท์ผู้โอน")
    cy.get('input[value="'+phone+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+phone+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseBankNameOwnerDisplay(bankname){
    cy.get('#bank-label',{timeout:5000}).should('contain.text',"ธนาคาร")
    cy.get('input[value="'+bankname+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+bankname+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseToBankNameOwnerDisplay(bankname){
    cy.get('#bankname-label',{timeout:5000}).should('contain.text',"ธนาคาร")
    cy.get('input[value="'+bankname+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+bankname+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseBankAccNoDisplay(accno){
    cy.get('#accountnumber-label',{timeout:5000}).should('contain.text',"หมายเลขบัญชี")
    cy.get('input[value="'+accno+'"]',{timeout:5000}).should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+accno+'"]',{timeout:5000}).should('be.visible')
  }
  static subCaseDateOfFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="bank-label"]',{ timeout: 50000 }).eq(1).should('contain.text',"วันและเวลาที่อายัด 72 hrs")
    cy.get('input[id="bank"]',{ timeout: 50000 }).eq(1).should('contain.value',datetime)
    cy.get('input[id="bank"]',{ timeout: 50000 }).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfUnFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(1).should('contain.text',"วันและเวลาที่ปลด 72 hrs")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(1).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfReportPoliceDisplay(datetime){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(2).should('contain.text',"วันและเวลาที่แจ้งความ (ขยายจาก 72 ชม เป็น 7 วัน)")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(2).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(2).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfFreezeAcc7dayDisplay(datetime){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(2).should('contain.text',"วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)")
    cy.get('input[id="bank"]',{timeout:5000}).eq(2).should('contain.value',datetime)
    cy.get('input[id="bank"]',{timeout:5000}).eq(2).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfUnFreezeAcc7dayDisplay(datetime)  {
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(3).should('contain.text',"วันและเวลาที่ปลด 7 วัน")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(3).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(3).should('have.attr', 'readonly', 'readonly')
  } 
  static subCaseDateOfFreezeByPoliceDisplay(datetime){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(4).should('contain.text',"วันและเวลาที่อายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(4).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(4).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseDateOfUnFreezeByPoliceDisplay(datetime){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(3).should('contain.text',"วันและเวลาที่ปลดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(3).should('contain.value',datetime)
    cy.get('input[id="bank"]',{timeout:5000}).eq(3).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseTypeOfFreezeByBankDisplay(type){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(4).should('contain.text',"ประเภทของการอายัดจากธนาคาร")
    cy.get('input[id="bank"]',{timeout:5000}).eq(4).should('contain.value',type)
    cy.get('input[id="bank"]',{timeout:5000}).eq(4).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseAmountFreezeByBankDisplay(amount){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(5).should('contain.text',"จำนวนเงินธุรกรรมที่ระงับ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(5).should('contain.value',amount)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(5).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseBalanceDisplay(amount){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(6).should('contain.text',"จำนวนเงินคงเหลือหลังอายัด")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(6).should('contain.value',amount)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(6).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseTypeOfFreezeByPoliceDisplay(type){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(5).should('contain.text',"ประเภทของหมายอายัดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(5).should('contain.value',type)
    cy.get('input[id="bank"]',{timeout:5000}).eq(5).should('have.attr', 'readonly', 'readonly')
  }
  static subCasePoliceFreezeNumberDisplay(number){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(7).should('contain.text',"ใส่หมายอายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(7).should('contain.value',number)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(7).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseAmountFreezeByPoliceDisplay(amount){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(8).should('contain.text',"จำนวนวงเงินที่อายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(8).should('contain.value',amount)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(8).should('have.attr', 'readonly', 'readonly')
  }
  static subCasePoliceUnFreezeNumberDisplay(number){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(6).should('contain.text',"ใส่หมายปลดอายัดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(6).should('contain.value',number)
    cy.get('input[id="bank"]',{timeout:5000}).eq(6).should('have.attr', 'readonly', 'readonly')
  }
  // 

  static subCaseToDateOfFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="bank-label"]',{ timeout: 50000 }).eq(0).should('contain.text',"วันและเวลาที่อายัด 72 hrs")
    cy.get('input[id="bank"]',{ timeout: 50000 }).eq(0).should('contain.value',datetime)
    cy.get('input[id="bank"]',{ timeout: 50000 }).eq(0).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToDateOfUnFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(1).should('contain.text',"วันและเวลาที่ปลด 72 hrs")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(1).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToDateOfReportPoliceDisplay(datetime){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(2).should('contain.text',"วันและเวลาที่แจ้งความ (ขยายจาก 72 ชม เป็น 7 วัน)")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(2).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(2).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToDateOfFreezeAcc7dayDisplay(datetime){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(1).should('contain.text',"วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)")
    cy.get('input[id="bank"]',{timeout:5000}).eq(1).should('contain.value',datetime)
    cy.get('input[id="bank"]',{timeout:5000}).eq(1).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToDateOfUnFreezeAcc7dayDisplay(datetime)  {
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(3).should('contain.text',"วันและเวลาที่ปลด 7 วัน")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(3).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(3).should('have.attr', 'readonly', 'readonly')
  } 
  static subCaseToDateOfFreezeByPoliceDisplay(datetime){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(4).should('contain.text',"วันและเวลาที่อายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(4).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(4).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToDateOfUnFreezeByPoliceDisplay(datetime){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(2).should('contain.text',"วันและเวลาที่ปลดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(2).should('contain.value',datetime)
    cy.get('input[id="bank"]',{timeout:5000}).eq(2).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToTypeOfFreezeByBankDisplay(type){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(3).should('contain.text',"ประเภทของการอายัดจากธนาคาร")
    cy.get('input[id="bank"]',{timeout:5000}).eq(3).should('contain.value',type)
    cy.get('input[id="bank"]',{timeout:5000}).eq(3).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToAmountFreezeByBankDisplay(amount){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(5).should('contain.text',"จำนวนเงินธุรกรรมที่ระงับ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(5).should('contain.value',amount)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(5).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToBalanceDisplay(amount){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(6).should('contain.text',"จำนวนเงินคงเหลือหลังอายัด")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(6).should('contain.value',amount)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(6).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToTypeOfFreezeByPoliceDisplay(type){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(4).should('contain.text',"ประเภทของหมายอายัดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(4).should('contain.value',type)
    cy.get('input[id="bank"]',{timeout:5000}).eq(4).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToPoliceFreezeNumberDisplay(number){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(7).should('contain.text',"ใส่หมายอายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(7).should('contain.value',number)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(7).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToAmountFreezeByPoliceDisplay(amount){
    cy.get('label[id="accountnumber-label"]',{timeout:5000}).eq(8).should('contain.text',"จำนวนวงเงินที่อายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(8).should('contain.value',amount)
    cy.get('input[id="accountnumber"]',{timeout:5000}).eq(8).should('have.attr', 'readonly', 'readonly')
  }
  static subCaseToPoliceUnFreezeNumberDisplay(number){
    cy.get('label[id="bank-label"]',{timeout:5000}).eq(5).should('contain.text',"ใส่หมายปลดอายัดจากตำรวจ")
    cy.get('input[id="bank"]',{timeout:5000}).eq(5).should('contain.value',number)
    cy.get('input[id="bank"]',{timeout:5000}).eq(5).should('have.attr', 'readonly', 'readonly')
  }

  // 
  static closeSubCaseViewDetail(){
    cy.contains('Close').click()
  }
  static clickSubCaseViewDetail(){
    cy.get('button[id="addchildcase"]').click()
  }
  static clickConfirmSubCase(){
    cy.get('button[id="addchildcase"]').click()
    cy.wait(2000)
    // cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium css-5yetxq"]').click()
    // cy.wait(5000)
    const locator1 =
      'button[class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium css-5yetxq"]';
    const locator2 =
      'button[class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorPrimary MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorPrimary css-5yetxq"]';

    cy.get("body").then(($body) => {
      if ($body.find(locator1).length > 0) {
        cy.get(locator1).click();
      } else {
        cy.get(locator2).click();
      }
    });
  }
  static subCaseTxn(txn_time,acc,tobank,accname,amt,txnid,ip){
    cy.get('div[class="MuiDialogContent-root css-1ty026z"]').scrollTo('bottom')
    const trx_time_array = txn_time.split(",")
    const acc_array = acc.split(",")
    const tobank_array = tobank.split(",")
    const accname_array = accname.split(",")
    const amt_array = amt.split("-")
    cy.log(amt_array)
    const txnid_array = txnid.split(",")
    cy.log(txnid_array[0])
    const ip_array = ip.split(",")
    let array_length = trx_time_array.length
    let array_count = 0;
    let acc_array_count = 0;
    let tobank_array_count = 0;
    let accname_array_count = 0;
    let amt_array_count = 0;
    let txnid_array_count = 0;
    let ip_array_count = 0;
    array_length = array_length / 10
    for (let n = 0; n < array_length; n++) {
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="1"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',trx_time_array[array_count])
          array_count++
        })
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="2"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',acc_array[acc_array_count])
          acc_array_count++
        })
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="3"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',tobank_array[tobank_array_count])
          tobank_array_count++
        })
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="4"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',accname_array[accname_array_count])
          accname_array_count++
        })
        cy.get('div[role="scrollbar"]').scrollTo('right', { ensureScrollable: false })
        cy.wait(2000)
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="5"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',amt_array[amt_array_count])
          amt_array_count++
        })
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="6"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',txnid_array[txnid_array_count])
          txnid_array_count++
        })
        cy.get('div[class="rs-table-body-wheel-area"]',{timeout:5000}).eq(1).find('div[aria-colindex="7"]',{timeout:5000}).each(($div,i) =>{
          cy.get($div,{timeout:5000}).should('contain.text',ip_array[ip_array_count])
          ip_array_count++
        })
        if(n < array_length-1){
          cy.get('button[title="Go to next page"]').click()
        }  
    }
  }
  static subCaseNameDisplayDisplay(name){
      cy.get('input[value="'+name+'"]').should('have.attr', 'readonly', 'readonly')
  }
  static subCaseSureNameDisplay(surename){
    cy.get('input[value="'+surename+'"]').should('have.attr', 'readonly', 'readonly')
  }  
  static subCaseSenderAccountDisplay(accNo){
    cy.get('input[value='+accNo+']').should('have.attr', 'readonly', 'readonly')
  }
  static subCaseBankSenderNameDisplay(bankname){
    cy.get('input[value="'+bankname+'"]').should('have.attr', 'readonly', 'readonly')
  }
  static searchBankCaseID(bankcaseid){
    cy.get(BANK_CASE_ID_INPUT).type(bankcaseid)
  }
  static subCaseSenderTxnAccNameDisplay(name){
    cy.get('div[aria-rowindex="2"]').find('div[aria-colindex="1"]').should('contain.text',name)
  }
  static subCaseSenderTxnAccSureNameDisplay(surename){
    cy.get('div[aria-rowindex="2"]').find('div[aria-colindex="1"]').should('contain.text',surename)
  }  
  static subCaseSenderTxnAccNoDisplay(accNo){
    cy.get('div[aria-rowindex="2"]').find('div[aria-colindex="1"]').should('contain.text',accNo)
  }  
  static subCaseSenderBankShortNameDisplay(shortname){
    cy.get('div[aria-rowindex="2"]').find('div[aria-colindex="2"]').should('contain.text',shortname)
  }
  static subCaseSenderTxnCountDisplay(count){
    cy.get('div[aria-rowindex="2"]').find('div[aria-colindex="3"]').should('contain.text',count)
  }
  static subCaseSenderTxnAmtDisplay(amt){
    cy.get('div[aria-rowindex="2"]').find('div[aria-colindex="4"]').should('contain.text',amt)
  }
  static subCaseRecvTxnAccNameDisplay(trxnum, name){
    const row = trxnum+2
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]').should('contain.text',name)
  }
  static subCaseRecvTxnAccSureNameDisplay(trxnum, surename){
    const row = trxnum+2
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]').should('contain.text',surename)
  }
  static subCaseRecvTxnAccNoDisplay(trxnum, accNo){
    const row = trxnum+2
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]').should('contain.text',accNo)
  }
  static subCaseRecvBankShortNameDisplay(trxnum, shortname){
    const row = trxnum+2
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="2"]').should('contain.text',shortname)
  }
  static subCaseRecvTxnCountDisplay(trxnum, count){
    const row = trxnum+2
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="3"]').should('contain.text',count)
  }
  static subCaseRecvTxnAmtDisplay(trxnum, amt){
    const row = trxnum+2
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="4"]').should('contain.text',amt)
  }

  static uploadFileSubCase(fileName){
    let uploadFile = 'cypress/fixtures/negative_subcase/'+fileName+'.xlsx'
    cy.get('input[type=file]').selectFile(uploadFile,{force: true})
    cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
    cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
    cy.get(SEARCH_BUTTON).click()
  }
  static uploadPositiveFileSubCase(fileName){
    let uploadFile = 'cypress/fixtures/positive'+fileName+'.xlsx'
    cy.get('input[type=file]').selectFile(uploadFile,{force: true})
    cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
    cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
    cy.get(SEARCH_BUTTON).click()
  }
  static displayErrorMessage(errorMessage){
    // cy.wait(5000)
    cy.get('div[class="MuiTypography-root MuiTypography-body1 css-1ugr89f"]').should('be.visible')
    cy.contains(errorMessage)
  }

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// new template for sub case

static DisplayPageAddsub(){
    cy.get('#caseID')
    cy.get('div.MuiGrid-root.MuiGrid-container.css-2em9xs').within(() => {
      cy.get('#caseID').eq(0).should('have.attr', 'readonly', 'readonly')
      cy.get('#caseID').eq(1).should('have.attr', 'readonly', 'readonly')
      cy.get('#caseID').eq(2).should('have.attr', 'readonly', 'readonly')
      cy.get('#caseID').eq(3).should('have.attr', 'readonly', 'readonly')
    })
  }
static DownloadtemplateSubcase(bank){
    cy.contains('ดาวน์โหลดเทมเพลตสำหรับการนำเข้าข้อมูล').click()
    if(bank == 'non_bank'){
      const path = 'cypress/downloads/TemplateAddSubCase_V16.2_Non-bank.xlsx';
      cy.readFile(path, { timeout: 10000 }).should('exist');
      Cypress.env('filedownloadedPath',path);
    }else if(bank == 'bank'){
      const path = 'cypress/downloads/TemplateAddSubCase_V16.2_MBs.xlsx';
      cy.readFile(path, { timeout: 10000 }).should('exist');
      Cypress.env('filedownloadedPath',path);
    }else{
      throw new Error('Unknown bank type: ' + bank)
    }
    }

  static subcasecopyFilename(bank,fileName){
  const file  = Cypress.env('filedownloadedPath')
  const oldFilePath = file
  if(bank == 'non_bank'){
    const newFilePath = `cypress/fixtures/positive/${fileName}_AddSubCase_V16.2_Non-bank.xlsx`;
    cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
      cy.readFile(newFilePath).should('exist');
      cy.task('deleteFile', file);
      cy.wrap(newFilePath).as('filename')
    });
  }else if(bank == 'bank'){
      const newFilePath = `cypress/fixtures/positive/${fileName}_AddSubCase_V16.2_MBs.xlsx`;
      cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
        cy.readFile(newFilePath).should('exist');
        cy.task('deleteFile', file);
        cy.wrap(newFilePath).as('filename')
      });
    }else{
      throw new Error('Unknown bank type: ' + bank)
    }
  }

  static DisplayValue_sub(data){
      cy.get(`@${data}`).then(testdata =>{
        CreateSubCasePage.DisplayValue_Transition_sub(testdata)
    })  
  }

  static DisplayValue_Transition_sub(testdata){
      const non_bank  = Cypress.env('nonBankData');
        cy.get('div.MuiBox-root.css-0').eq(1).within(() => {
        // transition 2
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(3).should('contain.text', non_bank[0][1])
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(4).should('contain.text', '1')
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(5).should('contain.text', '10.00')
        cy.get('button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeMedium.css-15mydm5').eq(1).should('have.attr', 'type', 'button')
        })
  }

  static DisplayValue_IN_Transition_sub(row,scenario,data,condition){
      cy.get(`@${data}`).then(testdata =>{
        if(condition === 'ข้อมูลผู้เสียหาย'){
          cy.log('skip')
        }else if(condition === 'ข้อมูลผู้ต้องสงสัย'){
          CreateSubCasePage.clickIconTransition_sub(1)
          CreateSubCasePage.Value_IN_Transition_M2_non_bank_sub(testdata)
          CreateSubCasePage.closeViewDetail_sub()
          
        }else{
        throw new Error('Unknown data type: ' + condition)
        }
        })  
  }

  static DisplayValue_IN_Transition_for_bank_sub(row,scenario,data,condition){
      cy.get(`@${data}`).then(testdata =>{
        if(condition === 'ข้อมูลผู้เสียหาย'){
          cy.log('skip')
        }else if(condition === 'ข้อมูลผู้ต้องสงสัย'){
          CreateSubCasePage.clickIconTransition_sub(1)
          CreateSubCasePage.Value_IN_Transition_M2_bank_sub(testdata)
          CreateSubCasePage.closeViewDetail_sub()
          
        }else{
        throw new Error('Unknown data type: ' + condition)
        }
        })  
  }

  static clickIconTransition_sub(row){
    cy.get('div.MuiBox-root.css-0').eq(1).within(() => {
      cy.get('button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeMedium.css-15mydm5').eq(row).click()
    })
  }
  static closeViewDetail_sub(){
    cy.contains('Close').click()
  }

  static Value_IN_Transition_M2_bank_sub(testdata){
    const non_bank = Cypress.env('nonBankData');
    cy.get('#ข้อมูลผู้ต้องสงสัย').eq(1).within(() => {
          cy.get('#ownerfirstname').should('have.value', testdata.K12).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerlastname').should('have.value', testdata.L12).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountholdertype').should('have.value', testdata.I12).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayId').should('have.value', testdata.N12).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayType').should('have.value', testdata.M12).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountPhone').should('have.value', testdata.J12).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountCategory').should('have.value', non_bank[0][4]).and('have.attr', 'readonly', 'readonly')
          cy.get('input#accountnumber.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi')
          .eq(1).should('have.value', testdata.AM12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerId').should('have.value', testdata.AN12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef1').should('have.value', testdata.AO12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef2').should('have.value', testdata.AP12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef3').should('have.value', testdata.AQ12).and('have.attr', 'readonly', 'readonly')
          // สถานะผู้ต้องสงสัย
          cy.get('div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-1qqyecc').eq(2).within(() => {
            cy.get('input.css-16lhzsi').eq(0).should('have.value', testdata.V12)
            cy.get('input.css-16lhzsi').eq(1).should('have.value', testdata.W12)
            cy.get('input.css-16lhzsi').eq(2).should('have.value', testdata.X12)
            cy.get('input.css-16lhzsi').eq(3).should('have.value', testdata.Y12)
            cy.get('input.css-16lhzsi').eq(4).should('have.value', testdata.Z12)
            cy.get('input.css-16lhzsi').eq(5).should('have.value', testdata.AA12)
            cy.get('input.css-16lhzsi').eq(6).should('have.value', testdata.AB12)
            cy.get('input.css-16lhzsi').eq(7).should('have.value', testdata.AC12)
            cy.get('input.css-16lhzsi').eq(8).should('have.value', testdata.AD12)
            cy.get('input.css-16lhzsi').eq(9).should('have.value', testdata.AE12)
            cy.get('input.css-16lhzsi').eq(10).should('have.value', testdata.AF12)
          })
          // รายละเอียดการไล่เส้นเงิน
          cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-cell-bordered').within(() => {
            cy.get('div.rs-table-cell-content').eq(7)
            cy.get('div.rs-table-cell-content').eq(8)
            cy.get('div.rs-table-cell-content').eq(9).should('have.text', non_bank[0][1])
            cy.get('div.rs-table-cell-content').eq(10).invoke('text').should('include', testdata.K12).and('include', testdata.L12)
            cy.get('div.rs-table-cell-content').eq(11).should('have.text', testdata.U12)
            cy.get('div.rs-table-cell-content').eq(12).should('have.text', testdata.T12)
            cy.get('div.rs-table-cell-content').eq(13).should('have.text', testdata.G12)
          })
    })
  }
  static Value_IN_Transition_M2_non_bank_sub(testdata){
    const non_bank = Cypress.env('nonBankData');
    cy.get('#ข้อมูลผู้ต้องสงสัย').eq(1).within(() => {
          cy.get('#ownerfirstname').should('have.value', testdata.K12).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerlastname').should('have.value', testdata.L12).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountholdertype').should('have.value', testdata.I12).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayType').should('have.value', testdata.M12).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayId').should('have.value', testdata.N12).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountPhone').should('have.value', testdata.J12).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountCategory').should('have.value', non_bank[0][4]).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountnumber').should('have.value', testdata.AJ12).and('have.attr', 'readonly', 'readonly')
          cy.get('input#accountnumber.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi')
          .eq(1).should('have.value', testdata.AM12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerId').should('have.value', testdata.AN12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef1').should('have.value', testdata.AO12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef2').should('have.value', testdata.AP12).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef3').should('have.value', testdata.AQ12).and('have.attr', 'readonly', 'readonly')
          // สถานะผู้ต้องสงสัย
          cy.get('div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-1qqyecc').eq(2).within(() => {
            cy.get('input.css-16lhzsi').eq(0).should('have.value', testdata.V12)
            cy.get('input.css-16lhzsi').eq(1).should('have.value', testdata.W12)
            cy.get('input.css-16lhzsi').eq(2).should('have.value', testdata.X12)
            cy.get('input.css-16lhzsi').eq(3).should('have.value', testdata.Y12)
            cy.get('input.css-16lhzsi').eq(4).should('have.value', testdata.Z12)
            cy.get('input.css-16lhzsi').eq(5).should('have.value', testdata.AA12)
            cy.get('input.css-16lhzsi').eq(6).should('have.value', testdata.AB12)
            cy.get('input.css-16lhzsi').eq(7).should('have.value', testdata.AC12)
            cy.get('input.css-16lhzsi').eq(8).should('have.value', testdata.AD12)
            cy.get('input.css-16lhzsi').eq(9).should('have.value', testdata.AE12)
            cy.get('input.css-16lhzsi').eq(10).should('have.value', testdata.AF12)
          })
          // รายละเอียดการไล่เส้นเงิน
          cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-cell-bordered').within(() => {
            cy.get('div.rs-table-cell-content').eq(7)
            cy.get('div.rs-table-cell-content').eq(8)
            cy.get('div.rs-table-cell-content').eq(9).should('have.text', non_bank[0][1])
            cy.get('div.rs-table-cell-content').eq(10).invoke('text').should('include', testdata.K12).and('include', testdata.L12)
            cy.get('div.rs-table-cell-content').eq(11).should('have.text', testdata.U12)
            cy.get('div.rs-table-cell-content').eq(12).should('have.text', testdata.T12)
            cy.get('div.rs-table-cell-content').eq(13).should('have.text', testdata.G12)
          })
    })
  }



}
export default CreateSubCasePage


