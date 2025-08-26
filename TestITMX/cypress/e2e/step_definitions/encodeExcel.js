const { Given , When , Then } = require('@badeball/cypress-cucumber-preprocessor');  // นำเข้า Given
const xlsx = require('xlsx');  // ไลบรารีสำหรับอ่านและเขียนไฟล์ Excel
const newdata = require('../../fixtures/testdata_new_template/testdata_master_case');
const newdata_sub_mbs = require('../../fixtures/testdata_new_template/testdata_sub_case_MBs');
const newdata_sub_fi = require('../../fixtures/testdata_new_template/testdata_sub_case_FI');
const mapTemplateValue = require('../../support/utils/mapTemplateValue');
import * as XLSX from 'xlsx';
import CreateMasterCasePage from './createMasterCasePage';
// const XLSX = require('xlsx');


Cypress.Commands.add('encodeExcel', (filePath) => {
  return cy.readFile(filePath, 'base64').then((base64String) => {
    return base64String;
  });
});

// Step สำหรับแก้ไขข้อมูลในไฟล์ Excel
Given('should modify a specific cell in an Excel file', function () {
  const filePath = './cypress/fixtures/Brown_mule_positive/TemplateInsertBrownMule1.xlsx';  // ระบุพาธไฟล์ Excel ที่ต้องการแก้ไข
  const cellK3 = 'K3';  // ระบุตำแหน่งเซลล์ที่ต้องการแก้ไข
  const PID = '9999999999991';  // ค่าใหม่ที่ต้องการใส่ในเซลล์
  const cellL3 = 'L3';  // ระบุตำแหน่งเซลล์ที่ต้องการแก้ไข
  const firstName = 'QA';  // ค่าใหม่ที่ต้องการใส่ในเซลล์
  const cellM3 = 'M3';  // ระบุตำแหน่งเซลล์ที่ต้องการแก้ไข
  const LastName = 'TEST';  // ค่าใหม่ที่ต้องการใส่ในเซลล์
  const cellP3 = 'P3';  // ระบุตำแหน่งเซลล์ที่ต้องการแก้ไข
  const bankName = 'ธนาคารกรุงเทพ จำกัด (มหาชน)';  // ค่าใหม่ที่ต้องการใส่ในเซลล์
  const cellR3 = 'R3';  // ระบุตำแหน่งเซลล์ที่ต้องการแก้ไข
  const accountNumber = '1003213420';  // ค่าใหม่ที่ต้องการใส่ในเซลล์

  // อ่านไฟล์ Excel
  const workbook = xlsx.readFile(filePath);
  const sheetName = workbook.SheetNames[0];  // ใช้แผ่นงานแรก
  const sheet = workbook.Sheets[sheetName];

  // แก้ไขเซลล์ที่ระบุ
  sheet[cellK3] = { v: PID };
  sheet[cellL3] = { v: firstName };
  sheet[cellM3] = { v: LastName };
  sheet[cellP3] = { v: bankName };
  sheet[cellR3] = { v: accountNumber };
  // sheet[cellK3] = { v: PID };

  // เขียนไฟล์ Excel ใหม่
  xlsx.writeFile(workbook, filePath);
});


// describe('Modify Excel File', () => {
//   Given('should modify data in an Excel file', () => {
//     const filePath = './cypress/fixtures/Brown_mule_positive/TemplateInsertBrownMule1.xlsx';
//     cy.log('TEST',(filePath))
//     // Define the modifications you want to make to the Excel file
//     const modifications = {
//       'K3': '9999999999991',  // Modify cell A1
//       'L3': 'QA'  // Modify cell B2
//     };
//     cy.log(modifications)
//     cy.modifyExcelFile(filePath, modifications);

//     cy.readFile(filePath, 'binary').then((fileContent) => {
//       const workbook = XLSX.read(fileContent, { type: 'binary' });
//       const sheetName = workbook.SheetNames[1];
//       const worksheet = workbook.Sheets[sheetName];
//       expect(worksheet['K3'].v).to.equal('9999999999991');
//       expect(worksheet['L3'].v).to.equal('QA');
//     });
//   });
// });

describe('Modify Excel File', () => {
  Given('should modify data in an Excel file', () => {
    // const filePath = './cypress/fixtures/Brown_mule_positive/TemplateInsertBrownMule1.xlsx';
    // const filePath = './cypress/fixtures/positive/scenario1/TemplateInsertBrownMule.xlsx';
    const filePath = './cypress/fixtures/positive/scenario1/TemplateInsertBrownMule.xlsx';
    // cypress/fixtures/positive/scenario1
    cy.log('TEST', filePath);

    // Define the modifications you want to make to the Excel file
    const modifications = {
      'K3': '9999999999991',  // Modify cell K3
      'L3': 'QA'  // Modify cell L3
    };

    cy.log(modifications);

    // อ่านไฟล์ที่มีอยู่ก่อน
    cy.readFile(filePath, 'binary').then((fileContent) => {
      const workbook = XLSX.read(fileContent, { type: 'binary' });
      const sheetName = workbook.SheetNames[0];  // เลือกแผ่นงานแรก
      const worksheet = workbook.Sheets[sheetName];

      // ตรวจสอบข้อมูลใน worksheet ก่อนการเปลี่ยนแปลง
      cy.log('Original data:', worksheet['K3']?.v, worksheet['L3']?.v, worksheet['M3']?.v, worksheet['R3']?.v);

      // แก้ไขเซลล์ K3 และ L3 โดยการตั้งค่าใหม่
      worksheet['K3'] = { v: '9999999999991', t: 's' };  // ใช้ t: 's' เพื่อให้เป็น string
      worksheet['L3'] = { v: 'QA', t: 's' };  // ใช้ t: 's' เพื่อให้เป็น string
      worksheet['M3'] = { v: 'TESTER', t: 's' };  // ใช้ t: 's' เพื่อให้เป็น string
      worksheet['R3'] = { v: '99999932131', t: 's' };  // ใช้ t: 's' เพื่อให้เป็น string
      cy.log('NEW data:', worksheet['K3']?.v, worksheet['L3']?.v, worksheet['M3']?.v, worksheet['R3']?.v);
      // บันทึกไฟล์ที่แก้ไขแล้ว
      XLSX.writeFile(workbook, 'Brown_mule.xlsx'); // บันทึกไฟล์ใหม่
    });
  });
});

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Custom task
Then('Edit file excel folder is {string} and sheetname is {string}', (folder,sheet) => {
  cy.wait(3000)
  const filename = `cypress/fixtures/${folder}`
  cy.task('editExcelFile', {
  // cy.task('writeCell', {
    filePath: filename,
    sheetName: sheet,
    // cell: 'A3',
    // value: '25680702BBL00103',
    cell: [
      'A3', 'A9', 'B9', 'C9', 'D9', 'E9', 'G9', 'H9', 'I9', 'J9', 'K9', 'L9', 'M9', 'N9',
      'B14', 'C14', 'D14', 'E14', 'F14', 'G14', 'H14', 'I14', 'J14', 'K14', 'L14', 'M14','N14', 'R14', 'S14', 'T14', 'U14','O14','P14','Q14'    ],
    value: [
      '25680711BBL09920', '1102002535679', 'บุคคลธรรมดา', 'มาแก้', 'ได้ไหมล่ะ', 'ข่มขู่ทางโทรศัพท์ให้เกิดความกลัวแล้วหลอกให้โอนเงิน', '4405249967',
      'ธนาคารกรุงเทพ จำกัด (มหาชน)', '002', '0907011722', 'max mana', '0907011721', 'max@gmail.com', 'บุตร',
      'มาแก้', 'ได้ไหมล่ะ', '4405249967', 'ธนาคารกรุงเทพ จำกัด (มหาชน)', '002', '111', '2749233250199', 'บุคคลธรรมดา',
      '0907011723', 'สุทธิพงษ์', 'นันทวัฒน์', 'ไม่มี','', '2568-06-01', '10:00:00', 'ttt', '10.00','1433692090','ธนาคารกรุงเทพ จำกัด (มหาชน)','002'    ]
  }).then((result) => {
    cy.log(JSON.stringify(result))
    // cy.task(filename, 'cypress/fixtures/test.xlsx');
  })

})

Then('PreparaData file excel folder is {string} and sheetname is {string}', (folder, sheet) => {
  CreateMasterCasePage.PreparaData_non_bank(2)
  const filename = `cypress/fixtures/${folder}`;
  cy.wrap(null).then(() => CreateMasterCasePage.PreparaData())
    .then((editData) => {
      return cy.task('editExcelFile', {
        filePath: filename,
        sheetName: sheet,
        ...editData
      }, { timeout: 240000 });
    })
    .then((result) => {
      cy.log(JSON.stringify(result));
    });
});
Then('Query Data Financial Institution {string} By Shortname {string}', (id,name) => {
  if(!id || !name) {
    cy.log('ID or Shortname is empty, skipping query');
    let setQuery = [['','','','','']]
    Cypress.env('nonBankData', setQuery);
  }else{
    let short_name = name
    CreateMasterCasePage.PreparaData_Financial(id,short_name)
  }
});
Then('Query Data Financial Institution {string} By Shortname {string} and Data BankcaseID Now', (id,name) => {
    let short_name = name
    CreateMasterCasePage.PreparaData_Financial(id,short_name)
    CreateMasterCasePage.PreparaData_BankcaseID()
});
Then('Query Data Financial Institution {string} By Shortname {string} and Data Subcase BankcaseID Now', (id,name) => {
    let short_name = name
    CreateMasterCasePage.PreparaData_Financial(id,short_name)
    CreateMasterCasePage.PreparaData_BankcaseID_Subcase()
});
Then('PreparaData file excel folder is {string} and sheetname is {string} and dataset for {string}', (folder, sheet, dataset) => {
  const filename = `cypress/fixtures/${folder}`;
  const dataSetObj = newdata[dataset];
  cy.wrap(null).then(() => CreateMasterCasePage.PreparaData_setQuery(dataset))
    .then((editData) => {
      const value = mapTemplateValue(dataSetObj.valueTemplate, editData.value);
      return cy.task('editExcelFile', {
        filePath: filename,
        sheetName: sheet,
        cell: dataSetObj.cell,
        value
      }, { timeout: 240000 });
    })
    .then((result) => {
      cy.log(JSON.stringify(result));
    });
});
Then('PreparaData file subcase for {string} excel folder is {string} and sheetname is {string} and dataset for {string}', (data,folder, sheet, dataset) => {
  const filename = `cypress/fixtures/${folder}`
  const datasetMap = {
    mbs: newdata_sub_mbs,
    fi: newdata_sub_fi
  };

  const selectedDataset = datasetMap[data];
  if (!selectedDataset) {
    throw new Error(`Invalid dataset type: ${data}`);
  }

  const dataSetObj = selectedDataset[dataset];
  cy.wrap(null).then(() => CreateMasterCasePage.PreparaData_setQuery_subcase(dataset))
    .then((editData) => {
      const value = mapTemplateValue(dataSetObj.valueTemplate, editData.value);
      return cy.task('editExcelFile', {
        filePath: filename,
        sheetName: sheet,
        cell: dataSetObj.cell,
        value
      }, { timeout: 240000 });
    })
    .then((result) => {
      cy.log(JSON.stringify(result));
    });
});
Then(
  "PreparaData file excel folder is {string} and sheetname is {string} and dataset for {string}V2",
  (folder, sheet, dataset) => {
    const filename = `cypress/fixtures/${folder}`;
    const dataSetObj = newdata[dataset];
    cy.wrap(null)
      .then(() => CreateMasterCasePage.PreparaData_setQuery(dataset))
      .then((editData) => {
        const value = mapTemplateValue(
          dataSetObj.valueTemplate,
          editData.value
        );
        return cy.task(
          "writeExcelBatch",
          {
            filePath: filename,
            sheetName: sheet,
            cells: {
              A3: "25680711BBL09920",
              A9: "1102002535679",
              B9: "บุคคลธรรมดา",
              C9: "มาแก้",
              D9: "ได้ไหมล่ะ",
              E9: "ข่มขู่ทางโทรศัพท์ให้เกิดความกลัวแล้วหลอกให้โอนเงิน",
              G9: "4405249967",
              H9: "ธนาคารกรุงเทพ จำกัด (มหาชน)",
              I9: "002",
              J9: "0907011722",
              K9: "max mana",
              L9: "0907011721",
              M9: "max@gmail.com",
              N9: "บุตร",

              B14: "มาแก้",
              C14: "ได้ไหมล่ะ",
              D14: "4405249967",
              E14: "ธนาคารกรุงเทพ จำกัด (มหาชน)",
              F14: "002",
              G14: "111",
              H14: "2749233250199",
              I14: "บุคคลธรรมดา",
              J14: "0907011723",
              K14: "สุทธิพงษ์",
              L14: "นันทวัฒน์",
              M14: "ไม่มี",
              N14: "",
              R14: "2568-06-01",
              S14: "10:00:00",
              T14: "ttt",
              U14: "10.00",
              O14: "1433692090",
              P14: "ธนาคารกรุงเทพ จำกัด (มหาชน)",
              Q14: "002",
            },
          },
          { timeout: 240000 }
        );
      })
      .then((result) => {
        cy.log(JSON.stringify(result));
      });
  }
);

Then('Read file excel folder is {string} and sheetname is {string}', (folder,sheet) => {
  const filename = `cypress/fixtures/${folder}`
  cy.task('readExcelCell', {
    filePath: filename,
    sheetName: sheet,
    // cell: 'K3',
    cell: [
      'A3', 'E3',
      'A9', 'B9', 'C9', 'D9', 'E9', 'G9', 'H9', 'I9', 'J9', 'K9', 'L9', 'M9', 'N9',
      'B14', 'C14', 'D14', 'E14', 'F14', 'G14', 'H14', 'I14', 'J14', 'K14', 'L14', 'M14','N14','O14','P14','Q14', 'R14', 'S14', 'T14', 'U14',
      'V14', 'W14', 'X14', 'Y14', 'Z14', 'AA14', 'AB14', 'AC14', 'AD14', 'AE14', 'AF14', 'AG14', 'AH14','AI14',
      'AJ14', 'AK14', 'AL14', 'AM14', 'AN14', 'AO14', 'AP14', 'AQ14', 'AR14','AS14'
  ],  
  }).then((result) => {
    cy.log(JSON.stringify(result))
    cy.wrap(result).as('AllExcelData');

    const M2Cells = ['B14', 'C14', 'D14', 'E14', 'F14', 'G14', 'H14', 'I14', 'J14', 'K14', 'L14', 'M14','N14','O14','P14','Q14', 'R14', 'S14', 'T14', 'U14'];
    const DataM2 = {};
    M2Cells.forEach((cell) => {
      DataM2[cell] = result[cell];
    });
    cy.wrap(DataM2).as('DataM2');
  });
})
Then('Read file excel subcase folder is {string} and sheetname is {string}', (folder,sheet) => {
  const filename = `cypress/fixtures/${folder}`
  cy.task('readExcelCell', {
    filePath: filename,
    sheetName: sheet,
    // cell: 'K3',
    cell: [
    'A3', 
    'A7','B7', 'C7', 'D7', 'E7', 'F7', 'G7', 'H7', 'I7', 'J7', 'K7', 'L7', 'M7','N7','O7','P7','Q7', 'R7', 'S7', 'T7', 'U7','V7',
    'B12', 'C12', 'D12', 'E12', 'F12', 'G12', 'H12', 'I12', 'J12', 'K12', 'L12', 'M12','N12','O12','P12','Q12', 'R12', 'S12', 'T12', 'U12',
    'V12', 'W12', 'X12', 'Y12', 'Z12', 'AA12', 'AB12', 'AC12', 'AD12', 'AE12', 'AF12',
    'AJ12', 'AK12', 'AL12', 'AM12', 'AN12', 'AO12', 'AP12', 'AQ12', 'AR12',
    ],
  }).then((result) => {
    cy.log(JSON.stringify(result))
    cy.wrap(result).as('AllExcelData');
  });
})
Then('deleted file {string}', (folder) => {
  let updatedFileName = Cypress.env("updatedFileName")
  const filename = `cypress/fixtures/${folder}/${updatedFileName}.xlsx`
  cy.task('deleteFile', filename);
})
Then('deleted file', () => {
  cy.wait(3000)
  cy.get('@filename').then((filename) => {
    cy.task('deleteFile', filename);
  });
  cy.get('@filedownloadedPath').then((filedown) => {
    cy.task('deleteFile', filedown);
  });
})
Then('deleted file only', () => {
  cy.get('@filename').then((filename) => {
    cy.task('deleteFile', filename);
  });
})