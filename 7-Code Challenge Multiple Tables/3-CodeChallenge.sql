
/*
Use a LEFT JOINpara combinar usersy premium_usersy seleccione idde users.

La columna iden usersdebe coincidir con la columna user_iden premium_users.

Use una WHEREcláusula para limitar los resultados a los usuarios donde premium_users.user_id IS NULL. 
Esto eliminará a los usuarios premium y te dejará solo con usuarios gratuitos.

*/

SELECT users.id
FROM users
LEFT JOIN premium_users
	ON users.id = premium_users.user_id
WHERE premium_users.user_id IS NULL;