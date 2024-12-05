// Filename - server.js

// importing mysql module
const mysql = require('mysql');

// configurations for creating mysql connection
const connection = mysql.createConnection({
    host: 'localhost',     // host for connection
    port: '127.0.0.1:3306',            // default port
    database: 'test',      // database from which we want to connect our node application
    user: 'root',          // username of the mysql connection
    password: 'cooper1969'       // password of the mysql connection
});

// executing connection
connection.connect(function(err) {
    if (err) {
        console.log("error occurred while connecting");
    } else {
        console.log("connection created with mysql successfully");
    }
});

connection.query('select * from Project', (err, result, fields)=> {
    if (err){
        return console.log(err);
    }
    return console.log(result);
})