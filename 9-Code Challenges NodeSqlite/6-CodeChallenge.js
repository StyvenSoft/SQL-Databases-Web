const db = require('./db');

db.serialize(() => {
  db.run('CREATE TABLE Popcorn (id INTEGER PRIMARY KEY, type TEXT)');
  db.run('INSERT INTO POPCORN (type) VALUES ("cheddar")');
  db.run('INSERT INTO POPCORN (type) VALUES ("kettle corn")');
});

db.get("SELECT quantity FROM SpiceRack WHERE name='paprika'", (err, row) => {
  console.log(row.quantity);
});


const selectByGenre = genre => {
  db.all("SELECT title FROM Song WHERE genre=$genre", { $genre: genre });
}

db.all("SELECT * FROM Scientist WHERE field='biology'", (err, rows) => {
    console.log(rows);
});