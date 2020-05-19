-- Similar a AND, el OR operador también se puede usar para combinar múltiples condiciones WHERE,

-- OR El operador muestra una fila si alguna condición es verdadera.

SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';

-- Utilizando OR, escriba una consulta que devuelva todas las películas que son románticas o comedias

SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';