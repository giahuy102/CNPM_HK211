// database.js: connect to mysql, CNPM_HK211 database and export the connection
const config = require("../config/db.config");
var mysql = require("mysql");
var connection = mysql.createConnection(config);
module.exports = connection;