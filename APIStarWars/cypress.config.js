const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: "kyd6it",
  e2e: {
    baseUrl: "https://swapi.dev/",
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
