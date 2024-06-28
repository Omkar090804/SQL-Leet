# Write your MySQL query statement below
  GPT  IT

  
with query as (SELECT start.machine_id, start.process_id, end.timestamp - start.timestamp as time FROM (SELECT * FROM Activity
WHERE activity_type="start") start
INNER JOIN 
(SELECT * FROM Activity
WHERE activity_type="end") end
ON start.machine_id = end.machine_id AND start.process_id = end.process_id)

SELECT machine_id, ROUND(avg(time),3) as processing_time
FROM query
GROUP BY machine_id;
