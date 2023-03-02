# Write your MySQL query statement below
SELECT email
FROM Person
WHERE email is not null
GROUP BY email
HAVING count(*)>=2