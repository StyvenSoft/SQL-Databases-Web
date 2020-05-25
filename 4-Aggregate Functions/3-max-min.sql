-- Las funciones MAX() y MIN()devuelven los valores más altos y más bajos en una columna, respectivamente.

-- MIN() funciona de la misma manera pero hace exactamente lo contrario; devuelve el valor más pequeño.

SELECT MAX(downloads)
FROM fake_apps;


-- ¿Cuál es la menor cantidad de veces que se ha descargado una aplicación?

SELECT MIN(downloads)
FROM fake_apps;