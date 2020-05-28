
-- Cuando realizamos una simple JOIN (a menudo llamada unión interna ) nuestro resultado solo incluye filas que coinciden con nuestra ONcondición.

-- Cuente la cantidad de suscriptores que usan un periódico impreso COUNT().

SELECT COUNT(*)
FROM newspaper;

-- Cuente la cantidad de suscriptores que usan un periódico en línea COUNT()

SELECT COUNT(*)
FROM online;

-- Unir newspapertabla y onlinetabla en sus idcolumnas (el ID único del suscriptor).

-- ¿Cuántas filas hay en esta tabla?

SELECT COUNT(*)
FROM newspaper
JOIN online
  ON newspaper.id = online.id;