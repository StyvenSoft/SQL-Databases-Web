-- SQL hace que sea fácil agregar todos los valores en una columna particular usando SUM().

-- SUM() es una función que toma el nombre de una columna como argumento y devuelve la suma de todos los valores en esa columna

SELECT SUM(downloads)
FROM fake_apps;


-- Query Results
-- SUM(downloads)
-- 3322760