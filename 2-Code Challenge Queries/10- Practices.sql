-- ¿Cuáles son los nombres de columna?

SELECT *
FROM nomnom;

/*
name
neighborhood
cuisine
review
price
health
*/

SELECT DISTINCT neighborhood
FROM nomnom;

-- ¿Cuáles son los distintos cuisinetipos?

SELECT DISTINCT cuisine
FROM nomnom;

-- Regrese todos los restaurantes con reviews de 4 o más

SELECT *
FROM nomnom
WHERE review >= 4;

-- Devolver todos los restaurantes que son Italiany $$$.

SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price = '$$$';

-- Si desea encontrar restaurantes italianos con al menos tres signos de dólar

SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price LIKE '%$$$%';


-- Para buscar los nombres de restaurantes que contienen la palabra 'meatball':

SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- Podemos utilizar los ORoperadores para combinar estas condiciones:

SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';

-- Podemos utilizar los OR operadores para combinar estas condiciones:

SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown'; 


-- Usando ORDER BYy la DESC palabra clave, podemos ordenar los restaurantes por calificaciones de mayor a menor

SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

/*

Use una CASEdeclaración para cambiar el sistema de calificación a:

review > 4.5 es extraordinario
review > 4 es excelente
review > 3 es bueno
review > 2 es justo
Todo lo demás es pobre

*/

SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;

