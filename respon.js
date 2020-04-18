var dbConfig = require ('./database/connect')
var sql = require("mssql")

var executeQuery = function(res, query){
            sql.connect(dbConfig, (err) => {
            if (err) {
            console.log("Error while connecting database :- " + err)
            res.send(err)
            }
            else {
            // create Request object
            var request = new sql.Request()
            // query to the database
            request.query(query, function(err, rs) {
            if (err) {
            console.log("Error while querying database :- " + err)
            res.send(err)
            sql.close()
            }
            else {
            res.send(rs)
            sql.close()
            }
          });
          }
        });
    }
module.exports = executeQuery;