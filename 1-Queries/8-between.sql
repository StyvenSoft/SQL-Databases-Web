-- BETWEEN operador se utiliza en una WHERE cláusula para filtrar el conjunto de resultados dentro de un cierto rango
-- Acepta dos valores que son números, texto o fechas.

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;

-- películas con names que comienzan con la letra 'A' hasta, pero sin incluir las que comienzan con 'J'

SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';

-- filtrar el conjunto de resultados para incluir solo películas con años en 1970-1979:

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;