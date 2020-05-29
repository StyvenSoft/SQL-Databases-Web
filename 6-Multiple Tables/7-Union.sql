
-- A veces solo queremos apilar un conjunto de datos encima del otro. Bueno, el UNIONoperador nos permite hacer eso.

/*
SQL tiene reglas estrictas para agregar datos:

Las tablas deben tener el mismo número de columnas.
Las columnas deben tener los mismos tipos de datos en el mismo orden que la primera tabla.

Use UNIONpara apilar la newspapermesa sobre la onlinemesa
*/

SELECT * 
FROM newspaper 
UNION 
SELECT * 
FROM online;