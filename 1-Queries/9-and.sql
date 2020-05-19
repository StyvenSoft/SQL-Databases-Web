-- combinar varias condiciones en una WHEREcláusula para que el conjunto de resultados sea más específico y útil

SELECT * 
FROM movies
WHERE year BETWEEN 1990 AND 1999
   AND genre = 'romance';

-- recuperamos todas las películas lanzadas en la década de 1970.

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

--  todas las películas realizadas antes de 1985 que también están en el horror género.

SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';