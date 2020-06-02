
/*
Use una combinación izquierda para combinar januaryy februarysobre user_idy seleccionar user_iddesde january.

Agregue la siguiente WHEREdeclaración para encontrar qué usuarios tocaron
canciones en enero, pero no en febrero

*/

WITH january AS (
  SELECT *
  FROM plays
  WHERE strftime("%m", play_date) = '01'
),
february AS (
  SELECT *
  FROM plays
  WHERE strftime("%m", play_date) = '02'

)
SELECT january.user_id
FROM january
LEFT JOIN february
	ON january.user_id = february.user_id
WHERE february.user_id IS NULL;