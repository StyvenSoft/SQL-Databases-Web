
/*
Songify ha agregado algunas canciones nuevas a su catálogo.

Combine songs y bonus_songs use UNION y seleccione todas las columnas del resultado.

Como la songs tabla es muy grande, solo mire una muestra LIMIT colocando los resultados en 10filas.

*/

SELECT * 
FROM songs
UNION
SELECT * 
FROM bonus_songs LIMIT 10;