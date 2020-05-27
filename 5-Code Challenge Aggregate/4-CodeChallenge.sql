
-- Ordénelos por sus pagos totales (de mayor a menor).

-- Uso SUM(), WHERE, GROUP BY, y ORDER BY.

SELECT user_id, SUM(amount)
FROM payments
WHERE status = 'paid'
GROUP BY user_id
ORDER BY SUM(amount) DESC;