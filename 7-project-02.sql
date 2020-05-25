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

