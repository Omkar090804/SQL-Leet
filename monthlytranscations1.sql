# Write your MySQL query statement below
  
SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(amount) AS trans_total_amount,
    COUNT(CASE WHEN state = 'approved' THEN 1 END) AS approved_count,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM 
    transactions
GROUP BY 
    DATE_FORMAT(trans_date, '%Y-%m'), 
    country;
