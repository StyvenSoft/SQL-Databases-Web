
-- A veces, solo queremos combinar todas las filas de una tabla con todas las filas de otra tabla.

-- si tuviéramos una tabla shirtsy una tabla de pants, podríamos querer conocer todas las combinaciones posibles para crear diferentes conjuntos.

SELECT shirts.shirt_color,
   pants.pants_color
FROM shirts
CROSS JOIN pants;

/*
Use COUNT(*)para contar el número de filas y una WHEREcláusula para restringir a dos condiciones:

start_month <= 3
end_month >= 3

*/

SELECT COUNT(*)
FROM newspaper
WHERE start_month <= 3 
  AND end_month >= 3;

-- Nuestra base de datos contiene otra tabla llamada monthsque contiene los números entre 1 y 12.

-- Seleccione todas las columnas de la unión cruzada de newspapery months.

SELECT *
FROM newspaper
CROSS JOIN months;

/*
Cree una tercera consulta donde agregue una WHERE declaración a su unión cruzada para restringir a dos condiciones:

start_month <= month
end_month >= month

*/

SELECT *
FROM newspaper
CROSS JOIN months
WHERE start_month <= month AND end_month >= month;

-- Cree una consulta final donde agregue cada mes para contar la cantidad de suscriptores.

SELECT month,
   COUNT(*) AS 'subscribers'
FROM newspaper
CROSS JOIN months
WHERE start_month <= month 
   AND end_month >= month
GROUP BY month;

