-- La nomnom tabla tiene las siguientes columnas:

/*
    name         - el nombre del restaurante
    neighborhood - el nombre del barrio
    cuisine      - el tipo de cocina
    review       - la opinión del usuario promedio
    price        - el rango de precios
    health       - el grado de inspección de salud
*/

-- Reto:
-- Devolver todos los restaurantes que son Japanese y $$.
-- Selecciona todas las columnas.

-- restaurantes japoneses con exactamente dos signos de dólar:

SELECT *
FROM nomnom
WHERE cuisine = 'Japanese'
  AND price = '$$';

/*
name	neighborhood	cuisine 	review	price	health
Minca	Downtown	  Japanese	    4.4 	$$  	A
Ippudo	Downtown	  Japanese	    4.4	    $$  	A
Ootoya	Downtown	  Japanese	    4.5	    $$  	A
*/