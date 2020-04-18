var sql = require("mssql")

    var dbConfig = {  
            server: 'ANITA' ,  //update me
            authentication: {
                type: 'default',
                options: {
                    userName: 'bpddiy', //update me
                    password: 'bpddiy'  //update me
                }
            },
            options: {
                // If you are on Microsoft Azure, you need encryption: true
                encrypt: false,
                enableArithAbort: false,
                database: 'bpdlogin'  //update me
            }
          }  
    module.exports = dbConfig;
