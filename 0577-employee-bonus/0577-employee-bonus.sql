# 상여금이 1000 미만인 각 직원의 이름과 상여금을 보고하는 SQL 쿼리를 작성합니다.
SELECT name, bonus
FROM Employee E LEFT JOIN Bonus B ON E.empId = B.empId
WHERE bonus < 1000 or bonus IS NULL