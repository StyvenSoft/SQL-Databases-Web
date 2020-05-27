
-- Genere una tabla de identificadores de usuario y duración total de visualización para los usuarios que vieron más de 400 minutos de contenido.

-- Use SUM(), GROUP BY y HAVING para lograr esto.

SELECT user_id, 
   SUM(watch_duration_in_minutes)
FROM watch_history
GROUP BY user_id
HAVING SUM(watch_duration_in_minutes) > 400;