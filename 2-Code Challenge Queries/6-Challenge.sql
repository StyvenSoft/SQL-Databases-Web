-- Algunos de los restaurantes aún no han sido inspeccionados o actualmente están apelando su 
-- puntaje de grado de salud.

-- Encuentra los restaurantes que tienen healthvalores vacíos .
-- Selecciona todas las columnas.

SELECT *
FROM nomnom
WHERE health IS NULL;

/*
name	        neighborhood	cuisine	    review	price	health
Massawa	        Uptown	        Ethiopian	 4	    $$	    NULL
Wo Hop      	Chinatown	    Chinese	     4.2	$$  	NULL
Jacob's Pickles	Uptown	        American	NULL    $$	    NULL
Lighthouse  	Brooklyn    	American	4.6	    $$	    NULL
Los Hermanos	Brooklyn	    Mexican	    4.4	    $	    NULL
*/