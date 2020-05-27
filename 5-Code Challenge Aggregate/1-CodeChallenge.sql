
-- Use COUNT()y un LIKEoperador para determinar la cantidad de usuarios que tienen un correo electrónico que termina en '.com'.


SELECT COUNT(*)
FROM users
WHERE email LIKE '%.com';