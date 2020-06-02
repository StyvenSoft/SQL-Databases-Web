
-- La columna membership_plan_iden premium_usersdebe coincidir con la columna iden plans.

/*
Únete plansy premium_usersy seleccione:

user_id desde premium_users
description desde plans
*/

SELECT premium_users.user_id,
   plans.description
FROM premium_users
JOIN plans
  ON plans.id = premium_users.membership_plan_id;