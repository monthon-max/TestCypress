import { should } from "chai"
import { QueryPage } from "./Querypage"
import { Databasequery } from "./DatabaseQuery"

let USERNAME_VALUE = "name"
const URI = 'neo4j://10.233.1.69:7474'
const USER_NEO4J = 'neo4j'
const PASS_NEO4J = 'password'
const ChecktotolRow = ".MuiStack-root.css-1n3luak .MuiTypography-root"
const confirmGo = "button.MuiButton-root"
const CFBrown = '#confirm'

class CreateMasterCasePage {
  static caseTransaction(txn_time,acc,tobank,accname,amt,txnid,ip){
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
  static removeCaseIdInExcel(caseid){ 
        cy.visit('http://10.233.1.69:7474/browser/')
        cy.wait(1000)
        cy.get('input[data-testid="username"]').type(USER_NEO4J)
        cy.get('input[data-testid="password"]').type(PASS_NEO4J)
        cy.contains('Connect').click()
        cy.get('button[data-testid="connect"]').click()
        cy.wait(5000)
        cy.get('div[class="view-line"]').type('MATCH (f:FraudCase)-[:HAS_SUB_CASE]->(b:BankFraudCase)-[:CASE_BELONGS_TO]->(ba1::')
        cy.get('div[class="view-line"]').type('{del}')  
        cy.wait(1000)
        cy.get('div[class="view-line"]').type('{del}')  
        cy.wait(1000)
        cy.get('div[class="view-line"]').type(':BankAccount) WHERE f.master_case_id ='+'"'+caseid+'"'+' WITH f MATCH (f)-[:HAS_SUB_CASE]->(b1:BankFraudCase)-[:CASE_BELONGS_TO]->(ba1:BankAccount),(f)-[:HAS_SUB_CASE]->(b2:BankFraudCase)-[:CASE_BELONGS_TO]->(ba2:BankAccount) MATCH (ba1:BankAccount)-[t:TRANSFER{bank_case_id:'+'"'+caseid+'"')
        cy.get('div[class="view-line"]').last().type('{del}{del}')
        cy.get('div[class="view-line"]').last().type('->(ba2:BankAccount) DETACH DELETE t,b1,b2,f')
        cy.get('button[data-testid="editor-Run"]').click()
        cy.wait(2000)        
    }
  static displayLable(){
    cy.fixture('scenario1').then(scenario1 =>{
      cy.contains(scenario1.case_id_label)
      cy.contains(scenario1.case_type_label)
      cy.contains(scenario1.police_id_label)
      cy.contains(scenario1.master_case_name_label)
      cy.contains(scenario1.master_case_surename_label)
      cy.contains(scenario1.master_case_type_label)
      cy.contains(scenario1.master_case_person_type_label)
      cy.contains(scenario1.master_case_person_id_label)
      cy.contains(scenario1.account_detail_label)
      cy.contains(scenario1.account_owner_label)
      cy.contains(scenario1.transaction_count_label)
      cy.contains(scenario1.amount_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.account_detail_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.account_owner_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.transaction_count_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.amount_label)
    }) 
  }
  static displayLable_new(){
    cy.fixture('new_template').then(scenario1 =>{
      cy.contains(scenario1.case_id_label)
      cy.contains(scenario1.case_type_label)
      cy.contains(scenario1.police_id_label)
      cy.contains(scenario1.master_case_name_label)
      cy.contains(scenario1.master_case_surename_label)
      cy.contains(scenario1.master_case_type_label)
      cy.contains(scenario1.master_case_person_type_label)
      cy.contains(scenario1.master_case_person_id_label)
      cy.contains(scenario1.account_detail_label)
      cy.contains(scenario1.account_owner_label)
      cy.contains(scenario1.transaction_count_label)
      cy.contains(scenario1.amount_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.account_detail_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.account_owner_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.transaction_count_label)
      cy.get('div[aria-rowindex="1"]').should('contain.text',scenario1.amount_label)
    }) 
  }
  static caseIdDisplay(caseid){
      cy.fixture(caseid).then(testdata =>{
        cy.get('#caseid').should('have.attr', 'readonly', 'readonly')
        cy.get('#caseid').should('have.value',testdata.case_id)
    }) 
  }
  static policeIdDisplay(policeid){
    cy.fixture(policeid).then(testdata =>{
      cy.get('input[value="'+ testdata.police_id+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.police_id+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static policeDateTimeDisplay(datetime){
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[value="'+ testdata.police_datetime+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.police_datetime+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static caseTypeDisplay(casetype){
    cy.fixture(casetype).then(testdata =>{
      cy.get('input[value="'+ testdata.case_type+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.case_type+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCaseNameDisplay(name){
    cy.fixture(name).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_name+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_name+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCaseSureNameDisplay(surename){
    cy.fixture(surename).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_surename+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_surename+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCaseTypeDisplay(masterCasetype){
    cy.fixture(masterCasetype).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_type+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_type+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCasePersonTypeDisplay(masterCasePersontype){
    cy.fixture(masterCasePersontype).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_person_type+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_person_type+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCasePersonIdDisplay(masterCasePersonId){
    cy.fixture(masterCasePersonId).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_person_id+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_person_id+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCaseDetailDisplay(masterCaseDetail){
    cy.fixture(masterCaseDetail).then(testdata =>{
      cy.get('#caseDetail').should('have.text',testdata.case_detail)
      cy.get('#caseDetail').should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static contactFullNameDisplay(contactFullName){
    cy.fixture(contactFullName).then(testdata =>{
      cy.get('input[value="'+ testdata.contact_full_name+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.contact_full_name+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static contactPhoneDisplay(contactPhone){
    cy.fixture(contactPhone).then(testdata =>{
      cy.get('input[value="'+ testdata.contact_phone_no+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.contact_phone_no+'"]',{timeout:5000}).should('be.visible')
    }) 
  }  
  static contactEmailDisplay(contactEmail){
    cy.fixture(contactEmail).then(testdata =>{
      cy.get('input[value="'+ testdata.contact_email+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.contact_email+'"]',{timeout:5000}).should('be.visible')
    }) 
  } 
  static contactRelationDisplay(contactRelation){
    cy.fixture(contactRelation).then(testdata =>{
      cy.get('input[value="'+ testdata.contact_relation+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.contact_relation+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static masterCaseBankOwnerDisplay(bankOwner){
    cy.fixture(bankOwner).then(testdata =>{
      cy.get('#bank').should('have.value',testdata.master_case_bank_name)
      cy.get('#bank').should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static masterCaseAccNoOwnerDisplay(accNo){
    cy.fixture(accNo).then(testdata =>{
      cy.get('#accountnumber').should('have.value',testdata.master_case_account_detail)
      cy.get('#accountnumber').should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static masterCaseAccNoOwnerDisplay2(accNo){
    cy.fixture(accNo).then(testdata =>{
      cy.get('#accountnumber').should('have.value',testdata.master_case_account_detail2)
      cy.get('#accountnumber').should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static transactionRow1Display(transaction){
    cy.get('#ข้อมูลผู้เสียหาย').scrollTo('bottom')
    cy.wait(1000)
    cy.fixture(transaction).then(testdata =>{
      cy.contains(testdata.master_transaction_1_datetime)
      cy.contains(testdata.master_transaction_1_to_acc_no)
      cy.contains(testdata.master_transaction_1_to_acc_name)
      cy.contains(testdata.master_transaction_1_to_amount)
      cy.get('div[class="rs-table-scrollbar-handle"]').scrollTo('right', { ensureScrollable: false })
      cy.contains(testdata.master_transaction_1_ip)
    }) 
  }
  static transactionRow2Display(transaction){
    cy.get('#ข้อมูลผู้เสียหาย').scrollTo('bottom')
    cy.wait(1000)
    cy.fixture(transaction).then(testdata =>{
      cy.contains(testdata.master_transaction_2_datetime)
      cy.contains(testdata.master_transaction_2_to_acc_no)
      cy.contains(testdata.master_transaction_2_to_acc_name)
      cy.contains(testdata.master_transaction_2_to_amount)
      cy.get('div[class="rs-table-scrollbar-handle"]').scrollTo('right', { ensureScrollable: false })
      cy.contains(testdata.master_transaction_2_ip)
    }) 
  }
  static transactionRow3Display(transaction){
    cy.get('#ข้อมูลผู้เสียหาย').scrollTo('bottom')
    cy.wait(1000)
    cy.fixture(transaction).then(testdata =>{
      cy.contains(testdata.master_transaction_3_datetime)
      cy.contains(testdata.master_transaction_3_to_acc_no)
      cy.contains(testdata.master_transaction_3_to_acc_name)
      cy.contains(testdata.master_transaction_3_to_amount)
      cy.get('div[class="rs-table-scrollbar-handle"]').scrollTo('right', { ensureScrollable: false })
      cy.contains(testdata.master_transaction_3_ip)
    }) 
  }
  static closeViewDetail(){
    cy.contains('Close').click()
  }
  static masterAccountDetailDisplay(masteraccountDetail){
    cy.fixture(masteraccountDetail).then(testdata =>{
      cy.get('div[aria-rowindex="2"]').should('contain.text',testdata.master_case_name)
      cy.get('div[aria-rowindex="2"]').should('contain.text',testdata.master_case_surename)
      cy.get('div[aria-rowindex="2"]').should('contain.text',testdata.master_case_account_detail)
      cy.get('div[aria-rowindex="2"]').should('contain.text',testdata.master_case_account_owner)

    }) 
  }
  static TotalTransactionDisplay(total_trans){
    cy.fixture(total_trans).then(testdata =>{
      cy.get('div[aria-rowindex="2"]').should('contain.text',testdata.total_transaction_count)
    }) 
  }
  static TotalAmountDisplay(total_amount){
    cy.fixture(total_amount).then(testdata =>{
      cy.get('div[aria-rowindex="2"]').should('contain.text',testdata.total_amount)
    }) 
  }
  static masterToAccountDetailDisplay(mastertoaccountDetail){
    cy.fixture(mastertoaccountDetail).then(testdata =>{
      cy.get('div[aria-rowindex="3"]').should('contain.text',testdata.master_case_to_account_name)
      cy.get('div[aria-rowindex="3"]').should('contain.text',testdata.master_case_to_account_surename)
      cy.get('div[aria-rowindex="3"]').should('contain.text',testdata.master_case_to_account)
      cy.get('div[aria-rowindex="3"]').should('contain.text',testdata.master_case_to_account_owner)
      
    }) 
  }
  static masterToAccountDetailTxnDisplay(row,name,surename,accnum,accown){
      cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]',{timeout:5000}).should('contain.text',name)
      cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]',{timeout:5000}).should('contain.text',surename)
      cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="1"]',{timeout:5000}).should('contain.text',accnum)
      cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="2"]',{timeout:5000}).should('contain.text',accown)  
  }
  static transactionCountDisplay(transcount){
    cy.fixture(transcount).then(testdata =>{
      cy.get('div[aria-rowindex="3"]').should('contain.text',testdata.transaction_count)
    }) 
  }
  static transactionCountTxnDisplay(row,transcount){
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="3"]',{timeout:5000}).should('contain.text',transcount)
  }
  static toAmountDisplay(amount){
    cy.fixture(amount).then(testdata =>{
      cy.get('div[aria-rowindex="3"]').should('contain.text',testdata.amount)
    }) 
  }
  static toAmountTxnDisplay(row,amount){
    cy.get('div[aria-rowindex="'+row+'"]').find('div[aria-colindex="4"]',{timeout:5000}).should('contain.text',amount)
  }  
  static clickViewDetailFirst(){
      cy.get('button[aria-label="ดูรายละเอียด"]').first().click()
  }
  static clickViewDetailNextLevel(){
      cy.get('button[aria-label="ดูรายละเอียด"]').eq(1).click()
  }
  static clickViewDetailNextLevel2(){
    cy.get('button[aria-label="ดูรายละเอียด"]').eq(2).click()
}
static clickViewDetailNextLevel3(){
  cy.get('button[aria-label="ดูรายละเอียด"]').eq(3).click()
}
static clickViewDetailNextLevel4(){
  cy.get('button[aria-label="ดูรายละเอียด"]').eq(4).click()
}
static clickViewDetailNextLevel5(){
  cy.get('button[aria-label="ดูรายละเอียด"]').eq(5).click()
}
  static clickViewDetailWithRow(row){
    cy.get('button[aria-label="ดูรายละเอียด"]').eq(row).click()
}
  static nameTransfereeDisplay(name){
    cy.get('#ownerfirstname-label').should('contain.text',"ชื่อผู้ต้องสงสัย")
    cy.fixture(name).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_to_account_name+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_to_account_name+'"]').should('be.visible')
    }) 
  }
  static sureNameTransfereeDisplay(surename){
    cy.get('#ownerlastname-label').should('contain.text',"นามสกุลผู้ต้องสงสัย")
    cy.fixture(surename).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_to_account_surename+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_to_account_surename+'"]').should('be.visible')
    }) 
  }
  static typeTransfereeDisplay(type){
    cy.get('#accountholdertype-label').should('contain.text',"ประเภทบุคคลของเจ้าของบัญชีผู้ต้องสงสัย")
    cy.fixture(type).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_to_person_type+'"]').should('have.attr', 'readonly', 'readonly')
      cy.get('input[value="'+ testdata.master_case_to_person_type+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static promptPayTypeTransfereeDisplay(ppType){
    cy.get('#promptPayType-label').should('contain.text',"ประเภทของ PromptPay")
    cy.fixture(ppType).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_pp_type+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_pp_type+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static promptPayNoTransfereeDisplay(ppNo){
    cy.get('#promptPayId-label').should('contain.text',"ข้อมูลของ PromptPay")
    cy.fixture(ppNo).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_pp_id+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_pp_id+'"]',{timeout:5000}).should('be.visible')
    })   
  }
  static phoneNoTransfereeDisplay(phone){
    cy.get('#accountPhone-label').should('contain.text',"เบอร์โทรศัพท์ผู้ต้องสงสัย")
    cy.fixture(phone).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_to_phone_no+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_to_phone_no+'"]',{timeout:5000}).should('be.visible')
    }) 
  }
  static bankNameTransfereeDisplay(bankName){
    cy.contains('ข้อมูลบัญชีผู้ต้องสงสัย')
    cy.get('#bankname-label').should('contain.text',"ธนาคาร")
    cy.fixture(bankName).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_to_bank_name+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_to_bank_name+'"]',{timeout:5000}).should('be.visible')
    })    
  }
  static accountTransfereeDisplay(account){
    cy.get('#accountnumber-label').should('contain.text',"หมายเลขบัญชี")
    cy.fixture(account).then(testdata =>{
      cy.get('input[value="'+ testdata.master_case_to_account+'"]').should('have.attr', 'readonly', 'readonly')
      // cy.get('input[value="'+ testdata.master_case_to_account+'"]').should('be.visible')
    })    
  }
  static dateOfFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="bank-label"]').eq(0).should('contain.text',"วันและเวลาที่อายัด 72 hrs")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="bank"]').eq(0).should('contain.value',testdata.master_freeze72hrs_bank_date)
      cy.get('input[id="bank"]').eq(0).should('have.attr', 'readonly', 'readonly')
    })    
  }
  static dateOfUnFreezeAcc72hrDisplay(datetime){
    cy.get('label[id="accountnumber-label"]').eq(1).should('contain.text',"วันและเวลาที่ปลด 72 hrs")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(1).should('contain.value',testdata.master_unfreeze72hrs_bank_date)
      cy.get('input[id="accountnumber"]').eq(1).should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static dateOfReportPoliceDisplay(datetime){
    cy.get('label[id="accountnumber-label"]').eq(2).should('contain.text',"วันและเวลาที่แจ้งความ (ขยายจาก 72 ชม เป็น 7 วัน)")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(2).should('contain.value',testdata.master_date_report_police)
      cy.get('input[id="accountnumber"]').eq(2).should('have.attr', 'readonly', 'readonly')
    }) 

  }
  static dateOfFreezeAcc7dayDisplay(datetime){
    cy.get('label[id="bank-label"]').eq(1).should('contain.text',"วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="bank"]').eq(1).should('contain.value',testdata.master_freeze7day_date)
      cy.get('input[id="bank"]').eq(1).should('have.attr', 'readonly', 'readonly')
    })    
  }
  static dateOfUnFreezeAcc7dayDisplay(datetime)  {
    cy.get('label[id="accountnumber-label"]').eq(3).should('contain.text',"วันและเวลาที่ปลด 7 วัน")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(3).should('contain.value',testdata.master_unfreeze7day_date)
      cy.get('input[id="accountnumber"]').eq(3).should('have.attr', 'readonly', 'readonly')
    }) 
  } 
  static dateOfFreezeByPoliceDisplay(datetime){
    cy.get('label[id="accountnumber-label"]').eq(4).should('contain.text',"วันและเวลาที่อายัดจากตำรวจ")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(4).should('contain.value',testdata.master_freeze_by_police_date)
      cy.get('input[id="accountnumber"]').eq(4).should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static dateOfUnFreezeByPoliceDisplay(datetime){
    cy.get('label[id="bank-label"]').eq(2).should('contain.text',"วันและเวลาที่ปลดจากตำรวจ")
    cy.fixture(datetime).then(testdata =>{
      cy.get('input[id="bank"]').eq(2).should('contain.value',testdata.master_unfreeze_by_police_date)
      cy.get('input[id="bank"]').eq(2).should('have.attr', 'readonly', 'readonly')
    })
  }
  static typeOfFreezeByBankDisplay(type){
    cy.get('label[id="bank-label"]').eq(3).should('contain.text',"ประเภทของการอายัดจากธนาคาร")
    cy.fixture(type).then(testdata =>{
      cy.get('input[id="bank"]').eq(3).should('contain.value',testdata.master_type_freeze_by_bank)
      cy.get('input[id="bank"]').eq(3).should('have.attr', 'readonly', 'readonly')
    })
  }
  static amountFreezeByBankDisplay(amount){
    cy.get('label[id="accountnumber-label"]').eq(5).should('contain.text',"จำนวนเงินธุรกรรมที่ระงับ")
    cy.fixture(amount).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(5).should('contain.value',testdata.master_amount_freeze_by_bank)
      cy.get('input[id="accountnumber"]').eq(5).should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static balanceDisplay(amount){
    cy.get('label[id="accountnumber-label"]').eq(6).should('contain.text',"จำนวนเงินคงเหลือหลังอายัด")
    cy.fixture(amount).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(6).should('contain.value',testdata.master_balance)
      cy.get('input[id="accountnumber"]').eq(6).should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static typeOfFreezeByPoliceDisplay(type){
    cy.get('label[id="bank-label"]').eq(4).should('contain.text',"ประเภทของหมายอายัดจากตำรวจ")
    cy.fixture(type).then(testdata =>{
      cy.get('input[id="bank"]').eq(4).should('contain.value',testdata.master_type_freeze_by_police)
      cy.get('input[id="bank"]').eq(4).should('have.attr', 'readonly', 'readonly')
    })
  }
  static policeFreezeNumberDisplay(number){
    cy.get('label[id="accountnumber-label"]').eq(7).should('contain.text',"ใส่หมายอายัดจากตำรวจ")
    cy.fixture(number).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(7).should('contain.value',testdata.master_police_freeze_num)
      cy.get('input[id="accountnumber"]').eq(7).should('have.attr', 'readonly', 'readonly')
    }) 
  }
  static amountFreezeByPoliceDisplay(amount){
    cy.get('label[id="accountnumber-label"]').eq(8).should('contain.text',"จำนวนวงเงินที่อายัดจากตำรวจ")
    cy.fixture(amount).then(testdata =>{
      cy.get('input[id="accountnumber"]').eq(8).should('contain.value',testdata.master_police_freeze_amount)
      cy.get('input[id="accountnumber"]').eq(8).should('have.attr', 'readonly', 'readonly')
    })
  }
  static policeUnFreezeNumberDisplay(number){
    cy.get('label[id="bank-label"]').eq(5).should('contain.text',"ใส่หมายปลดอายัดจากตำรวจ")
    cy.fixture(number).then(testdata =>{
      cy.get('input[id="bank"]').eq(5).should('contain.value',testdata.master_unpolice_freeze_num)
      cy.get('input[id="bank"]').eq(5).should('have.attr', 'readonly', 'readonly')
    })
  }

// 

static nameTransfereeTxnDisplay(name){
  cy.get('#ownerfirstname-label').should('contain.text',"ชื่อผู้ต้องสงสัย")
    cy.get('input[value="'+ name+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ name+'"]',{timeout:5000}).should('be.visible')
}
static sureNameTransfereeTxnDisplay(surename){
  cy.get('#ownerlastname-label').should('contain.text',"นามสกุลผู้ต้องสงสัย")
    cy.get('input[value="'+ surename+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ surename+'"]',{timeout:5000}).should('be.visible')
}
static typeTransfereeTxnDisplay(type){
  cy.get('#accountholdertype-label').should('contain.text',"ประเภทบุคคลของเจ้าของบัญชีผู้ต้องสงสัย")
    cy.get('input[value="'+ type+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ type+'"]',{timeout:5000}).should('be.visible')
}
static promptPayTypeTransfereeTxnDisplay(ppType){
  cy.get('#promptPayType-label').should('contain.text',"ประเภทของ PromptPay")
    cy.get('input[value="'+ ppType+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ ppType+'"]',{timeout:5000}).should('be.visible')
}
static promptPayNoTransfereeTxnDisplay(ppNo){
  cy.get('#promptPayId-label').should('contain.text',"ข้อมูลของ PromptPay")
    cy.get('input[value="'+ ppNo+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ ppNo+'"]',{timeout:5000}).should('be.visible')
}
static phoneNoTransfereeTxnDisplay(phone){
  cy.get('#accountPhone-label').should('contain.text',"เบอร์โทรศัพท์ผู้ต้องสงสัย")
    cy.get('input[value="'+ phone+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ phone+'"]',{timeout:5000}).should('be.visible')
}
static bankNameTransfereeTxnDisplay(bankName){
  cy.contains('ข้อมูลบัญชีผู้ต้องสงสัย')
  cy.get('#bankname-label').should('contain.text',"ธนาคาร")
    cy.get('input[value="'+ bankName+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ bankName+'"]',{timeout:5000}).should('be.visible')
}
static accountTransfereeTxnDisplay(account){
  cy.get('#accountnumber-label').should('contain.text',"หมายเลขบัญชี")
    cy.get('input[value="'+ account+'"]').should('have.attr', 'readonly', 'readonly')
    // cy.get('input[value="'+ account+'"]',{timeout:5000}).should('be.visible')
}
static dateOfFreezeAcc72hrTxnDisplay(datetime){
  cy.get('label[id="bank-label"]').eq(0).should('contain.text',"วันและเวลาที่อายัด 72 hrs")
   cy.get('input[id="bank"]').eq(0).should('contain.value',datetime)
    cy.get('input[id="bank"]').eq(0).should('have.attr', 'readonly', 'readonly')
}
static dateOfUnFreezeAcc72hrTxnDisplay(datetime){
  cy.get('label[id="accountnumber-label"]').eq(1).should('contain.text',"วันและเวลาที่ปลด 72 hrs")
    cy.get('input[id="accountnumber"]').eq(1).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]').eq(1).should('have.attr', 'readonly', 'readonly')
}
static dateOfReportPoliceTxnDisplay(datetime){
  cy.get('label[id="accountnumber-label"]').eq(2).should('contain.text',"วันและเวลาที่แจ้งความ (ขยายจาก 72 ชม เป็น 7 วัน)")
    cy.get('input[id="accountnumber"]').eq(2).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]').eq(2).should('have.attr', 'readonly', 'readonly')
}
static dateOfFreezeAcc7dayTxnDisplay(datetime){
  cy.get('label[id="bank-label"]').eq(1).should('contain.text',"วันและเวลาที่ Fraud พิจารณาอายัดตามมาตรา 6 (7 วัน)")
    cy.get('input[id="bank"]').eq(1).should('contain.value',datetime)
    cy.get('input[id="bank"]').eq(1).should('have.attr', 'readonly', 'readonly')
}
static dateOfUnFreezeAcc7dayTxnDisplay(datetime)  {
  cy.get('label[id="accountnumber-label"]').eq(3).should('contain.text',"วันและเวลาที่ปลด 7 วัน")
    cy.get('input[id="accountnumber"]').eq(3).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]').eq(3).should('have.attr', 'readonly', 'readonly')
} 
static dateOfFreezeByPoliceTxnDisplay(datetime){
  cy.get('label[id="accountnumber-label"]').eq(4).should('contain.text',"วันและเวลาที่อายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]').eq(4).should('contain.value',datetime)
    cy.get('input[id="accountnumber"]').eq(4).should('have.attr', 'readonly', 'readonly')
}
static dateOfUnFreezeByPoliceTxnDisplay(datetime){
  cy.get('label[id="bank-label"]').eq(2).should('contain.text',"วันและเวลาที่ปลดจากตำรวจ")
    cy.get('input[id="bank"]').eq(2).should('contain.value',datetime)
    cy.get('input[id="bank"]').eq(2).should('have.attr', 'readonly', 'readonly')
}
static typeOfFreezeByBankTxnDisplay(type){
  cy.get('label[id="bank-label"]').eq(3).should('contain.text',"ประเภทของการอายัดจากธนาคาร")
    cy.get('input[id="bank"]').eq(3).should('contain.value',type)
    cy.get('input[id="bank"]').eq(3).should('have.attr', 'readonly', 'readonly')
}
static amountFreezeByBankTxnDisplay(amount){
  cy.get('label[id="accountnumber-label"]').eq(5).should('contain.text',"จำนวนเงินธุรกรรมที่ระงับ")
    cy.get('input[id="accountnumber"]').eq(5).should('contain.value',amount)
    cy.get('input[id="accountnumber"]').eq(5).should('have.attr', 'readonly', 'readonly')
}
static balanceTxnDisplay(amount){
  cy.get('label[id="accountnumber-label"]').eq(6).should('contain.text',"จำนวนเงินคงเหลือหลังอายัด")
    cy.get('input[id="accountnumber"]').eq(6).should('contain.value',amount)
    cy.get('input[id="accountnumber"]').eq(6).should('have.attr', 'readonly', 'readonly')
}
static typeOfFreezeByPoliceTxnDisplay(type){
  cy.get('label[id="bank-label"]').eq(4).should('contain.text',"ประเภทของหมายอายัดจากตำรวจ")
    cy.get('input[id="bank"]').eq(4).should('contain.value',type)
    cy.get('input[id="bank"]').eq(4).should('have.attr', 'readonly', 'readonly')
}
static policeFreezeNumberTxnDisplay(number){
  cy.get('label[id="accountnumber-label"]').eq(7).should('contain.text',"ใส่หมายอายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]').eq(7).should('contain.value',number)
    cy.get('input[id="accountnumber"]').eq(7).should('have.attr', 'readonly', 'readonly')
}
static amountFreezeByPoliceTxnDisplay(amount){
  cy.get('label[id="accountnumber-label"]').eq(8).should('contain.text',"จำนวนวงเงินที่อายัดจากตำรวจ")
    cy.get('input[id="accountnumber"]').eq(8).should('contain.value',amount)
    cy.get('input[id="accountnumber"]').eq(8).should('have.attr', 'readonly', 'readonly')
}
static policeUnFreezeNumberTxnDisplay(number){
  cy.get('label[id="bank-label"]').eq(5).should('contain.text',"ใส่หมายปลดอายัดจากตำรวจ")
    cy.get('input[id="bank"]').eq(5).should('contain.value',number)
    cy.get('input[id="bank"]').eq(5).should('have.attr', 'readonly', 'readonly')
}
// 
    static clickConfirmMasterCase(){
    cy.get('#confirm').click()
  }
  static clickFinalConfirmMasterCase() {
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
  static searchResultwithCaseId(bankcaseid){
    const cur_date = new Date();
    const cur_year = "2566"
    const cur_month = ((cur_date.getMonth()+1) < 10 ? '0' : '') + (cur_date.getMonth() +1);
    const cur_day = (cur_date.getDate() < 10 ? '0' : '') + cur_date.getDate();
    const cur_hours = ((cur_date.getHours() ) < 10 ? '0' : '') + cur_date.getHours();
    const cur_minutes = ((cur_date.getMinutes() ) < 10 ? '0' : '') + cur_date.getMinutes();
    const process_date = cur_year + "-" + cur_month +"-"+cur_day+" "+cur_hours+":"+cur_minutes+":";
    cy.fixture(bankcaseid).then(testdata =>{
      cy.get('#caseId_Bank').should('have.value',testdata.case_id)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(1)').eq(0).should('have.text',testdata.case_id)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(2)').should('have.text',"1")
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(3)').should('have.text',testdata.master_case_name+" "+testdata.master_case_surename)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(4)').should('have.text',testdata.master_case_account_owner)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(5)').should('have.text',testdata.master_case_account_detail)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(6)').should('have.text',testdata.master_case_to_account_name+" "+testdata.master_case_to_account_surename)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(7)').should('have.text',testdata.master_case_to_account_owner)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(8)').should('have.text',testdata.master_case_to_account)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(9)').should('have.text',testdata.Start_transection)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(10)').should('have.text',testdata.End_transection)
      cy.get('div[class="MuiTableContainer-root css-11b7ut5"]').scrollTo('right', { ensureScrollable: false })
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(11)').should('have.text',testdata.amount)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(12)').contains('25')
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(13)').should('have.text',testdata.police_id)
      cy.get('table[class="MuiTable-root css-14xemkg"] > tbody > tr > td:nth-child(14)').should('have.text',testdata.police_datetime)
      cy.get('button[aria-label="เพิ่มเคส"]').should('have.attr','disabled')
    })
  }
  static clickAddMasterCase(){
      cy.contains('เพิ่มข้อมูล').click()
  }
  static uploadFileMasterCase(fileName){
      cy.wait(1000)
      let uploadFile = 'cypress/fixtures/negative_create_master/'+fileName+'.xlsx'
      cy.get('input[type=file]').selectFile(uploadFile,{force: true})
      cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
      cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
      cy.get('#search').click()
  }
  static uploadFileMasterCasePositive(fileName){
    cy.wait(1000)
    let uploadFile = 'cypress/fixtures/positive'+fileName+'.xlsx'
    cy.get('input[type=file]').selectFile(uploadFile,{force: true})
    cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
    cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
    cy.get('#search').click()
}

static uploadFileMasterCasePositiveBrown(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/downloads'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('#search').click()
}

static uploadFileMasterCasePositiveBrownmale(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Brown_mule_positive'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(/\.xlsx$/)
  })
  cy.get('#search').click()
}
static uploadFileMasterCasePositiveExchangeAccount(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/ExchangeAccount_BBB_NEW/'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(/\.xlsx$/)
  })
  cy.get('#search').click()
}
static uploadFileMasterCasePositiveExchangeAccount_Negative(fileName,fileexten){
  cy.wait(1000)
  // let uploadFile = 'cypress/fixtures/ExchangeAccount_BBB_NEW/'+fileName+'.${fileexten}'
  let uploadFile = `cypress/fixtures/ExchangeAccount_BBB_NEW/${fileName}.${fileexten}`;
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
  })
  cy.get('#search').click()
}

static uploadFileMasterCaseNegativeBrown(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Brown_mule_Negative'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('#search').click()
}

static uploadFileMasterCaseNegativeBrownpdf(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Brown_mule_Negative'+fileName+'.pdf'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('#search').click()
}
static uploadfilenegativeexchangeacctcancelpdf(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Negative'+fileName+'.pdf'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('#search').click()
}

static uploadfilenegativeexchangeacctcancel(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Crypto_Mule/Exchange_acct_cancel_Negative'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('#search').click()
}
static uploadfilenegativedarkbrownmuleregistry(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('#search').click()
}
static uploadfilenegativeexchangeacctcancelcaseupdatedaylatest(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/Crypto_Mule/Exchange_acct_cancel_Negative/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFileName;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFileName = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("📂 New filename:", updatedFileName);
  const newFilePath = `cypress/fixtures/Crypto_Mule/Exchange_acct_cancel_Negative_updatedaylatest/${updatedFileName}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('#search').click();
}
static uploadfilepositiveexchangeacctcancelcaseupdatedaylatest(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/Crypto_Mule/Exchange_acct_cancel_Positive/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFileName;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFileName = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("📂 New filename:", updatedFileName);
  const newFilePath = `cypress/fixtures/Crypto_Mule/Exchange_acct_cancel_Negative_updatedaylatest/${updatedFileName}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(/\.xlsx$/)
  })
  cy.get('#search').click();
}

static uploadfilepositiveexchangeacctcancel(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Positive'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(/\.xlsx$/)
  })
  cy.get('#search').click()
}

static uploadfilepositiveexchangeacctadd(fileName){
  cy.wait(1000)
  let uploadFile = 'cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Positive'+fileName+'.xlsx'
  cy.get('input[type=file]').selectFile(uploadFile,{force: true})
  cy.get('label[role="button"]').should('contain.text','ปรับปรุงแก้ไข')
  cy.get('label[role="button"]').should('contain.text','ลบไฟล์')
  cy.get('input[type="file"]').then(($input) => {
    const fileName = $input[0].files[0].name
    expect(fileName).to.match(/\.xlsx$/)
  })
  cy.get('#search').click()
}
  static displayErrorMessage(errorMessage){
      // cy.wait(5000)
      cy.get('div[class="MuiTypography-root MuiTypography-body1 css-1ugr89f"]')
      cy.contains(errorMessage, { timeout: 30000 })
  }

  static goToAddMasterCase(){
    cy.visit('https://portaldev1.nitmx.co.th/dev-miniport/cfr-dev/addcase')
  }

  static goToAddMasterCaseLocal(){
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev-v2-local/addcase')
    
  }
  static ConfirmBrow(){
    cy.get(CFBrown).click();
    cy.contains("ยืนยันการเพิ่มข้อมูล (ที่นำเข้าสำเร็จ)");
    cy.get('button[class*="MuiButton-textPrimary"]').click();
  }

  static displayLableAndData(scenario1){
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
  static checkTotalDataSuccess(scenario1){
    cy.fixture(scenario1).then(scenario1 =>{
      // cy.contains("ข้อมูลม้าน้ำตาลทั้งหมดในไฟล์")
      cy.get(ChecktotolRow).eq(0).should('have.text', (scenario1.TotalTrans));
      cy.contains("นำเข้าสำเร็จ")
      cy.get(ChecktotolRow).eq(1).contains(scenario1.TransSuccess);
      cy.contains("นำเข้าไม่สำเร็จ")
      cy.get(ChecktotolRow).eq(2).should('have.text',  (scenario1.TransFail));
      // cy.contains("No data found")  
    }) 
  }
  static displayDataExchangeaccountregistry(scenario1){
    cy.fixture(scenario1).then(scenario1 =>{
      // cy.contains()
      // cy.contains("ผลการนำเข้าข้อมูลม้าน้ำตาล",{timeout: 30000})
      // cy.contains("ข้อมูลม้าน้ำตาลทั้งหมดในไฟล์:")
      cy.contains("นำเข้าสำเร็จ:")
      cy.contains("นำเข้าไม่สำเร็จ:")
      cy.get('div[aria-rowindex="1"]')
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

 static IlookforbuttonBrownMuleRegistry(){
  cy.contains("Brown Mule Registry").should('be.visible')

 }
 static IlookforbuttonExchangeAccountRegistry(){
  cy.contains("Exchange Account Registry").should('be.visible')
 }
 static IlookforbuttonDarkBrownMuleRegistry(){
  cy.contains("Dark Brown Mule Registry").should('be.visible')
  
 }
 static IDontSeeforbuttonExchangeAccountRegistry(){
  cy.contains("Exchange Account Registry").should('not.exist');

 }
 static IshouldseebuttonBrownMuleRegistryonthepage(){
  cy.get('body').contains('Brown Mule Registry').should('not.exist')
 }
 static IshouldseebuttonExchangeAccountRegistryonthepage(){
  cy.get('body').contains('Exchange Account Registry').should('not.exist')
 }
 static IshouldseeMenuDarkBrownMuleRegistryonthepage(){
  cy.get('body').contains('Dark Brown Mule Registry').should('not.exist')
 }

 static uploadfiledarkbrownmuleregistrycancelcaseupdatedaylatest(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Negative/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFileName;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFileName = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("📂 New filename:", updatedFileName);
  const newFilePath = `cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Updatedaylatest/${updatedFileName}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('#search').click();
}
static uploadfiledarkbrownmuleregistrycancelcasepositiveupdatedaylatest(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFileName;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFileName = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("📂 New filename:", updatedFileName);
  const newFilePath = `cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Updatedaylatest/${updatedFileName}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('#search').click();
}

static uploadfiledarkbrownmuleregistrycaseaddpositiveupdatedaylatest(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Positive/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFile;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFile = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFile = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFile", updatedFile);
  cy.log("📂 New filename:", updatedFile);
  const newFilePath = `cypress/fixtures/DarkBrownMuleRegistry/Dark_Brown_Mule_Cancel_Updatedaylatest/${updatedFile}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('#search').click();
}

static uploadfileexchangeacctcancelcaseaddpositiveupdatedaylatest(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Positive/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFile;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFile = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFile = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFile", updatedFile);
  cy.log("📂 New filename:", updatedFile);
  const newFilePath = `cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Negative_updatedaylatest/${updatedFile}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('#search').click();
}

static uploadfileexchangeacctcancelcasecancelpositiveupdatedaylatest_cancel(fileName, fileExtension = "xlsx") {
  cy.wait(1000);
  const oldFilePath = `cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Positive/${fileName}.${fileExtension}`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543; // คำนวณ พ.ศ.
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน
  const day = String(currentDate.getDate()).padStart(2, '0'); // วัน
  let updatedFileName;
  if (/\d{4}-\d{2}-\d{2}/.test(fileName)) {
    updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  } else {
    updatedFileName = `${fileName}_${year}-${month}-${day}`;
  }
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("📂 New filename:", updatedFileName);
  const newFilePath = `cypress/fixtures/Crypto_mule/Exchange_acct_cancel_Negative_updatedaylatest/${updatedFileName}.${fileExtension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.get('input[type="file"]').selectFile(newFilePath, { force: true });
  cy.get('label[role="button"]').should('contain.text', 'ปรับปรุงแก้ไข');
  cy.get('label[role="button"]').should('contain.text', 'ลบไฟล์');
  cy.get('#search').click();
}
static  Checkfilename(filename){
    const updatedFileName = filename
    cy.log('have name ?',updatedFileName)
    const query = QueryPage.Query_ExchangeAccount_Upload_INFO(updatedFileName);
    cy.wait(2000)
    return cy.task('queryOracleDatabase', { query }).then((result) => {
    cy.log(result)
    if (result.length > 0) {
  Databasequery.getIDuploadINFO_V2(updatedFileName).then(() => {
    return Databasequery.DeletedDB_upload_INFO();
  }).then(() => {
    return Databasequery.getIDuploadDetail();
    // return Databasequery.DeletedDB_upload_Detail();
  }).then(() => {
    return Databasequery.DeletedDB_upload_Detail();
  }).then(() => {
    return Databasequery.DeletedDB_upload_REPO_V1();
  })
    } else {
      cy.log("No row found for filename: " + updatedFileName);
    }
  })
}


// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// new template for master case
  
  static DownloadMastercase(){
    cy.contains('ดาวน์โหลดเทมเพลตสำหรับการนำเข้าข้อมูล').click()
    let path = 'cypress/downloads/TemplateAddNewCase_V16.2_MBs.xlsx';
    cy.readFile(path, { timeout: 10000 }).should('exist');
    cy.wrap(path).as('filedownloadedPath');
  }

  static copyfileNametest(fileName){
  const oldFilePath = `cypress/fixtures/positive/new_template/TemplateAddNewCase_V16.2_MBs.xlsx`;
  const newFilePath = `cypress/fixtures/positive/${fileName}_MasterCase_V16.2_MBs.xlsx`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
  cy.wrap(newFilePath).as('filename')
  }
  static copyfileName(fileName){
  const oldFilePath = `cypress/downloads/TemplateAddNewCase_V16.2_MBs.xlsx`;
  const newFilePath = `cypress/fixtures/positive/${fileName}_MasterCase_V16.2_MBs.xlsx`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
    cy.task('deleteFile', oldFilePath);
  });
  cy.wrap(newFilePath).as('filename')
  }
  static PreparaBankcaseID(){
    const currentDate = new Date();
    const year = currentDate.getFullYear() + 543;
    const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
    const day = String(currentDate.getDate()).padStart(2, '0');
    const bankcaseid = `${year}${month}${day}BBL0${Math.floor(Math.random() * 10000).toString().padStart(4, '0')}`;
  cy.log('Updated filename: ' + bankcaseid);
  return bankcaseid;  
}
static PreparaData_Financial(id,short_name) {
    const query = QueryPage.Query_Prepara_Bank_And_Non_Bank_account_category(id,short_name) 
    cy.task('queryOracleDatabase', { query }).then((result) => {
      cy.log(JSON.stringify(result))
      Cypress.env('nonBankData', result);
    })
}
static PreparaData_BankcaseID() {
    const query = QueryPage.Query_Prepara_BankcaseID() 
    cy.task('queryOracleDatabase', { query }).then((result) => {
      cy.log(JSON.stringify(result))
      Cypress.env('QueryBankcaseID', result);
    })
}
static PreparaData_BankcaseID_Subcase() {
    const query = QueryPage.Query_Prepara_BankcaseID_Subcase() 
    cy.task('queryOracleDatabase', { query }).then((result) => {
      cy.log(JSON.stringify(result))
      Cypress.env('QueryBankcaseID', result);
    })
}
static QueryCheck_TAX_ID(b) {
    const query = QueryPage.Query_Prepara_TAX_ID(b) 
    cy.task('queryOracleDatabase', { query }).then((result) => {
      cy.log(JSON.stringify(result))
      Cypress.env('TAX_ID', result);
    })
}
  static PreparaData(){
    const bankcaseID = this.PreparaBankcaseID();
    const non_bank = Cypress.env('nonBankData');

    return cy.generateThaiID().then((id) => {
    return {
    cell: ['A3', 'A9', 'B9', 'C9', 'D9', 'E9', 'G9', 'H9', 'I9', 'J9', 'K9', 'L9', 'M9', 'N9',
    'B14', 'C14', 'D14', 'E14', 'F14', 'G14', 'H14', 'I14', 'J14', 'K14', 'L14', 'M14', 'R14', 'S14', 'T14', 'U14',
    'AJ14', 'AK14', 'AL14', 'AM14', 'AN14', 'AO14', 'AP14', 'AQ14','AR14'],
    value: [bankcaseID, id, 'บุคคลธรรมดา','มาแก้','ได้ไหมล่ะ','ข่มขู่ทางโทรศัพท์ให้เกิดความกลัวแล้วหลอกให้โอนเงิน','4405249967','ธนาคารกรุงเทพ จำกัด (มหาชน)','002','0907011722','max mana','0907011721','max@gmail.com','บุตร'
    ,'มาแก้','ได้ไหมล่ะ','4405249967','ธนาคารกรุงเทพ จำกัด (มหาชน)','002','111','2749233250199','บุคคลธรรมดา','0907011723','สุทธิพงษ์','นันทวัฒน์','ไม่มี','2568-06-01','10:00:00','ttt','10.00'
    ,'1433692090',non_bank[0][2],non_bank[0][0],'723847744913400','1895707264052','112333','222231232232','ถอนเงินสด ATM','23asdawdawd'],
    };
  });
  }
static PreparaData_setQuery(dataset) {
  const bankcaseID = this.PreparaBankcaseID();
  Cypress.env('bankcaseID', bankcaseID);
  const non_bank = Cypress.env('nonBankData');
  return cy.generateThaiID().then((id) => {
    let value = {};

    if (dataset === 'full') {
      value = {
        bankcaseID,
        id,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    } else if (dataset === 'fix') {
      value = {
        bankcaseID,
        id,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    } else if (dataset === 'TC001_001') {
      const bankcaseIDNow = Cypress.env('QueryBankcaseID')
      value = {
        bankcaseID: bankcaseIDNow[0],
        id,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    } else {
      console.log('Unknown dataset: ' + dataset);
      value = {
        bankcaseID,
        id,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    }

    return { value };
  });
}
static PreparaData_setQuery_subcase(dataset) {
  const bankcaseID = Cypress.env('bankcaseID')
  cy.log('BankcaseID from mastercase: ' + bankcaseID);
  cy.get('@AllExcelData').then((testdata) => {
    cy.log('Data from mastercase: ' + JSON.stringify(testdata));
    const non_bank = Cypress.env('nonBankData');
    return cy.generateThaiID().then((id) => {
      let value = {};
      if (dataset === 'full') {
        value = {
        bankcaseID,
        id,
        personalID: testdata.H14,
        personalType: testdata.I14,
        name: testdata.K14,
        lname: testdata.L14,
        AccountNumber: testdata.O14,
        AccountNumber_non_bank: testdata.AJ14,
        bankname: testdata.P14,
        bankcode: testdata.Q14,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    } else if (dataset === 'full_old') {
      value = {
        bankcaseID,
        id,
        personalID: testdata.H14,
        personalType: testdata.I14,
        name: testdata.K14,
        lname: testdata.L14,
        AccountNumber: testdata.O14,
        bankname: testdata.P14,
        bankcode: testdata.Q14,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    } else if (dataset === 'TC002_006') {
      const bankcaseIDNow = Cypress.env('QueryBankcaseID')
      value = {
        bankcaseIDNow: bankcaseIDNow[0],
        id,
        personalID: testdata.H14,
        personalType: testdata.I14,
        name: testdata.K14,
        lname: testdata.L14,
        AccountNumber: testdata.O14,
        bankname: testdata.P14,
        bankcode: testdata.Q14,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    } else {
      console.log('Unknown dataset: ' + dataset);
      value = {
        bankcaseID,
        id,
        personalID: testdata.H14,
        personalType: testdata.I14,
        name: testdata.K14,
        lname: testdata.L14,
        AccountNumber: testdata.O14,
        AccountNumber_non_bank: testdata.AJ14,
        bankname: testdata.P14,
        bankcode: testdata.Q14,
        non_bank_2: non_bank[0][2],
        non_bank_0: non_bank[0][0],
      };
    }
    
    return { value };
  });
});
}
  static DisplayValue_DataM1(testdata){
        cy.get('#caseid').should('have.attr', 'readonly', 'readonly')
        cy.get('#caseid').should('have.value',testdata.A3)
        cy.get('input[value="'+ testdata.E3 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.C9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.E9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.C9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.B9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.D9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.A9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.J9 +'"]').should('have.attr', 'readonly', 'readonly')
        cy.get('input[value="'+ testdata.E9 +'"]').should('have.attr', 'readonly', 'readonly')
  }
  static DisplayValue_Transition(testdata){
      const non_bank  = Cypress.env('nonBankData');
        cy.get('div.MuiBox-root.css-0').eq(1).within(() => {
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(0).invoke('text').should('include', testdata.C9).and('include', testdata.D9).and('include', testdata.G9);
        cy.fixture('bankname.json').then(shortbank => {
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(1).should('contain.text', shortbank[testdata.H9])
        })          
        // cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(2).should('contain.text', '1')
        cy.get('button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeMedium.css-15mydm5').eq(0).should('have.attr', 'type', 'button')
        // transition 2
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(3).should('contain.text', non_bank[0][1])
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(4).should('contain.text', '1')
        cy.get('p.MuiTypography-root.MuiTypography-body1.css-1ugr89f').eq(5).should('contain.text', '10.00')
        cy.get('button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeMedium.css-15mydm5').eq(1).should('have.attr', 'type', 'button')
        })
  }
  static DisplayValue(data){
      cy.get(`@${data}`).then(testdata =>{
        CreateMasterCasePage.DisplayValue_DataM1(testdata)
        CreateMasterCasePage.DisplayValue_Transition(testdata)
    })  
  }
  static DisplayValue_IN_Transition(row,scenario,data,condition){
      cy.get(`@${data}`).then(testdata =>{
        if(condition === 'ข้อมูลผู้เสียหาย'){
          CreateMasterCasePage.clickIconTransition(0)
          CreateMasterCasePage.Value_IN_Transition_M1_non_bank(testdata)
          CreateMasterCasePage.closeViewDetail()
        }else if(condition === 'ข้อมูลผู้ต้องสงสัย'){
          CreateMasterCasePage.clickIconTransition(1)
          CreateMasterCasePage.Value_IN_Transition_M2_non_bank(testdata)
          CreateMasterCasePage.closeViewDetail()
          
        }else{
        throw new Error('Unknown data type: ' + condition)
        }
        })  
  }

  static DisplayValue_IN_Transition_for_bank(row,scenario,data,condition){
      cy.get(`@${data}`).then(testdata =>{
        if(condition === 'ข้อมูลผู้เสียหาย'){
          CreateMasterCasePage.clickIconTransition(0)
          CreateMasterCasePage.Value_IN_Transition_M1_bank(testdata)
          CreateMasterCasePage.closeViewDetail()
        }else if(condition === 'ข้อมูลผู้ต้องสงสัย'){
          CreateMasterCasePage.clickIconTransition(1)
          CreateMasterCasePage.Value_IN_Transition_M2_bank(testdata)
          CreateMasterCasePage.closeViewDetail()
          
        }else{
        throw new Error('Unknown data type: ' + condition)
        }
        })  
  }
  static Value_IN_Transition_M1_non_bank(testdata){
      const non_bank  = Cypress.env('nonBankData');
    cy.get('#ข้อมูลผู้เสียหาย').within(() => {
          cy.get('#caseid').should('have.value', testdata.A3).and('have.attr', 'readonly', 'readonly')
          cy.get('#detectivetype').should('have.value', testdata.E3).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerfirstname').should('have.value', testdata.C9).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerlastname').should('have.value', testdata.D9).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountholdertype').should('have.value', testdata.B9).and('have.attr', 'readonly', 'readonly')
          cy.get('input#accountnumber.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi')
          .eq(1).should('have.value', '').and('have.attr', 'readonly', 'readonly')
          cy.get('#owneridcard').should('have.value', testdata.A9).and('have.attr', 'readonly', 'readonly')
          cy.get('#victimPhoneNumber').should('have.value', testdata.J9).and('have.attr', 'readonly', 'readonly')
          cy.get('input[value="'+ testdata.E9 +'"]').should('have.attr', 'readonly', 'readonly')
          cy.get('#contactFullName').should('have.value', testdata.K9).and('have.attr', 'readonly', 'readonly')
          cy.get('#contactPhone').should('have.value', testdata.L9).and('have.attr', 'readonly', 'readonly')
          cy.get('#contactRelationShip').should('have.value', testdata.N9).and('have.attr', 'readonly', 'readonly')
          cy.get('#contactEmail').should('have.value', testdata.M9).and('have.attr', 'readonly', 'readonly')
          cy.fixture('bankname.json').then(shortbank => { 
            cy.get('input[value="'+ shortbank[testdata.H9] +'"]').should('have.attr', 'readonly', 'readonly')
          })
          cy.get('#accountnumber').should('have.value', testdata.G9).and('have.attr', 'readonly', 'readonly')
          // รายละเอียดการไล่เส้นเงิน **มีขยับ filed ไม่บอก ว่างๆมาแก้
    //       cy.get('div.rs-table-cell-content').eq(13).invoke('text').should('include', testdata.R14).and('include', testdata.S14)
    //       cy.get('div.rs-table-cell-content').eq(14).invoke('text').then((text) => {
    //       cy.log(testdata.O14)
    //       expect(text.trim()).to.be.oneOf([testdata.AJ14, testdata.O14]);
    //       });          
    //       cy.get('div.rs-table-cell-content').eq(15).should('have.text', non_bank[0][1])
    //       cy.get('div.rs-table-cell-content').eq(16).invoke('text').should('include', testdata.K14).and('include', testdata.L14)
    //       cy.get('div.rs-table-cell-content').eq(17).should('have.text', testdata.AN14)
    //       cy.get('div.rs-table-cell-content').eq(18).should('have.text', testdata.AO14)
    //       cy.get('div.rs-table-cell-content').eq(19).should('have.text', testdata.AP14)
    //       cy.get('div.rs-table-cell-content').eq(20).should('have.text', testdata.AQ14)
    //       cy.get('div.rs-table-cell-content').eq(21).should('have.text', testdata.U14)
    //       cy.get('div.rs-table-cell-content').eq(22).should('have.text', testdata.T14)
    //       cy.get('div.rs-table-cell-content').eq(23).should('have.text', testdata.G14)
    })
  }
  static Value_IN_Transition_M1_bank(testdata){
      const non_bank  = Cypress.env('nonBankData');
    cy.get('#ข้อมูลผู้เสียหาย').within(() => {
          cy.get('#caseid').should('have.value', testdata.A3).and('have.attr', 'readonly', 'readonly')
          cy.get('#detectivetype').should('have.value', testdata.E3).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerfirstname').should('have.value', testdata.C9).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerlastname').should('have.value', testdata.D9).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountholdertype').should('have.value', testdata.B9).and('have.attr', 'readonly', 'readonly')
          cy.get('#owneridcard').should('have.value', testdata.A9).and('have.attr', 'readonly', 'readonly')
          cy.get('#victimPhoneNumber').should('have.value', testdata.J9).and('have.attr', 'readonly', 'readonly')
          cy.get('input[value="'+ testdata.E9 +'"]').should('have.attr', 'readonly', 'readonly')
          cy.get('#contactFullName').should('have.value', testdata.K9).and('have.attr', 'readonly', 'readonly')
          cy.get('#contactPhone').should('have.value', testdata.L9).and('have.attr', 'readonly', 'readonly')
          cy.get('#contactRelationShip').should('have.value', testdata.N9).and('have.attr', 'readonly', 'readonly')
          cy.get('#contactEmail').should('have.value', testdata.M9).and('have.attr', 'readonly', 'readonly')
          cy.fixture('bankname.json').then(shortbank => { 
            cy.get('input[value="'+ shortbank[testdata.H9] +'"]').should('have.attr', 'readonly', 'readonly')
          })
          cy.get('input#accountnumber.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi')
          .eq(1).should('have.value', '').and('have.attr', 'readonly', 'readonly')
          cy.get('#accountnumber').should('have.value', testdata.G9).and('have.attr', 'readonly', 'readonly')
          // รายละเอียดการไล่เส้นเงิน **มีขยับ filed ไม่บอก ว่างๆมาแก้
          // cy.get('div.rs-table-cell-content').eq(12).invoke('text').should('include', testdata.R14).and('include', testdata.S14)
          // cy.get('div.rs-table-cell-content').eq(13).invoke('text').then((text) => {
          // cy.log(testdata.O14)
          // expect(text.trim()).to.be.oneOf([testdata.AJ14, testdata.O14]);
          // });          
          // cy.get('div.rs-table-cell-content').eq(14).should('have.text', non_bank[0][1])
          // cy.get('div.rs-table-cell-content').eq(15).invoke('text').should('include', testdata.K14).and('include', testdata.L14)
          // cy.get('div.rs-table-cell-content').eq(15).should('have.text', testdata.AM14)
          // cy.get('div.rs-table-cell-content').eq(16).should('have.text', testdata.AN14)
          // cy.get('div.rs-table-cell-content').eq(17).should('have.text', testdata.AO14)
          // cy.get('div.rs-table-cell-content').eq(18).should('have.text', testdata.AP14)
          // cy.get('div.rs-table-cell-content').eq(19).should('have.text', testdata.U14)
          // cy.get('div.rs-table-cell-content').eq(20).should('have.text', testdata.T14)
          // cy.get('div.rs-table-cell-content').eq(21).should('have.text', testdata.G14)
    })
  }
  static Value_IN_Transition_M2_non_bank(testdata){
    const non_bank = Cypress.env('nonBankData');
    cy.get('#ข้อมูลผู้ต้องสงสัย').eq(1).within(() => {
          cy.get('#ownerfirstname').should('have.value', testdata.K14).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerlastname').should('have.value', testdata.L14).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountholdertype').should('have.value', testdata.I14).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayType').should('have.value', testdata.M14).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayId').should('have.value', testdata.N14).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountPhone').should('have.value', testdata.J14).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountCategory').should('have.value', non_bank[0][4]).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountnumber').should('have.value', testdata.AJ14).and('have.attr', 'readonly', 'readonly')
          cy.get('input#accountnumber.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi')
          .eq(1).should('have.value', testdata.AM14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerId').should('have.value', testdata.AN14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef1').should('have.value', testdata.AO14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef2').should('have.value', testdata.AP14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef3').should('have.value', testdata.AQ14).and('have.attr', 'readonly', 'readonly')
          // สถานะผู้ต้องสงสัย
          cy.get('div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-1qqyecc').eq(2).within(() => {
            // 3 filed no validate ถามแล้ว
            cy.get('input.css-16lhzsi').eq(0)
            cy.get('input.css-16lhzsi').eq(1)
            cy.get('input.css-16lhzsi').eq(2)
            cy.get('input.css-16lhzsi').eq(3).should('have.value', testdata.V14)
            cy.get('input.css-16lhzsi').eq(4).should('have.value', testdata.W14)
            cy.get('input.css-16lhzsi').eq(5).should('have.value', testdata.X14)
            cy.get('input.css-16lhzsi').eq(6).should('have.value', testdata.Y14)
            cy.get('input.css-16lhzsi').eq(7).should('have.value', testdata.AA14)
            // cy.get('input.css-16lhzsi').eq(8).should('have.value', testdata.AB14)
            // cy.get('input.css-16lhzsi').eq(9).should('have.value', testdata.AC14)
            cy.get('input.css-16lhzsi').eq(10).should('have.value', testdata.AF14)
            cy.get('input.css-16lhzsi').eq(11).should('have.value', testdata.AG14)
            // cy.get('input.css-16lhzsi').eq(12).should('have.value', testdata.AH14)
            cy.get('input.css-16lhzsi').eq(13).should('have.value', testdata.AI14)
          })
          // รายละเอียดการไล่เส้นเงิน **มีขยับ filed ไม่บอก ว่างๆมาแก้
          // cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-cell-bordered').within(() => {
          //   cy.get('div.rs-table-cell-content').eq(11).invoke('text').should('include', testdata.R14).and('include', testdata.S14)
          //   cy.get('div.rs-table-cell-content').eq(12).should('have.text', testdata.AJ14)
          //   cy.get('div.rs-table-cell-content').eq(13).should('have.text', non_bank[0][1])
          //   cy.get('div.rs-table-cell-content').eq(14).invoke('text').should('include', testdata.K14).and('include', testdata.L14)
          //   cy.get('div.rs-table-cell-content').eq(15).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(16).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(17).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(18).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(19).should('have.text', testdata.U14)
          //   cy.get('div.rs-table-cell-content').eq(20).should('have.text', testdata.T14)
          //   cy.get('div.rs-table-cell-content').eq(21).should('have.text', testdata.G14)
          // })
    })
  }

  static Value_IN_Transition_M2_bank(testdata){
    const non_bank = Cypress.env('nonBankData');
    cy.get('#ข้อมูลผู้ต้องสงสัย').eq(1).within(() => {
          cy.get('#ownerfirstname').should('have.value', testdata.K14).and('have.attr', 'readonly', 'readonly')
          cy.get('#ownerlastname').should('have.value', testdata.L14).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountholdertype').should('have.value', testdata.I14).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayId').should('have.value', testdata.N14).and('have.attr', 'readonly', 'readonly')
          cy.get('#promptPayType').should('have.value', testdata.M14).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountPhone').should('have.value', testdata.J14).and('have.attr', 'readonly', 'readonly')
          cy.get('#accountCategory').should('have.value', non_bank[0][4]).and('have.attr', 'readonly', 'readonly')
          cy.get('input#accountnumber.MuiInputBase-input.MuiOutlinedInput-input.Mui-readOnly.MuiInputBase-readOnly.css-16lhzsi')
          .eq(1).should('have.value', testdata.AM14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerId').should('have.value', testdata.AN14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef1').should('have.value', testdata.AO14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef2').should('have.value', testdata.AP14).and('have.attr', 'readonly', 'readonly')
          cy.get('#billerRef3').should('have.value', testdata.AQ14).and('have.attr', 'readonly', 'readonly')
          // สถานะผู้ต้องสงสัย
          cy.get('div.MuiGrid-root.MuiGrid-container.MuiGrid-spacing-xs-2.css-1qqyecc').eq(2).within(() => {
            // 3 filed no validate ถามแล้ว
            cy.get('input.css-16lhzsi').eq(0)
            cy.get('input.css-16lhzsi').eq(1)
            cy.get('input.css-16lhzsi').eq(2)
            cy.get('input.css-16lhzsi').eq(3).should('have.value', testdata.V14)
            cy.get('input.css-16lhzsi').eq(4).should('have.value', testdata.W14)
            cy.get('input.css-16lhzsi').eq(5).should('have.value', testdata.X14)
            cy.get('input.css-16lhzsi').eq(6).should('have.value', testdata.Y14)
            cy.get('input.css-16lhzsi').eq(7).should('have.value', testdata.AA14)
            // cy.get('input.css-16lhzsi').eq(8).should('have.value', testdata.AB14)
            // cy.get('input.css-16lhzsi').eq(9).should('have.value', testdata.AC14)
            cy.get('input.css-16lhzsi').eq(10).should('have.value', testdata.AF14)
            cy.get('input.css-16lhzsi').eq(11).should('have.value', testdata.AG14)
            // cy.get('input.css-16lhzsi').eq(12).should('have.value', testdata.AH14)
            cy.get('input.css-16lhzsi').eq(13).should('have.value', testdata.AI14)
          })
          // รายละเอียดการไล่เส้นเงิน **มีขยับ filed ไม่บอก ว่างๆมาแก้
          // cy.get('div.rs-table.rs-table-bordered.rs-table-hover.rs-table-cell-bordered').within(() => {
          //   cy.get('div.rs-table-cell-content').eq(11).invoke('text').should('include', testdata.R14).and('include', testdata.S14)
            // cy.get('div.rs-table-cell-content').eq(12).should('have.text', testdata.AJ14)
          //   cy.get('div.rs-table-cell-content').eq(13).should('have.text', non_bank[0][1])
          //   cy.get('div.rs-table-cell-content').eq(14).invoke('text').should('include', testdata.K14).and('include', testdata.L14)
          //   cy.get('div.rs-table-cell-content').eq(15).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(16).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(17).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(18).should('have.text', '')
          //   cy.get('div.rs-table-cell-content').eq(19).should('have.text', testdata.U14)
          //   cy.get('div.rs-table-cell-content').eq(20).should('have.text', testdata.T14)
          //   cy.get('div.rs-table-cell-content').eq(21).should('have.text', testdata.G14)
          // })
    })
  }

  static clickIconTransition(row){
    cy.get('div.MuiBox-root.css-0').eq(1).within(() => {
      cy.get('button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeMedium.css-15mydm5').eq(row).click()
    })
  }
  static DisplayLableSearch(){
    cy.get('tr.MuiTableRow-root.MuiTableRow-head.css-tt5gqc').within(() => {
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(0).should('have.text', 'หมายเลขเคสอ้างอิงธนาคาร(Bank Case ID)')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(1).should('have.text', 'แถว')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(2).should('have.text', 'ชื่อผู้ส่ง')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(3).should('have.text', 'ผู้ให้บริการทางการเงินผู้ส่ง')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(4).should('have.text', 'เลขที่บัญชีผู้ส่ง')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(5).should('have.text', 'ชื่อผู้รับ')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(6).should('have.text', 'ผู้ให้บริการทางการเงินผู้รับ')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(7).should('have.text', 'เลขที่บัญชีผู้รับ')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(8).should('have.text', 'บัญชี Settlement')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(9).should('have.text', 'เวลาของ Transaction เริ่มต้น')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(10).should('have.text', 'เวลาของ Transaction สิ้นสุด')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(11).should('have.text', 'ยอดเงิน')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(12).should('have.text', 'วันที่เข้าระบบ')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(13).should('have.text', 'หมายเลขเคสตำรวจ (Case ID ตำรวจ)')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(14).should('have.text', 'วันที่แจ้งความจากตำรวจ')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(15).should('have.text', 'สถานะ sub case')
    cy.get('div.Mui-TableHeadCell-Content-Wrapper.MuiBox-root').eq(16).should('have.text', 'Actions')
  })
  }
  static DisplaySearch(data){
  const non_bank  = Cypress.env('nonBankData');
  if(non_bank[0][4] == 'ผู้ให้บริการทางการเงิน'){
    cy.get(`@${data}`).then(testdata => {
      CreateMasterCasePage.DisplaySearch_Value(testdata)
  })
  }else if (non_bank[0][4] == 'ธนาคาร'){
  cy.get(`@${data}`).then(testdata => {
    CreateMasterCasePage.DisplaySearch_Value_for_bank(testdata)
  })  
  }else if (non_bank[0][4] == ''){
  cy.get(`@${data}`).then(testdata => {
    CreateMasterCasePage.DisplaySearch_Value(testdata)
  })  
  }else{
    throw new Error('Unknown data result : ' + non_bank[0][4])
  }
  }
  static DisplaySearch_Value(testdata){
    const non_bank = Cypress.env('nonBankData')
    cy.get('div.MuiTableContainer-root.css-11b7ut5',{timeout:60000}).within(() => {
      cy.get('td.css-sko2jg').should('have.text', testdata.A3)
      cy.get('td.css-k78ent').should('have.text', '1')
      cy.get('td.css-13gvmk7').invoke('text').should('include', testdata.C9).and('include', testdata.D9)
      cy.fixture('bankname.json').then(shortbank => {
      cy.get('td.css-g5thv8').should('have.text', shortbank[testdata.H9])
      })
      cy.get('td.css-mepm12').should('have.text', testdata.AM14)
      cy.get('td.css-10xd3ej').should('have.text', testdata.G9)
      cy.get('td.css-2tink5').invoke('text').should('include', testdata.K14).and('include', testdata.L14)
      cy.get('td.css-geoga7').should('have.text', non_bank[0][1])
      cy.get('td.css-1vrr0qk').should('have.text', testdata.AJ14)
      cy.get('td.css-1g0ygrp').invoke('text').should('include', testdata.R14).and('include', testdata.S14)
      cy.get('td.css-ajxfj4').invoke('text').should('include', testdata.R14).and('include', testdata.S14)
      cy.get('td.css-fv7180').should('have.text', testdata.U14)
      cy.get('td.css-mqskto')
      cy.get('td.css-1fgmb02')
      cy.get('td.css-1pzqfkr')
      cy.log('should be match',testdata.AR14)
      if(testdata.AR14 == 'การทำธุรกรรมไปต่างประเทศ'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ยอดการระงับได้มากกว่าหรือเท่ากับยอดที่โอนมา'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ถอนเงินสดที่สาขา'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ถอนเงินสดผ่านเอทีเอ็ม'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ชำระด้วยบัตรผ่าน Card Scheme'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      // }else if(testdata.AR14 == ''){
      //   let billerID  = testdata.AN14
      //   const query = QueryPage.Query_Prepara_TAX_ID(billerID) 
      //   cy.task('queryOracleDatabase', { query }).then((result) => {
      //     cy.log(JSON.stringify(result))
      //     if(result){
      //       cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      //     }else{
      //       cy.get('td.css-1ly33ka').should('have.text', '-')
      //     }
      //   })
      }else{
        cy.get('td.css-1ly33ka').should('have.text', '-')
      }
      cy.get('td.css-155dfca').within(() => {
        cy.get('button.css-15mydm5').eq(0)
        cy.get('button.css-15mydm5').eq(1)
        cy.get('button.css-15mydm5').eq(2)
      })
    })
  }
  static DisplaySearch_Value_for_bank(testdata){
    const non_bank = Cypress.env('nonBankData')
    cy.get('div.MuiTableContainer-root.css-11b7ut5',{timeout:60000}).within(() => {
      cy.get('td.css-sko2jg').should('have.text', testdata.A3)
      cy.get('td.css-k78ent').should('have.text', '1')
      cy.get('td.css-13gvmk7').invoke('text').should('include', testdata.C9).and('include', testdata.D9)
      cy.fixture('bankname.json').then(shortbank => {
      cy.get('td.css-g5thv8').should('have.text', shortbank[testdata.H9])
      })
      cy.get('td.css-10xd3ej').should('have.text', testdata.G9)
      cy.get('td.css-2tink5').invoke('text').should('include', testdata.K14).and('include', testdata.L14)
      cy.get('td.css-geoga7').should('have.text', non_bank[0][1])
      cy.get('td.css-mepm12').should('have.text', testdata.AM14)
      // cy.get('td.css-1vrr0qk').should('have.text', testdata.AJ14)
      cy.get('td.css-1g0ygrp').invoke('text').should('include', testdata.R14).and('include', testdata.S14)
      cy.get('td.css-ajxfj4').invoke('text').should('include', testdata.R14).and('include', testdata.S14)
      cy.get('td.css-fv7180').should('have.text', testdata.U14)
      cy.get('td.css-mqskto')
      cy.get('td.css-1fgmb02')
      cy.get('td.css-1pzqfkr')
      if(testdata.AR14 == 'การทำธุรกรรมไปต่างประเทศ'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ยอดการระงับได้มากกว่าหรือเท่ากับยอดที่โอนมา'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ถอนเงินสดที่สาขา'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'สินทรัพย์ดิจิตอลถูกส่งไปยังปลายทางที่ไม่ทราบผู้ให้บริการ'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ถอนเงินสดผ่านเอทีเอ็ม'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else if(testdata.AR14 == 'ชำระด้วยบัตรผ่าน Card Scheme'){
        cy.get('td.css-1ly33ka').should('have.text', 'Discontinue')
      }else{
        cy.get('td.css-1ly33ka').should('have.text', '-')
      }
      cy.get('td.css-155dfca').within(() => {
        cy.get('button.css-15mydm5').eq(0)
        cy.get('button.css-15mydm5').eq(1)
        cy.get('button.css-15mydm5').eq(2)
      })
    })
  }



}
export default CreateMasterCasePage


