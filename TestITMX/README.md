# Cypress Cucumber Test Example

[![Cypress](https://img.shields.io/npm/v/cypress?color=33ff99&label=cypress&logo=cypress&style=for-the-badge)](https://www.cypress.io)

This is a simple project that demonstrates end-to-end testing in [cypress.io](https://www.cypress.io/)
using [cucumber preprocessor](https://www.npmjs.com/package/@badeball/cypress-cucumber-preprocessor).
 
## Prerequisites

Make sure you have installed all the following prerequisites on your development machine:

| OS      | Node                                       |
|---------|--------------------------------------------|
| Windows | `winget install OpenJS.NodeJS.LTS`         |
| macOS   | `brew install node@18`                     |

## Executing The Tests

- Clone the repository.

```shell
git clone https://gitlab.itmx.co.th/itmxqa/itmx-cfr-web-cypress.git
```

- Install Step

``` 
download NodeJs https://nodejs.org/en/download
download Download Visual Studio https://code.visualstudio.com/download


Cypress BDD & Cucumber
npm config set strict-ssl false
set NODE_TLS_REJECT_UNAUTHORIZED=0 
npm init
npm install cypress 
npm install cypress cypress-cucumber-preprocessor
npm install prettier
npm install --save-dev mochawesome mochawesome-merge mochawesome-report-generator
npm install dayjs --save
create file -> .prettierrc
npx cypress open
```

- Run the test.

```shell
npm run cy:open
```
``` If cannot push git
git remote set-url origin https://usergit:passgit@gitlab.itmx.co.th/itmxqa/itmx-crossborder-robot.git
```