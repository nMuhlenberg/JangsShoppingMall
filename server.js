// Filename - server.js

// importing mysql module
const mysql = require('mysql');

// Database connection
const connection = mysql.createConnection({
    //Add you mysql info here:
    host: 'localhost',
    port: '127.0.0.1:3306',
    user: 'root',
    password: 'cooper1969',
    database: 'Project'
});

connection.connect(function(err) {
    if (err) {
        console.log("error occurred while connecting");
    } else {
        console.log("connection created with mysql successfully");
    }
});
