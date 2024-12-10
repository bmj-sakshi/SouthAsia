const { defineConfig } = require('cypress');
const cucumber = require('@badeball/cypress-cucumber-preprocessor').default;

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      try {
        // implement node event listeners here
        on('file:preprocessor', cucumber());
      } catch (error) {
        console.error('Error in setupNodeEvents:', error);
        console.error('Error details:', error.message);
        throw error;
      }
    },
    specPattern: 'cypress/e2e/**/*.feature',
    supportFile: 'cypress/support/e2e.js', // Ensure this path is correct
  },
});