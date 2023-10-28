const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl:'https://swapi.dev/',
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
