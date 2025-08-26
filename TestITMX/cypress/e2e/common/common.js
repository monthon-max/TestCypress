import { defineStep } from "@badeball/cypress-cucumber-preprocessor";

defineStep('I want to wait {int} milliseconds',time =>{
    cy.wait(time)
})

defineStep('I see {string} in the title',title =>{
    cy.title().should('include',title)
})

defineStep('I reload the browser',() => {
    cy.reload()
})