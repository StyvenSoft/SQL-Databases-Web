

-- Use una consulta y cambie el nombre de los resultados a maxy min.

--  ¿cuál es la duración del evento de observación individual más largo? ¿Cuál es la duración del más corto?

SELECT MAX(watch_duration_in_minutes) AS DurationMax, MIN(watch_duration_in_minutes) AS DurationMin
FROM watch_history;