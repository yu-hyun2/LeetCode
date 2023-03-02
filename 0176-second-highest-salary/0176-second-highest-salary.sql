# Write your MySQL query statement below
# SELECT IFNULL(salary,'null') as SecondHighestSalary 
# FROM Employee
# ORDER BY salary
# LIMIT 1, 1;

SELECT IFNULL((SELECT DISTINCT salary 
                FROM Employee 
                ORDER BY salary DESC 
                LIMIT 1,1 ),null) AS SecondHighestSalary 


