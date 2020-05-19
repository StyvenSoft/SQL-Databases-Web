-- Los valores desconocidos se indican mediante NULL

-- No es posible probar NULLvalores con operadores de comparación, como =y !=
-- tendremos que usar estos operadores:

-- IS NULL
-- IS NOT NULL

SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;