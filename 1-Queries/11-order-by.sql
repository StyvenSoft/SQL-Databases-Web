-- Podemos ordenar los resultados usando ORDER BY, alfabéticamente o numéricamente
-- si queremos ordenar todo por el título de la película de la A a la Z

SELECT *
FROM movies
ORDER BY name;

-- si queremos seleccionar todas las películas bien recibidas, ordenadas de mayor a menor según su año

SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;

-- recuperar las columnas namey yearde todas las películas, ordenadas alfabéticamente por su nombre

SELECT name, year
FROM movies
ORDER BY name;

-- Escribir una nueva consulta que recupera los name, yeary imdb_ratingcolumnas de todas las películas, ordenadas de mayor a menor por sus calificaciones

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;