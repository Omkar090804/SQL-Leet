# Write your MySQL query statement below
  
select activity_date as day, count(distinct user_id) as active_users
from Activity
group by activity_date
having datediff('2019-07-27',activity_date) < 30 and datediff('2019-07-27',activity_date) >=0;
