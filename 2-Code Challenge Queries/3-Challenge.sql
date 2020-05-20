-- ¿Cuáles son los 10 nombres principales en 1880?
-- Seleccionar los name, gender y numbercolumnas.

-- Primero, necesitamos especificar el año usando una WHERE cláusula:

SELECT name, gender, number
FROM babies
WHERE year = 1880;

--  necesitamos ORDER BY las numberveces que se le dio ese nombre. 
-- También necesitamos agregar DESC para comenzar con los nombres más populares:

SELECT name, gender, number
FROM babies
WHERE year = 1880
ORDER BY number DESC;

-- Finalmente, necesitamos limitar nuestros resultados a los primeros 10 resultados

SELECT name, gender, number
FROM babies
WHERE year = 1880
ORDER BY number DESC
LIMIT 10;

/*
name	  gender	number
John	    M	    9655
William	    M	    9532
Mary	    F	    7065
James	    M	    5927
Charles	    M	    5348
George	    M	    5126
Frank	    M	    3242
Joseph	    M	    2632
Anna	    F	    2604
Thomas	    M	    2534
*/