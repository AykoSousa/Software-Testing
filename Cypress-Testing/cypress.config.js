const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: 'https://devfinance-agilizei.netlify.app/#',
    defaultCommandTimeout: 5000,
    setupNodeEvents(on, config) {
      
    },
  },
});