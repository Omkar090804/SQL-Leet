SELECT 
    r.contest_id,
    ROUND((COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM users)), 2) AS percentage
FROM 
    register r
GROUP BY 
    r.contest_id
ORDER BY 
    percentage DESC,
    r.contest_id ASC;
