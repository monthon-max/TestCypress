const xlsx = require("xlsx");
const path = require("path");

const workbookCache = new Map(); // ✅ Cache workbook ตาม path

module.exports = (on, config) => {
  on("task", {
    readExcelCell: ({ filePath, sheetName, cell }) => {
      try {
        const absolutePath = path.resolve(filePath);
        let workbook = workbookCache.get(absolutePath);

        if (!workbook) {
          workbook = xlsx.readFile(absolutePath);
          workbookCache.set(absolutePath, workbook);
        }

        const worksheet = workbook.Sheets[sheetName];
        if (!worksheet) {
          throw new Error(
            `Sheet "${sheetName}" not found in file: ${filePath}`
          );
        }

        if (Array.isArray(cell)) {
          const result = {};
          cell.forEach((cellAddress) => {
            const value = worksheet[cellAddress]
              ? worksheet[cellAddress].v
              : null;
            result[cellAddress] = value;
          });
          return result;
        } else {
          const value = worksheet[cell] ? worksheet[cell].v : null;
          return value;
        }
      } catch (err) {
        console.error("Error reading Excel file:", err);
        throw err;
      }
    },

    editExcelFile: ({ filePath, sheetName, cell, value }) => {
      try {
        const absolutePath = path.resolve(filePath);
        let workbook = workbookCache.get(absolutePath);

        if (!workbook) {
          workbook = xlsx.readFile(absolutePath);
          workbookCache.set(absolutePath, workbook);
        }

        const worksheet = workbook.Sheets[sheetName];
        if (!worksheet) {
          throw new Error(
            `Sheet "${sheetName}" not found in file: ${filePath}`
          );
        }

        const formatCellValue = (val) => ({ t: "s", v: String(val) });
        let isModified = false;

        if (Array.isArray(cell)) {
          if (!Array.isArray(value)) {
            throw new Error(
              "If cell is array, value must also be array with same length"
            );
          }
          if (cell.length !== value.length) {
            throw new Error(
              `Cell array length (${cell.length}) must match value array length (${value.length})`
            );
          }

          cell.forEach((cellAddress, index) => {
            const newValue = String(value[index]);
            const existingValue = worksheet[cellAddress]?.v ?? null;
            if (existingValue !== newValue) {
              worksheet[cellAddress] = formatCellValue(newValue);
              isModified = true;
            }
          });
        } else {
          const newValue = String(value);
          const existingValue = worksheet[cell]?.v ?? null;
          if (existingValue !== newValue) {
            worksheet[cell] = formatCellValue(newValue);
            isModified = true;
          }
        }

        if (isModified) {
          xlsx.writeFile(workbook, absolutePath);
        }

        return true;
      } catch (err) {
        console.error("Error editing Excel file:", err);
        throw err;
      }
    },

    writeExcelBatch: ({ filePath, sheetName, cells }) => {
      console.time("[Excel] Write Batch Time");

      const absolutePath = path.resolve(filePath);
      let workbook = workbookCache.get(absolutePath);

      if (!workbook) {
        workbook = xlsx.readFile(absolutePath);
        workbookCache.set(absolutePath, workbook);
      }

      const worksheet = workbook.Sheets[sheetName];
      if (!worksheet) {
        throw new Error(`Sheet "${sheetName}" not found in file: ${filePath}`);
      }

      for (const [cell, value] of Object.entries(cells)) {
        worksheet[cell] = { t: "s", v: String(value) };
      }

      xlsx.writeFile(workbook, absolutePath);

      console.log(
        `[Excel] Write ${absolutePath} sheet=${sheetName} cells=${Object.keys(
          cells
        ).join(", ")}`
      );
      console.timeEnd("[Excel] Write Batch Time");
      return true;
    },
  });
};
