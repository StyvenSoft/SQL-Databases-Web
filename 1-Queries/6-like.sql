-- LIKE puede ser un operador útil cuando desea comparar valores similares
-- La movies tabla contiene dos películas con títulos similares, 'Se7en' y 'Seven'.

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

-- El signo de porcentaje % es otro carácter comodín con el que se puede usar LIKE

SELECT * 
FROM movies
WHERE name LIKE 'A%';

-- También podemos usar %tanto antes como después de un patrón:

SELECT * 
FROM movies 
WHERE name LIKE '%man%';


