const { printQueryResults } = require('./utils');
const sqlite = require('sqlite3');

const db = new sqlite.Database('./db.sqlite');

// Your code below:
db.all("SELECT * FROM TemperatureData WHERE year = 1970", (error, rows) => {
  printQueryResults(rows);
})