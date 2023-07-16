# 이전 날짜(어제)와 비교하여 온도가 더 높은 모든 날짜의 Id를 찾기 위한 SQL 쿼리를 작성합니다.

SELECT A.id
FROM Weather A, Weather B 
WHERE DATEDIFF(A.recordDate, B.recordDate)=1 AND A.temperature > B.temperature

