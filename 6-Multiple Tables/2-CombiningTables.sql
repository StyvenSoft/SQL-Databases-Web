
-- Si queremos combinar orders y customers, escribiríamos:

SELECT *
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

-- seleccionar todas las columnas usando *, si solo quisiéramos seleccionar ordersla order_idcolumna de la customerstabla y la customer_name

SELECT orders.order_id,
   customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

-- Unir orderstabla y subscriptionstabla y seleccionar todas las columnas.

SELECT *
FROM orders
LIMIT 10;

SELECT *
FROM subscriptions
LIMIT 10;

-- queremos unir estas dos columnas:

-- orders.subscription_id
-- subscriptions.subscription_id

SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;

-- Agregue una segunda consulta después de la primera que solo selecciona filas de la unión donde descriptiones igual a 'Revista de moda'.

-- Checkpoint 2

SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine';