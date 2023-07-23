# 각 사용자의 고유 ID를 표시하고, 사용자에게 고유 ID가 없는 경우 null로 대체합니다.
SELECT IFNULL(unique_id, null) AS unique_id, name
FROM Employees E LEFT JOIN EmployeeUNI U ON E.id = U.id