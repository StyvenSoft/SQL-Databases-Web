const { printQueryResults } = require('./utils');
const sqlite = require('sqlite3');

const db = new sqlite.Database('./db.sqlite');

const ids = [1, 25, 45, 100, 360, 382];
// your code below:
ids.forEach((id) => { 
  db.get("SELECT * FROM TemperatureData WHERE id = $id",
  {
    $id: id
  },
  (error, rows) => {
    printQueryResults(rows);
  })
})