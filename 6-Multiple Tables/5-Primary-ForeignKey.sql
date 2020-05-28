
-- Cuando la clave primaria para una tabla aparece en una tabla diferente, se denomina clave foránea .

-- Entonces, customer_ides una clave principal cuando aparece en customers, pero una clave externa cuando aparece en orders.

-- Realice una unión interna de classesy studentsutilizando las claves primarias y externas descritas anteriormente, y seleccione todas las columnas.

SELECT *
FROM classes
JOIN students
  ON classes.id = students.class_id;