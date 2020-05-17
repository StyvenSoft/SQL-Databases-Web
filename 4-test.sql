-- Los parámetros UTM son etiquetas especiales que los propietarios de sitios agregan a sus 
-- páginas para rastrear en qué sitio web estaba un usuario antes de llegar al sitio web.

 SELECT utm_source,
 	COUNT(DISTINCT user_id) AS num_users
FROM page_visits
GROUP BY 1
ORDER BY 2 DESC;