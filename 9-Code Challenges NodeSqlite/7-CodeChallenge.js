const db = require('./db');

db.each("SELECT * FROM CartoonCharacter WHERE species='mouse'", (err, row) => {
  console.log(row.height);
});

db.serialize(() => {
  db.run("DROP TABLE IF EXISTS Furniture;");
  db.run("CREATE TABLE Furniture");
});

const logCaffeineLevel = name => {
  db.get("SELECT * FROM tea WHERE name=$name;", { $name: name }, (err, row) => {
    console.log(row.caffeine_level);
  })
}

db.run("INSERT INTO Bridge (name, established_year) VALUES ('Brooklyn Bridge', 1883);");