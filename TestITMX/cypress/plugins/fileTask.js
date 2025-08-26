const fs = require('fs-extra');
const path = require('path');

module.exports = (on, config) => {
  on('task', {
    copyFile({ sourcePath, destPath }) {
      return fs.copy(sourcePath, destPath)
        .then(() => null)
        .catch((err) => {
          throw err;
        });
    },
    deleteFile: (filePath) => {
        try {
            const absolutePath = path.resolve(filePath);
            if (fs.existsSync(absolutePath)) {
            fs.unlinkSync(absolutePath);
                console.log(`Deleted file: ${absolutePath}`);
                return { success: true, message: `File deleted: ${filePath}` };
            } else {
                console.log(`File not found: ${absolutePath}`);
                return { success: false, message: `File not found: ${filePath}` };
            }
        } catch (err) {
            console.error('Error deleting file:', err);
            throw err;
        }
    }
  });
};