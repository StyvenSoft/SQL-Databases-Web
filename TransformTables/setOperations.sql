-- Select rows from a Table or View 'TableOrViewName' in schema 'SchemaName'
SELECT * FROM new_products
/* WHERE 	 add search conditions here 
GO
LIMIT 10;
*/

SELECT brand FROM legacy_products
UNION 
SELECT brand FROM new_products;

SELECT id, avg(a.sale_price) FROM (
  SELECT id, sale_price FROM order_items
  UNION ALL
  SELECT id, sale_price FROM order_items_historic) AS a 
  GROUP BY 1;

-- se utiliza para combinar dos SELECT declaraciones

SELECT category FROM new_products
INTERSECT
SELECT category FROM legacy_products;

-- devuelve filas distintas de la primera SELECT

SELECT category FROM legacy_products
EXCEPT
SELECT category FROM new_products;