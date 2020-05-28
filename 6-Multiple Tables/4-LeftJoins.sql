
-- Qué pasa si queremos combinar dos tablas y mantener algunas de las filas no coincidentes?

-- SQL nos permite hacer esto a través de un comando llamado LEFT JOIN.

-- Una unión izquierda mantendrá todas las filas de la primera tabla, independientemente de 
-- si hay una fila coincidente en la segunda tabla.

SELECT *
FROM table1
LEFT JOIN table2
  ON table1.c2 = table2.c2;


  -- Comience realizando una unión izquierda de newspapertabla y onlinetabla en sus idcolumnas y seleccionando todas las columnas.

SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id;

-- Agregue una segunda consulta después de la primera que agrega la siguiente WHEREcláusula y condición


SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id
WHERE online.id IS NULL;