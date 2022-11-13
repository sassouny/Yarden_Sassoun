const mysql = require("mysql2");

const pool = mysql.createPool({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root-admin",
  database: "kangoo",
});

async function query(sql, values) {
  const promisePool = pool.promise();
  return ([rows, fields] = await promisePool.query(sql, values));
}

module.exports = {
  query,
};
