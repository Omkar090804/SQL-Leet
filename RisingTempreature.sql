# Write your MySQL query statement below

SELECT w2.id               #w1,w2 are instances of table weahter
FROM weather w1 
JOIN weather w2 
ON DATEDIFF(w2.recordDate, w1.recordDate) = 1  
AND w2.temperature > w1.temperature;
