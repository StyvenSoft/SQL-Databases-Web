-- Encuentra 20 nombres distintos que comienzan con 'S'.

-- Seleccione solo la name columna.

SELECT DISTINCT name
FROM babies
WHERE name LIKE 'S%';

-- Luego, use LIMIT para limitar el resultado a 20:

SELECT DISTINCT name
FROM babies
WHERE name LIKE 'S%'
ORDER BY name
LIMIT 20;