-- SQL intenta ser lo más preciso posible sin redondear.

-- Podemos hacer que la tabla de resultados sea más fácil de leer usando la ROUND() función.

SELECT ROUND(price, 0)
FROM fake_apps;


-- Regresemos la namecolumna y una pricecolumna redondeada .

SELECT name, ROUND(price, 0)
FROM fake_apps;

-- Redondea este resultado a 2 decimales.

SELECT ROUND(AVG(price), 2)
FROM fake_apps;