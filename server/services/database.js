const config = require("../config/db.config");
var mysql = require("mysql");                       // database
var connection = mysql.createConnection(config);
module.exports = connection;