var connection = require("./database");
function getAllFoods(callback) {
    var sql = "SELECT * FROM Foods";
    connection.query(sql, function(err, results) {
        if (err) throw err;
        callback(results); //process data return from query
    });
}

module.exports = {
    getAllFoods
}