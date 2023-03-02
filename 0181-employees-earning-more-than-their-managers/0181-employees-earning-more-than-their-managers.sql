# Write your MySQL query statement below
SELECT A.name as Employee
FROM Employee A LEFT JOIN Employee B on A.managerId = B.id
WHERE B.salary < A.salary