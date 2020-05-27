
-- Su resultado debe tener dos columnas, pay_datey total amount, ordenadas por la última descendente.

-- Esto solo debe incluir pagos exitosos ( status = 'paid').

-- Uso SUM(), GROUP BY y ORDER BY.

SELECT pay_date, SUM(amount)
FROM payments
WHERE status = 'paid'
GROUP BY pay_date
ORDER BY SUM(amount) DESC;