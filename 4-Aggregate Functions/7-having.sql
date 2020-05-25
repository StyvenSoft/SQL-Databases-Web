-- Además de poder agrupar datos utilizando GROUP BY, SQL también le permite filtrar
-- qué grupos incluir y cuáles excluir.

-- HAVING es muy similar al WHERE. De hecho, todos los tipos de WHERE cláusulas que aprendió hasta ahora pueden usarse HAVING.

SELECT year,
   genre,
   COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10;

-- HAVING La declaración siempre viene después GROUP BY, pero antes ORDER BYy LIMIT.

-- Agregue una HAVING cláusula para restringir la consulta a los puntos de precio que tienen más de 10 aplicaciones.

SELECT price, 
   ROUND(AVG(downloads)),
   COUNT(*)
FROM fake_apps
GROUP BY price
HAVING COUNT(*) > 10;