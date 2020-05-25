-- La forma más rápida de calcular cuántas filas hay en una tabla es usar la COUNT() función.

-- COUNT() es una función que toma el nombre de una columna como argumento y cuenta el número de valores no vacíos en esa columna

SELECT COUNT(*)
FROM table_name;

-- Vamos a contar cuántas aplicaciones hay en la tabla.

SELECT COUNT(*) 
FROM fake_apps;

-- Agregue una WHERE cláusula en la consulta anterior para contar cuántas aplicaciones gratuitas hay en la tabla.

SELECT COUNT(*) 
FROM fake_apps
WHERE price = 0;


