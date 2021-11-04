var connection = require("./database");
function getAllFoodCategories(callback) {
    var sql = "SELECT * FROM Food_categories";
    connection.query(sql, function(err, results) {
        if (err) throw err;
        callback(results); //process data return from query
    });
}

module.exports = {
    getAllFoodCategories
}
