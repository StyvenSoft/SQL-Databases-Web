-- 1,000 clientes. En febrero, 200 clientes se registran y 250 cancelan.
-- La tasa de rotación para febrero sería: Cancellation / Total subscribers = 250 / 1000 + 200 = 20.8%
SELECT COUNT(DISTINCT user_id) AS enrollments,
  COUNT(
    CASE
      WHEN strftime("%m", cancel_date) = '03' THEN user_id
    END
  ) AS march_cancellations,
  ROUND(
    100.0 * COUNT(
      CASE
        WHEN strftime("%m", cancel_date) = '03' THEN user_id
      END
    ) / COUNT(DISTINCT user_id)
  ) AS churn_rate
FROM pro_users
WHERE signup_date < '2017-04-01'
  AND (
    (cancel_date IS NULL)
    OR (cancel_date > '2017-03-01')
  );