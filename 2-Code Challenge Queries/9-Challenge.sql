-- La categorycolumna contiene la categoría del artículo:

-- 'b' significa negocios
-- 't' significa tecnología
-- ¿Cuáles son los 20 artículos comerciales publicados más recientemente?

-- Selecciona todas las columnas.


-- Primero, filtramos nuestros resultados para category = 'b'usar una WHEREdeclaración:

SELECT *
FROM news
WHERE category = 'b';

-- clasificamos las entradas por las más recientes timestamp.

SELECT *
FROM news
WHERE category = 'b'
ORDER BY timestamp DESC;

-- Finalmente, limite los resultados a solo 20

SELECT *
FROM news
WHERE category = 'b'
ORDER BY timestamp DESC
LIMIT 20;