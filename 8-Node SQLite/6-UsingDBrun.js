const sqlite = require('sqlite3');

const db = new sqlite.Database('./db.sqlite');

const newRow = {
  location: 'Istanbul, Turkey',
  year: 1976,
}
// Your code below!

db.run('INSERT INTO TemperatureData (location, year) VALUES ($location, $year)', {
  $location: newRow.location,
  $year: newRow.year
}, function(error) {
  // handle errors here!

  console.log(this.lastID);
});