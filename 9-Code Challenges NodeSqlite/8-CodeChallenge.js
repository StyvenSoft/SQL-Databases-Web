db.get("SELECT traffic FROM TrainStation WHERE station_id=38 AND month='April'", (err, row) => {
    console.log(row.traffic);
  });
  
  const logFloorsForAddress = address => {
    db.get("SELECT number_of_floors FROM Building WHERE address=$address", { $address: address }, (err, row) => {
        console.log(row.number_of_floors);
    });
  }
  
  
  db.run("INSERT INTO BirdOfParadise (scientific_name, common_name) VALUES ('Cicinnurus regius', 'king bird-of-paradise');");
  
  
  const addMovie = (title, publicationYear, director) => {
      db.run('INSERT INTO Movie (title, publication_year, director) VALUES ($title, $pubYear, $director)', {
      $title: title,
      $pubYear: publicationYear,
      $director: director
    });
  };
  
  db.each("SELECT * FROM Minifridge WHERE type='soda'", (err, row) => {
    console.log(row.name);
  });
  
  db.run("INSERT INTO Holiday (name, work) VALUES ('Codecademy Day', false);");