
-- Use COUNT(), GROUP BY y ORDER BY para crear este resultado y ordenar estos datos aumentando duration.

SELECT
  ROUND(watch_duration_in_minutes,0) as duration,
  COUNT(*) as count
FROM watch_history
GROUP BY duration
ORDER BY duration ASC;