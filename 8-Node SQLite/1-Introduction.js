const { printQueryResults } = require('./utils');

const sqlite3 = require('sqlite3');

const db = new sqlite3.Database('./db.sqlite');

const getAverageTemperatureForYear = year => {
  if (!year) {
    console.log('You must provide a year!');
    return;
  }
  db.get('SELECT year, AVG(temp_avg) as average_temperature from TemperatureData WHERE year = $year',
   { $year: year },
   (err, row) => {
    if (err) {
      throw err;
    }
    printQueryResults(row);
  })
}

// Call this function with a few years to view the average temperature that year
// This database has values from 1851 - 2004
getAverageTemperatureForYear(1851)
getAverageTemperatureForYear(1950)
getAverageTemperatureForYear(2004)