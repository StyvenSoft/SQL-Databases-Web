/*
The startups table has ten columns:

startups                70  rows
name	    TEXT
location	TEXT
category	TEXT
employees	INTEGER
raised	    INTEGER
valuation	INTEGER
founded	    INTEGER
stage	    TEXT
ceo     	TEXT
info        TEXT

*/

SELECT *
FROM startups;

--- Calcule el número total de empresas en la tabla.

SELECT COUNT(*)
FROM startups;

-- Calcule esto obteniendo el SUM()de la valuationcolumna.
-- SUM(valuation)
-- 974455790000

SELECT SUM(valuation)
FROM startups;

-- Cuál es la cantidad más alta recaudada por una startup?
-- cantidad máxima de dinero raised.

SELECT MAX(raised)
FROM startups;

-- Edite la consulta para que devuelva la cantidad máxima de dinero raised, durante la etapa 'Semilla'.

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- En qué año se fundó la empresa más antigua de la lista?

SELECT MIN(founded)
FROM startups;

-- Devuelve el promedio valuation.

SELECT AVG(valuation)
FROM startups;

-- Devuelve el promedio valuation, en cada uno category

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

-- Redondea los promedios a dos decimales.

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

-- Primero, devuelva el nombre de cada uno categorycon el número total de compañías que le pertenecen.

SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- filtre el resultado para incluir solo categorías que tengan más de tres empresas.

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

-- ¿Cuál es el tamaño promedio de una startup en cada uno location?

SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- ¿Cuál es el tamaño promedio de una startup en cada uno location, con tamaños promedio superiores a 500?

SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;