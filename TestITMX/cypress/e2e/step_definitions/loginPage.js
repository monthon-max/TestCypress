const URL = 'https://portaldev1.nitmx.co.th/ITMXPortal/welcome'
const URLUA1 = 'https://portalua1.nitmx.co.th/ITMXPortal/welcome'
const USERNAME = '#username'
const PASSWORD = '#password'
const SUBMIT_BUTTON = 'button[class="btn btn-primary"]'
const ERRPR_MESSAGE = '.alert-error'
let USERNAME_VALUE = "name"
const CFR_WEB_LINK = 'a[class="text-decoration-none validate-url"]'

class LoginPage {
    static visitLoginPage(){
     cy.visit(URL),{
        headers: {
            "Accept":"application/json, text/pain, */*",
            "User-Agent" : "axios/0.18.0"
        }
     }
     cy.reload()
    } 
    static visitLoginPageUA1(){
        cy.visit(URLUA1),{
           headers: {
               "Accept":"application/json, text/pain, */*",
               "User-Agent" : "axios/0.18.0"
           }
        }
        cy.reload()
       } 
    static shoudShowSuccessMessage(){
        cy.url().should('include','/ITMXPortal/welcome')
        cy.contains('Logged in : '+USERNAME_VALUE)
        cy.get('a[class="text-decoration-none validate-url"]').first().should('contain.text',' CFR Web Portal (DEV)')
        cy.get('a[class="text-decoration-none validate-url"]').should('have.length','2').and('include.text','CFR Web Portal (UAT)')
    }

    static fillUsername(name){
        cy.get(USERNAME).type(name)
        USERNAME_VALUE = name
    }

    static fillPassword(password){
        cy.get(PASSWORD).type(password)
    }
    static submit(){
        cy.get(SUBMIT_BUTTON).click()
    }
    static shoulShowErrorMessage()
    {
        cy.get(ERRPR_MESSAGE).contains('Login and/or password are wrong.')
    }
    static clickCFRWebPortalDev(){
        // cy.wait(2000)
        // cy.get('form[action="/dev-miniport/cfr-dev/api/auth/webportal"]').invoke('removeAttr', 'target')
        cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
        cy.wait(2000)
        cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
        // cy.visit('https://portaldev1.nitmx.co.th/dev-miniport/cfr-dev')
        cy.contains('Welcome',{timeout:20000})
        cy.contains('Central Fraud Registry').click()
        cy.contains('Bank Case Registry').click()
    }

    static checkBrownMuleRegistry(){
        // cy.wait(2000)
        // cy.get('form[action="/dev-miniport/cfr-dev/api/auth/webportal"]').invoke('removeAttr', 'target')
        cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
        cy.wait(2000)
        cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
        // cy.visit('https://portaldev1.nitmx.co.th/dev-miniport/cfr-dev')
        cy.contains('Welcome',{timeout:20000})
        cy.contains('Central Fraud Registry').click()
        // cy.contains('Brown Mule Registry',{timeout:20000})
    }
    static clickCFRWebPortalDevByInquiry(){
        cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
        cy.wait(2000)
        cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
        cy.contains('Welcome',{timeout:20000})
        cy.contains('Inquiry').click()
        cy.contains('Mule seach').click()
    }

    static clickCFRWebPortalDevLocal(){
        // cy.wait(2000)
        // cy.get('form[action="/dev-miniport/cfr-dev/api/auth/webportal"]').invoke('removeAttr', 'target')
        cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
        cy.wait(2000)
        cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev-v2-local')
        // cy.visit('https://portaldev1.nitmx.co.th/dev-miniport/cfr-dev-v2-local')
        cy.contains('Welcome',{timeout:20000})
        cy.contains('Central Fraud Registry').click()
    }

    static clickCFRWebPortalNFT(){
        cy.get('form[action="/dev-miniport/cfr-nft/api/auth/webportal"]').invoke('removeAttr', 'target')
        cy.get(CFR_WEB_LINK).contains('CFR Web Portal (NFT').click().invoke('removeAttr', 'target')
        cy.wait(1000)
        // cy.visit('https://portaldev1.nitmx.co.th/dev-miniport/cfr-nft')
        cy.contains('Welcome',{timeout:10000})
        cy.contains('Central Fraud Registry').click()
    }
    
    static checkbuttonExchangeAccountRegistryPermission(){
        cy.get(CFR_WEB_LINK).contains('CFR Web Portal (DEV').click().invoke('removeAttr', 'target')
        cy.wait(2000)
        cy.visit('https://portalua1.nitmx.co.th/dev-miniport/cfr-dev')
        cy.contains('Welcome',{timeout:20000})
        cy.contains('Central Fraud Registry').click()
    }

}

export default LoginPage


