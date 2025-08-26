// cypress/support/commands.js

const XLSX = require('xlsx');

// Custom command เพื่ออ่านและแก้ไขไฟล์ Excel
Cypress.Commands.add('modifyExcelFile', (filePath, modifications) => {
  cy.readFile(filePath, 'binary').then((fileContent) => {
    // แปลงข้อมูลไบนารีเป็น workbook
    const workbook = XLSX.read(fileContent, { type: 'binary' });

    // สมมติว่าใช้แผ่นงานแรก
    const sheetName = workbook.SheetNames[0];  // ปรับให้ตรงกับชื่อแผ่นงานที่ต้องการ
    const worksheet = workbook.Sheets[sheetName];

    // แก้ไขข้อมูลในไฟล์ Excel ตามที่ได้รับมา
    Object.keys(modifications).forEach((cellAddress) => {
      // ตรวจสอบว่าเซลล์มีอยู่หรือไม่ ถ้าไม่มีก็สร้างขึ้นมา
      if (!worksheet[cellAddress]) {
        worksheet[cellAddress] = {};  // สร้างเซลล์ใหม่ถ้ายังไม่มี
      }

      // แก้ไขค่าของเซลล์
      worksheet[cellAddress].v = modifications[cellAddress]; 
    });

    // เขียนไฟล์ Excel ที่ถูกแก้ไขแล้วกลับในรูปแบบ array
    const updatedWorkbook = XLSX.write(workbook, { bookType: 'xlsx', type: 'array' });

    // สร้าง Blob และเขียนไฟล์กลับ
    const updatedFile = new Blob([updatedWorkbook], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });

    // บันทึกไฟล์ Excel ที่ถูกแก้ไข
    cy.writeFile(filePath, updatedFile, 'binary');
  });
});
