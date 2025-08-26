import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import LoginPage from './loginPage';
import SearchPage from './searchPage';
import UploadPage from './uploadPage';
import { Databasequery } from './DatabaseQuery';

Then('Download File Template',() =>{
    UploadPage.download()
  })
Then('Download File Template Create',() =>{
    UploadPage.download_create()
  })
  
  Then('download template dark brown mule register',() =>{
    UploadPage.downloadtemplatedarkbrownmuleregister()
  })
Then('I should see the Brown Mule file in the downloads folder', () => {
    cy.wait(3000)
    UploadPage.verifyFileDownloaded('BrownMule Registry_V1.0.xlsx') // ตรวจสอบไฟล์ที่ดาวน์โหลด
  })
Then('I should see the Exchange Account Registry file in the downloads folder', () => {
    cy.wait(3000)
    UploadPage.verifyFileDownloaded('ExchangeAccount_Registry_V1.0_BBB_NEW_YYYY-MM-DD_XXX.xlsx')
  })
  Then('I should see the dark brown mule registry file in the downloads folder', () => {
    cy.wait(3000)
    UploadPage.verifyFileDownloaded('BrownMule_Registry_V1.0_BBB_CXL_YYYY-MM-DD_XXX.xlsx')
  })
  
  Then('the file should have the extension {string}', (extension) => {
    UploadPage.verifyFileExtension('test-file.xlsx', extension) // ตรวจสอบว่าไฟล์มีนามสกุล .xlsx
  })

  Then('confirm data', ()=>{
    UploadPage.Confirm()
  })
  Then('confirm data to exchange account registry', ()=>{
    UploadPage.ConfirmExchange()
  })

  Then('brown horse data import results {string}', TemplateInsertBrownMule =>{
    // UploadPage.brownhorsedataimportresults(scenario)
    UploadPage.display(TemplateInsertBrownMule)

    // CreateMasterCasePage.checkTotalDataSuccess(scenario)
    // CreateMasterCasePage.ConfirmBrow()
  })
  Then('should be validate label Exchange Account Registry {string}', TemplateInsertBrownMule =>{
    UploadPage.displayExchange(TemplateInsertBrownMule)
    UploadPage.displaylist(TemplateInsertBrownMule)
  })
  Then('should be validate label and data not success Exchange Account Registry {string} and validate trasition row is {string}', (TemplateInsertBrownMule,num) =>{
    UploadPage.displayExchange(TemplateInsertBrownMule)
    UploadPage.displaylist(TemplateInsertBrownMule)
    UploadPage.displaylist_data_not_success(TemplateInsertBrownMule,num)
  })
  
Then('I should see the message from testdata', () => {
  UploadPage.checkMessageFromData()
})

Then('display show detail when upload {string}',list => {
  UploadPage.displayshowdetaiwhenupload(list)
})

Then('display show detail when upload {string} row 2',list => {
  UploadPage.displayshowdetailwhenuploadrow2(list)
})

Then('display show detail when upload {string} row 25',list => {
  UploadPage.displayshowdetailwhenuploadrow25(list)
})
Then('display show detail when upload exchange account registry {string} row 2',list => {
  UploadPage.displayshowdetaiwhenuploadexchangeaccountregistryrow2(list)
})
Then('display show detail when upload exchange account registry {string}',list => {
  UploadPage.displayshowdetaiwhenuploadexchangeaccountregistry(list)
})
Then('display show detail when add exchange account registry {string}',list => {
  UploadPage.displayshowdetailwhenaddexchangeaccountregistry(list)
})
Then('display show detail when cancel exchange account registry {string}',list => {
  UploadPage.displayshowdetailwhencancelexchangeaccountregistry(list)
})
Then('display show detail when upload exchange account registry {string} row 4',list => {
  UploadPage.displayshowdetaiwhenuploadexchangeaccountregistryrow4(list)
})
Then('display show detail when upload dark brown mule registry {string} row 7',list => {
  UploadPage.displayshowdetailwhenuploaddarkbrownmuleregistryrow7(list)
})

Given('Query and checkDB for 100 record case cancel {string}' , (fileName)=>{
  UploadPage.getIDuploadINFO_Dark_new().then(() => {
    return UploadPage.getIDuploadDetail_Dark_For_100_record_new();
  }).then(() => {
    return UploadPage.QueryDarkBrownMule_REPO_ForLoop_new(fileName);
  });
});

Given('Deleted All Dark Brown Mule 100 record' , ()=>{
  const updatedFile = Cypress.env("updatedFile") || [];
  const updatedFileName = Cypress.env("updatedFileName");
  
  cy.log("Uploaded files before deletion: ", updatedFile);
  cy.log("📂 Latest uploaded file: ", updatedFileName);

  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return Databasequery.DeletedDB_upload_Detail_Darkbrownmuleregistry_Cancel_100_record();
  }).then(() => {
    return Databasequery.DeletedDB_upload_INFO_Darkbrownmuleregistry_Cancel();
  }).then(() => {

  Databasequery.getIDuploadINFODarkbrownmuleregistrynew().then(() => {
    return Databasequery.DeletedDB_upload_REP_Darkbrownmuleregistry_new_100_record();
      }).then(() => {
    return Databasequery.DeletedDB_upload_Detail_Darkbrownmuleregistry_new();
      }).then(() => {
    return Databasequery.DeletedDB_upload_INFO_Darkbrownmuleregistry_new();
      });
  });
});

Given('Query checkDB cancel calidate brown mule registry cancel {string}' , (fileName)=>{
  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return UploadPage.getIDuploadDetailDarkbrownmuleregistry_cancel(fileName);
  })
});

Given('Query checkDB cancel calidate brown mule registry cancel 100_record {string}' , (fileName)=>{
  Databasequery.getIDuploadINFODarkbrownmuleregistry().then(() => {
    return UploadPage.getIDuploadDetailDarkbrownmuleregistry_cancel_100_record(fileName);
  })
});
