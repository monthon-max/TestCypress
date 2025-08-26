import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import LoginPage from './loginPage';

Given('I open login page',() =>{
    LoginPage.visitLoginPage()
})

Then('I should see homepage',() =>{
    LoginPage.shoudShowSuccessMessage()
})

When('I fill username with bbl username valid',()=> {
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.bbl_username_valid)
    })   
})
Given('login ITMX web portal by CMBT user', () =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.cmbt_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.cmbt_password_valid)
    }) 
    LoginPage.submit()
})
Given('login by BBL 002', () =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.demo_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.demo_password_valid)
    }) 
    LoginPage.submit()
})
Given('login by BBL 002 session', () => {
    cy.session('demo-login', () => {
      LoginPage.visitLoginPageUA1();
      cy.fixture('user_authen').then(user_authen => {
        LoginPage.fillUsername(user_authen.demo_username_valid);
        LoginPage.fillPassword(user_authen.demo_password_valid);
      });
      LoginPage.submit();
    }, {
      cacheAcrossSpecs: true // เปิดใช้งานการเก็บเซสชันข้ามไฟล์สเปค
    });
    // after login 
    cy.wait(500)
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev').contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
    // cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev-local')
    cy.contains('Welcome',{timeout:20000})
    cy.contains('Inquiry').click()
    cy.contains('Mule Search').click()
  });
Given('login by BBL 002', () =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.demo_username_valid)
    })
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.demo_password_valid)
    })
    LoginPage.submit()
})
Given('login by BBL 002 session', () => {
    cy.session('demo-login', () => {
      LoginPage.visitLoginPageUA1();
      cy.fixture('user_authen').then(user_authen => {
        LoginPage.fillUsername(user_authen.demo_username_valid);
        LoginPage.fillPassword(user_authen.demo_password_valid);
      });
      LoginPage.submit();
    }, {
      cacheAcrossSpecs: true // เปิดใช้งานการเก็บเซสชันข้ามไฟล์สเปค
    });
    // after login
    cy.wait(500)
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev').contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
    cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
    // cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev-local')
    cy.contains('Welcome',{timeout:20000})
    cy.contains('Inquiry').click()
    cy.contains('Mule seach').click()
  });
Given('login ITMX web portal by MHCB user',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.mhcb_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.mhcb_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by non bank {string} user',(shortname) => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
    LoginPage.fillUsername(user_authen[`${shortname}_username_valid`]);
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen[`${shortname}_password_valid`]);
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by BBL user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.bbl_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bbl_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by darkbrown user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.darkbrown_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bbl_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by exchange account user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.exchangeacc_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bbl_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by KBNK user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.kbnk_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.kbnk_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by KTB user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.ktb_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.ktb_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by BAY user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.bay_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bay_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by TSCO user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.tsco_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.tsco_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by KKP user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.kkp_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.kkp_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by LHB user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.lhb_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.lhb_password_valid)
    }) 
    LoginPage.submit()
})
Given('login ITMX web portal by SCB user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.scb_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.scb_password_valid)
    }) 
    LoginPage.submit()
})
When('I fill password with bbl password valid',() =>{
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bbl_password_valid)
    })  
})
When('I click submit Login',() =>{
    LoginPage.submit()
})
Then ('I should see error message',() =>{
    LoginPage.shoulShowErrorMessage()
})

Given('login ITMX web portal by BBL account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.bbl_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bbl_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by BBL 2 account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.bbl_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.bbl_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by MEGA account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.mega_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.mega_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by GHB account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.ghb_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.ghb_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by UOBT account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.uobt_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.uobt_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by VIVI account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.vivi_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.vivi_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by QATESTROLE2 account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.qatestrole2_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.qatestrole2_password_valid)
    }) 
    LoginPage.submit()
})

Then('login ITMX web portal by QATESTROLE account',() =>{
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.qatestrole_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.qatestrole_password_valid)
    }) 
    LoginPage.submit()
})

// non bank
Given('login ITMX web portal by non bank TBG user',() => {
    LoginPage.visitLoginPageUA1()
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillUsername(user_authen.TBG_username_valid)
    }) 
    cy.fixture('user_authen').then(user_authen =>{
        LoginPage.fillPassword(user_authen.TBG_password_valid)
    }) 
    LoginPage.submit()
})