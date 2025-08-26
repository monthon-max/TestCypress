import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import  { WebsearchPage }  from './websearchPage'
import  { Databasequery }  from './DatabaseQuery'
import { QueryPage } from "./Querypage";
import  { BrownmuleEP3 }  from './brownEP3_Upload_Page'
import CreateMasterCasePage from "./createMasterCasePage";




Then('go to menu Dark Brown Mule Registry',() => {
  BrownmuleEP3.checkDarkBrownMuleRegistry() 
  })
Then('go to menu Report',() => {
  BrownmuleEP3.checkReportMuleRegistry() 
  })
Then('frist go to menu Dark Brown Mule Registry',() => {
  BrownmuleEP3.checkDarkBrownMuleRegistry_frist() 
  })
When('I look for button Dark Brown Mule Registry V1', function () {
  BrownmuleEP3.IlookforbuttonDarkBrownMuleRegistry()
})
When('I look for button Wary Juristic Mule Report', function () {
  BrownmuleEP3.IlookforbuttonWaryJurustic()
})
When('I Dont look for button Dark Brown Mule Registry', function () {
  BrownmuleEP3.IDontSeeforbuttonDarkBrownMule()
 })
When('I Dont look for button Wary Juristic Mule Report', function () {
  BrownmuleEP3.IDontSeeforbuttonWaryJuristic()
 })
Then('Download File Template Create Dark Brown Mule',() =>{
  BrownmuleEP3.download_create_dark_brown()
})
Then('I should see the Dark Brown Mule Registry file in the downloads folder', () => {
  cy.wait(3000)
  BrownmuleEP3.verifyFileDownloaded_dark_brown('BrownMule_Registry_V1.0_BBB_NEW_YYYY-MM-DD_XXX.xlsx')
})
Then('Download File and Validate Label Wary Juristic Mule Report', () => {
  cy.wait(3000)
  BrownmuleEP3.verifyFileDownloaded_wary_juristic_mule()
})
Then('I should see the Wary Juristic Mule report file and downloads', () => {
  BrownmuleEP3.validateFilename()
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string}',(infile,fileName,fileextension)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} Second',(infile,fileName,fileextension)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName2", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} format filename is {string}', 
  (infile, fileName, fileextension, name) => {
    const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
    let updatedFileName = name;
    Cypress.env("updatedFileName", updatedFileName);
    cy.log("newfilename", updatedFileName);
    const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileName}.${fileextension}`;
    cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
      cy.readFile(newFilePath).should('exist');
    });
  });
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and fix date day is {string} month is {string} year is {string}',(infile,fileName,fileextension,day,month,year)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  // const currentDate = new Date();
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and validate month is not current',(infile,fileName,fileextension)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  let month = currentDate.getMonth() + 2;
  let yearThai = year;
  if (month > 12) {
    month = 1;
    yearThai += 1; // ถ้าเดือนเกิน 12 ให้เปลี่ยนเป็นเดือนมกราคม และเพิ่มปีไทย +1
  }
  month = String(month).padStart(2, '0'); // ให้เป็นรูปแบบ 2 หลัก
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  Cypress.env("updatedFileName", updatedFileName);
  cy.log("newfilename",updatedFileName);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileName}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and prefix is {string}',(infile,fileName,fileextension,prefix)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("BrownMule_Registry_V1", `${prefix}BrownMule_Registry_V2.0`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and bankcode is {string}',(infile,fileName,fileextension,bankcode)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("002", `${bankcode}`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file dark brown mule is {string} should be morify for newFilePath and this is old fileName is {string} and input file extension is {string} and filenametype is {string}',(infile,fileName,fileextension,type)=>{
  const oldFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${infile}/${fileName}.xlsx`;
  const currentDate = new Date();
  const year = currentDate.getFullYear() + 543;
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // เดือน (เริ่มจาก 0)
  const day = String(currentDate.getDate()).padStart(2, '0');
  const updatedFileName = fileName.replace(/\d{4}-\d{2}-\d{2}/, `${year}-${month}-${day}`);
  let updatedFileNameagain = updatedFileName
  .replace("NEW", `${type}`)
  Cypress.env("updatedFileName", updatedFileNameagain);
  cy.log("newfilename",updatedFileNameagain);
  const newFilePath = `cypress/fixtures/Brown_mule_EP3_Upload/${updatedFileNameagain}.${fileextension}`;
  cy.task('copyFile', { sourcePath: oldFilePath, destPath: newFilePath }).then(() => {
    cy.readFile(newFilePath).should('exist');
  });
})
When('upload file positive dark brown mule',() =>{
  const updatedFileName =   Cypress.env("updatedFileName")
  cy.log(updatedFileName)
  BrownmuleEP3.uploadFileMasterCaseDarkBrownMule(updatedFileName)
})
When('upload file positive dark brown mule Second',() =>{
  const updatedFileName =   Cypress.env("updatedFileName2")
  cy.log(updatedFileName)
  cy.wait(6000)
  BrownmuleEP3.uploadFileMasterCaseDarkBrownMule(updatedFileName)
})
When('upload file negative dark brown mule and morify file extension is {string}',fileexten =>{
  const updatedFileName =   Cypress.env("updatedFileName")
  cy.log(updatedFileName)
  BrownmuleEP3.uploadFileDarkBrownMule_Negative(updatedFileName,fileexten)
})
When('check file name and deleted old file before upload',() =>{
  const updatedFileName =   Cypress.env("updatedFileName")
  cy.log(updatedFileName)
  const query = BrownmuleEP3.Query_DarkBrown_Upload_INFO_For_Filename(updatedFileName);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  if (result.length > 0) {
    BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
      return BrownmuleEP3.getIDuploadDetail_Dark();
    })
    BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
      return BrownmuleEP3.DeletedDB_DarkBrown_upload_INFO();
    }).then(() => {
      return BrownmuleEP3.DeletedDB_DarkBrown_upload_Detail();
    }).then(() => {
      return BrownmuleEP3.DeletedDB_DarkBrown_upload_REPO_ForLoop_V1();
    })
  } else {
    cy.log("No row found for filename: " + updatedFileName);
  }
})
})
When('check file name and deleted old file before upload Second',() =>{
  const updatedFileName =   Cypress.env("updatedFileName2")
  cy.log(updatedFileName)
  const query = BrownmuleEP3.Query_DarkBrown_Upload_INFO_For_Filename(updatedFileName);
  cy.wait(2000)
  return cy.task('queryOracleDatabase', { query }).then((result) => {
  cy.log(result)
  if (result.length > 0) {
    BrownmuleEP3.getIDuploadINFO_Dark_Second().then(() => {
      return BrownmuleEP3.getIDuploadDetail_Dark();
    })
    BrownmuleEP3.getIDuploadINFO_Dark_Second().then(() => {
      return BrownmuleEP3.DeletedDB_DarkBrown_upload_INFO_Second();
    }).then(() => {
      return BrownmuleEP3.DeletedDB_DarkBrown_upload_Detail();
    }).then(() => {
      return BrownmuleEP3.DeletedDB_DarkBrown_upload_REPO_ForLoop();
    })
  } else {
    cy.log("No row found for filename: " + updatedFileName);
  }
})
})
Then('should be validate label Dark Brown Mule Registry {string}', TemplateInsertBrownMule =>{
  BrownmuleEP3.displayDarkBrown(TemplateInsertBrownMule)
  BrownmuleEP3.displaylist_DarkBrown(TemplateInsertBrownMule)
})
Then('should be validate label Dark Brown Mule Registry {string} for some cases not success is row {string}', (TemplateInsertBrownMule,num) =>{
  BrownmuleEP3.displayDarkBrown(TemplateInsertBrownMule)
  BrownmuleEP3.displaylist_DarkBrown(TemplateInsertBrownMule)
  BrownmuleEP3.displaylist_data_not_success_darkbrownmule(TemplateInsertBrownMule,num)
})
Then('confirm data to dark brown mule registry', ()=>{
  BrownmuleEP3.ConfirmDarkBrown()
})
Given('Query And CheckDB Validate Dark Brown Mule Registry {string}' , (fileName)=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark();
  }).then(() => {
    return BrownmuleEP3.QueryDarkBrownMule_REPO_ForLoop(fileName);
  });
});
Given('Query And CheckDB Validate Dark Brown Mule Registry {string} for senario4' , (fileName)=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark();
  }).then(() => {
    return BrownmuleEP3.QueryDarkBrownMule_REPO_ForLoop_Senario4(fileName);
  });
});
Given('Query And CheckDB Validate Dark Brown Mule Registry for success and fail {string}' , (fileName)=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark_Success();
  }).then(() => {
    return BrownmuleEP3.QueryDarkBrownMule_REPO_ForLoop_Success(fileName);
  });
});
Given('Query And CheckDB Validate Dark Brown Mule Registry find at detail id {string}' , (fileName)=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark_find_at_detail_id();
  }).then(() => {
    return BrownmuleEP3.QueryDarkBrownMule_REPO_ForLoop_find_at_detail_id(fileName);
  });
});
Given('Query And CheckDB For 100 record {string}' , (fileName)=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark_For100record();
  }).then(() => {
    return BrownmuleEP3.QueryDarkBrownMule_REPO_ForLoop(fileName);
  });
});
Given('Query And CheckDB For 100 record for exchange acct registry {string}' , (fileName)=>{
  Databasequery.getIDuploadINFO().then(() => {
    return Databasequery.getIDuploadDetail_for_100_record();
  }).then(() => {
    return Databasequery.QueryExchangeREPO_For_Loop(fileName);
  });
});
Given('Query And GET ID PersonalID' , ()=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark();
  })
});
Given('Query And GET ID PersonalID Second' , ()=>{
  BrownmuleEP3.getIDuploadINFO_Dark_Second().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark();
  })
});
Given('Deleted All Dark Brown Mule' , ()=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_INFO();
  }).then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_Detail();
  }).then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_REPO();
  })
});
Given('Deleted All Dark Brown Mule For Loop' , ()=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_INFO();
  }).then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_Detail();
  }).then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_REPO_ForLoop_V1();
  })
});
Given('Deleted All Dark Brown Mule For Loop Second' , ()=>{
  BrownmuleEP3.getIDuploadINFO_Dark_Second().then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_INFO_Second();
  }).then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_Detail();
  }).then(() => {
    return BrownmuleEP3.DeletedDB_DarkBrown_upload_REPO_ForLoop();
  })
});
Then('CheckDB Validate Dark Brown Mule Registry is PhoneNumber {string}' , (fileName)=>{
  BrownmuleEP3.getIDuploadINFO_Dark().then(() => {
    return BrownmuleEP3.getIDuploadDetail_Dark();
  }).then(() => {
    return BrownmuleEP3.QueryDarkBrownMule_REPO_For_PhoneNumber(fileName);
  });
});
Then('CheckDB Validate Dark Brown Mule Registry is Filename' ,()=>{
  BrownmuleEP3.QueryDarkBrownMule_INFO_For_Filename()
});
Then('should be display popup of dark brown mule error message is {string}',errMsg =>{
  if (errMsg == "personalID_invalid") {
      cy.fixture('error_message_darkbrown').then(error_message =>{
        BrownmuleEP3.displayErrorMessage_DarkBrownMule(error_message.personalID_invalid)
      }) 
    }
    else if (errMsg == "s") {
      cy.fixture('error_message_darkbrown').then(error_message =>{
        BrownmuleEP3.displayErrorMessage_DarkBrownMule(error_message.personalID_invalid)
      }) 
    }
  })
Then('should be validate label dark brown mule and data not success {string} and validate trasition row is {string}', (TemplateInsertBrownMule,num) =>{
  BrownmuleEP3.displaylist_data_not_success_darkbrownmule(TemplateInsertBrownMule,num)
  })
