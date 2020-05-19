-- DISTINCT se usa para devolver valores únicos en la salida
-- Filtra todos los valores duplicados en las columnas especificadas.

SELECT tools 
FROM inventory;

-- tools
-- Hammer
-- Nails
-- Nails
-- Nails

SELECT DISTINCT tools 
FROM inventory;

-- tools
-- Hammer
-- Nails

