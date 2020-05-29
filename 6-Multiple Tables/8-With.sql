
-- Muchas veces, queremos combinar dos tablas, pero una de ellas es el resultado de otro cálculo.

-- pueden querer saber a cuántas revistas se suscribe cada cliente. Podemos calcular esto fácilmente usando nuestra order stabla:

-- Queremos poder unir los resultados de esta consulta con nuestra customerstabla, que nos 
-- dirá el nombre de cada cliente. Podemos hacer esto usando una WITH cláusula.


/*
Únase a la tabla temporal previous_querycon customerstabla y seleccione las siguientes columnas:

customers.customer_name
previous_query.subscriptions

*/

WITH previous_query AS (
   SELECT customer_id,
      COUNT(subscription_id) AS 'subscriptions'
   FROM orders
   GROUP BY customer_id
)
SELECT customers.customer_name, 
   previous_query.subscriptions
FROM previous_query
JOIN customers
  ON previous_query.customer_id = customers.customer_id;