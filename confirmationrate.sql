# Write your MySQL query statement below

  GPT IT
  
SELECT s.user_id,
ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
FROM signups s
LEFT JOIN confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;
