SELECT * FROM bakeries 
  -- LIMIT(10);

SELECT DATETIME(delivery_time)
    FROM baked_goods;

-- la función DATE () para convertir fácilmente las marcas de tiempo en fechas

SELECT DATE(manufacture_time), count(*) as count_baked_goods
    FROM baked_goods
    GROUP BY DATE(manufacture_time);


SELECT TIME(manufacture_time), count(*) as count_baked_goods
    FROM baked_goods
    GROUP BY TIME(manufacture_time);

SELECT DATE(delivery_time), count(*) as count_baked_goods
    FROM baked_goods
    GROUP BY DATE(delivery_time);

-- columna de tipo de datos de fecha o marca de tiempo

SELECT DATETIME(manufacture_time, '+2 hours', '30 minutes', '1 day') 
    as inspection_time
FROM baked_goods;


SELECT DATETIME(delivery_time, '+5 hours', '20 minutes', '2 days') as package_time
FROM baked_goods;

-- Devuelve el valor numérico redondeado al siguiente valor especificado.

SELECT ROUND(ingredients_cost, 4) as rounded_cost
FROM baked_goods;

SELECT ROUND(distance, 2) as distance_from_market
FROM bakeries;

-- MAX función para determinar el mayor valor total

SELECT id, MAX(ingredients_cost, packaging_cost)
FROM baked_goods;

SELECT id, MIN(cook_time, cool_down_time)
FROM baked_goods;

-- La manipulación de cadenas

SELECT city || ' ' || state as location
FROM bakeries;

SELECT first_name || ' ' || last_name as full_name
FROM bakeries;


SELECT id, REPLACE(ingredients,'_',' ') as item_ingredients
from baked_goods;

-- reemplazar esa cadena con una cadena vacía, para "eliminarla" de manera efectiva.

SELECT REPLACE(ingredients,'enriched_','') as item_ingredients
FROM baked_goods;