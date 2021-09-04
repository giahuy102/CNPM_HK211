var connection = require("./database");
function getAllFoodCategories(callback) {
    connection.connect();
    var sql = "SELECT * FROM Food_category";
    connection.query(sql, function(err, results) {
        if (err) throw err;
        callback(results); //process data return from query
    });
    connection.end();
}

module.exports = {
    getAllFoodCategories
}
