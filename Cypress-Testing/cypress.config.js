const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: '6k4ouh',
  e2e: {
    baseUrl: 'https://devfinance-agilizei.netlify.app/#',
    setupNodeEvents(on, config) {
      
    },
  },
});