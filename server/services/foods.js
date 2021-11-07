// API for query food:
var connection = require("./database");

function getAllFoods(callback) {
    /* Execute and callback to send json: in callback of query method, call our callback to sync data will send, i.e 
    prevent send json before query result return*/
    var sql = "SELECT * FROM Foods";
    connection.query(sql, function(err, results) {
        if (err) throw err;
        callback(results); //process data return from query
    });
}

module.exports = {
    getAllFoods
}