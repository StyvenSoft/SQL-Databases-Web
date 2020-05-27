
-- Cuando los usuarios pagan exitosamente Codeflix ( status = 'paid'), ¿cuál es el monto promedio de pago?

SELECT AVG(amount)
FROM payments
WHERE status = 'paid';