
-- Use COUNT(), GROUP BY y ORDER BY para crear una lista de nombres y ocurrencias dentro de la userstabla.

SELECT first_name, COUNT(*) AS 'count'
FROM users
GROUP BY first_name
ORDER BY 2 DESC;