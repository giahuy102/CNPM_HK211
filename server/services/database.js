const config = require("../config/db.config");
var mysql = require("mysql");
var connection = mysql.createConnection(config);
module.exports = connection;