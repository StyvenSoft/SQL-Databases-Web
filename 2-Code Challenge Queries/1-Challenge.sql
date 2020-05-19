-- La babiestabla tiene las siguientes columnas
-- name, year, gender, number

-- Encuentra el número de chicas que se llamaron Lillian durante todo el período de tiempo de la base de datos.

SELECT year, number
FROM babies
WHERE name = 'Lillian';

-- ser más específico y hacer que gendersea ​​'F':

SELECT year, number, name
FROM babies
WHERE name = 'Lillian' AND gender = 'F';

-- year 	number	  name
-- 1880 	672	    Lillian
-- 1881	    723	    Lillian

