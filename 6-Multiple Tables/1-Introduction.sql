
-- Podríamos tener una tabla con toda la siguiente información:

/*
order_id
customer_id
customer_name
customer_address
subscription_id
subscription_description
subscription_monthly_price
subscription_length
purchase_date
*/

/*
1. orderscontendría solo la información necesaria para describir lo que se ordenó:

order_id, customer_id, subscription_id,purchase_date
2. subscriptionscontendría la información para describir cada tipo de suscripción:

subscription_id, description, price_per_month,subscription_length
3. customerscontendría la información para cada cliente:

customer_id` customer_name`address

*/

-- Examine estas tablas pegando el siguiente código en el editor:

SELECT *
FROM orders
LIMIT 5;

SELECT *
FROM subscriptions
LIMIT 5;

SELECT * 
FROM customers
LIMIT 5;