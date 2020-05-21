-- La news tabla tiene las siguientes columnas:

/*
    id          - el identificador del artículo
    title       - el título del artículo
    publisher   - el editor del artículo
    category    - la categoría del artículo
    timestamp   - la hora de publicación
    url         - la dirección web del artículo
*/

-- Ordene la mesa por title(de AZ).

-- Seleccione solo las columnas titley publisher.

SELECT title, publisher
FROM news
ORDER BY title;