const { defineConfig } = require('cypress');
const createBundler = require('@bahmutov/cypress-esbuild-preprocessor');
const preprocessor = require('@badeball/cypress-cucumber-preprocessor');
const createEsbuildPlugin = require('@badeball/cypress-cucumber-preprocessor/esbuild');
// custom tasks
const excelTasks = require('./cypress/plugins/excelTasks');
const fileTask = require('./cypress/plugins/fileTask'); 
const DbTask = require('./cypress/plugins/DbTask'); 
const setupNodeEvents = async (on, config) => {
  await preprocessor.addCucumberPreprocessorPlugin(on, config);

  on(
    'file:preprocessor',
    createBundler({
      plugins: [createEsbuildPlugin.default(config)],
    }),
  );
    excelTasks(on, config);
    fileTask(on, config);
    DbTask(on, config);
    return config;

};

module.exports = defineConfig({
  viewportWidth: 1920,
  viewportHeight: 1080,
  defaultCommandTimeout: 20000,
  chromeWebSecurity: false,
  experimentalModifyObstructiveThirdPartyCode: true,
  videoCompression: false,
  reporter: 'mochawesome',
  reporterOptions: {
    reportDir: 'cypress/results',
    overwrite: false,
    html: true,
    json: true,
  },
  e2e: {
    clientCertificates: [
      {
        url: 'https://portaldev1.nitmx.co.th/**',
        ca: [],
        certs: [
          {
            pfx: 'cypress/e2e/common/NEW7460222450172_240325104818.p12',
            passphrase: 'cypress/e2e/common/Password.txt',
          },
        ],
      },
      {
        url: 'https://portaldev1.nitmx.co.th/',
        ca: [],
        certs: [
          {
            pfx: 'cypress/e2e/common/NEW7460222450172_240325104818.p12',
            passphrase: 'cypress/e2e/common/Password.txt',
          },
        ],
      },
      {
        url: 'https://portalua1.nitmx.co.th/',
        ca: [],
        certs: [
          {
            pfx: 'cypress/e2e/common/NEW7460222450172_240325104818.p12',
            passphrase: 'cypress/e2e/common/Password.txt',
          },
        ],
      },
      {
        url: 'https://cfr-dev.itmx.co.th/core/api/ocphealth',
        ca: [],
        certs: [
          {
            pfx: 'cypress/e2e/common/NEW7460222450172_240325104818.p12',
            passphrase: 'cypress/e2e/common/Password.txt',
          },
        ],
      },
    ],
    hideXHRInCommandLog: true,
    setupNodeEvents,
    specPattern: '**/*.feature',
    baseUrl2: 'https://portalua1.nitmx.co.th/ITMXPortal/welcome',
    fixturesFolder: 'cypress/fixtures',
    excludeSpecPattern: ['*.js'],
  },
  retries: {
    runMode: 1,
    openMode: 1
  }
});
