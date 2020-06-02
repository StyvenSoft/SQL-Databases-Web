
/*
Además de apilar una tabla encima de otra, también podemos usar UNIO para hacer rápidamente un "mini" 
conjunto de datos

Agregue un tercero UNION / SELECT para que el resultado contenga 2017-03-01. 

*/

SELECT '2017-01-01' AS 'month'
UNION
SELECT '2017-02-01' AS 'month'
UNION
SELECT '2017-03-01' AS 'month';