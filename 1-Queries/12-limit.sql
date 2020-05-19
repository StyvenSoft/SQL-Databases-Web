-- imagine que solo queremos ver algunos ejemplos de registros
-- LIMIT es una cláusula que le permite especificar el número máximo de filas que tendrá el conjunto de resultados.

SELECT *
FROM movies
LIMIT 10;

-- escriba una consulta que devuelva las 3 películas mejor calificadas

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

