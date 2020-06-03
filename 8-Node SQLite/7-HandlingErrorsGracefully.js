const { printQueryResults } = require('./utils');
const sqlite = require('sqlite3');

const db = new sqlite.Database('./db.sqlite');

const newRow = {
  location: 'Istanbul, Turkey',
  year: 1976,
  tempAvg: 13.35
}

db.run('INSERT INTO TemperatureData (location, year, temp_avg) VALUES ($location, $year, $tempAvg)', {
  $location: newRow.location,
  $year: newRow.year,
  $tempAvg: newRow.tempAvg
}, function(error) {
  // handle errors here!
  if(error){
    return console.log(error);
  }
  
  console.log(this.lastID);
  
  db.get('SELECT * FROM TemperatureData WHERE id = $id', {
  		$id: this.lastID
	},
  function(error, row){
    printQueryResults(row);
 	});
});