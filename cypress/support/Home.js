import { Given, Then } from '@badeball/cypress-cucumber-preprocessor';

Given('I open the BMJ South Asia Awards homepage', () => {
  cy.visit('https://southasiaawards.bmj.com/');
});

Then('I see the title {string}', (title) => {
  cy.title().should('include', title);
});

Then('I see the header {string}', (header) => {
  cy.get('h1').should('contain', header);
});

Then('I see a navigation bar', () => {
  cy.get('nav').should('be.visible');
});

Then('I see a footer with contact information', () => {
  cy.get('footer').should('contain', 'Contact');
});

Then('I see a section titled {string}', (sectionTitle) => {
  cy.contains(sectionTitle).should('be.visible');
});