-- Tu compañero de cuarto Bevers no recuerda el nombre exacto de un restaurante al que fue, pero 
-- sabe que contiene la palabra 'noodle'.

-- ¿Puedes encontrarlo para él usando una consulta?
-- Selecciona todas las columnas.

-- Para buscar los nombres de restaurantes que contienen la palabra 'noodle':

SELECT *
FROM nomnom
WHERE name LIKE '%noodle%';

/*
name	              neighborhood	cuisine	 review	  price  	health
Great NY Noodletown	    Chinatown	Chinese	 4.1	   $$      	B
*/