const oracledb = require('oracledb');

module.exports = (on, config) => {
    on('task', {
        // ✅ Oracle Database Query
        async queryOracleDatabase({ query }) {
            let connection;
            try {
                connection = await oracledb.getConnection({
                    user: 'CFRAPP',
                    password: '1TMXpassw0rd',
                    connectString: '10.232.3.82:1522/CFRDBSIT',
                });

                console.log('Executing query on primary connection:', query);
                const result = await connection.execute(query, [], { autoCommit: true });
                return result.rows || [];

            } catch (err) {
                if (err.message.includes('ORA-00942')) {
                    console.error('Table not found. Try backup connection...');
                    try {
                        connection = await oracledb.getConnection({
                            user: 'CFASAPP',
                            password: '1TMXpassw0rd',
                            connectString: '10.232.3.82:1522/CFRDBSIT',
                        });
                        console.log('Executing query on backup connection:', query);
                        const result = await connection.execute(query, [], { autoCommit: true });
                        return result.rows || [];
                    } catch (backupErr) {
                        console.error('Error on backup connection:', backupErr);
                        throw backupErr;
                    }
                } else {
                    throw err;
                }
            } finally {
                if (connection) {
                    try {
                        await connection.close();
                    } catch (closeErr) {
                        console.error('Error closing connection:', closeErr);
                    }
                }
            }
        },

        // Add more tasks here
    });
};