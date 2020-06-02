
/*

Para cada mes en months, queremos saber si cada usuario en premium_usersestuvo activo o cancelado. Cruz unirse monthsy premium_usersy seleccione:

user_id desde premium_users
purchase_date desde premium_users
cancel_date desde premium_users
months desde months

*/

SELECT premium_users.user_id,
	premium_users.purchase_date,
  premium_users.cancel_date,
  months.months
FROM premium_users
CROSS JOIN months;