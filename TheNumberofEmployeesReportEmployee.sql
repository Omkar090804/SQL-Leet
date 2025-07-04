# Write your MySQL query statement below

SELECT 
    e.employee_id, 
    e.name, 
    COUNT(em.employee_id) AS reports_count,
    ROUND(AVG(em.age), 0) AS average_age
FROM Employees e
JOIN Employees em ON em.reports_to = e.employee_id
GROUP BY e.employee_id, e.name
order by employee_id ;
