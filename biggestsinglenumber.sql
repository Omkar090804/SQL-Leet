
# Write your MySQL query statement below

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN 
   (                #to find number which appears just once
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
   );
