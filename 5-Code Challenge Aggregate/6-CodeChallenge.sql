
-- ¿cuántos minutos de contenido se transmitieron en Codeflix?

-- Use las funciones SUM() y ROUND() con la watch_historytabla.

SELECT ROUND(SUM(watch_duration_in_minutes), 0) 
FROM watch_history;
