// API for query food categories
var connection = require("./database");

function getAllFoodCategories(callback) {
    /* Execute and callback to send json: in callback of query method, call our callback to sync data will send, i.e 
    prevent send json before query result return*/
    var sql = "SELECT * FROM Food_category";
    connection.query(sql, function(err, results) {
        if (err) throw err;
        callback(results); //process data return from query
    });
}

module.exports = {
    getAllFoodCategories
}