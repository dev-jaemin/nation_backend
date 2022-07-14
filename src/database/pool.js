import mysql from "mysql2/promise";

module.exports = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "sdijm7907", //mysql 설치시 설정했던 비번
    database: "anAlyst", // db 이름
});
