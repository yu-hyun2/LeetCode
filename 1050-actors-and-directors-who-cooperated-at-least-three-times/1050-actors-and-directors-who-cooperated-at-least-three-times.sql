# Write your MySQL query statement below
# 배우가 감독과 세 번 이상 협력한 쌍(배우_id, 감독_id)을 제공하는 보고서에 대한 SQL 쿼리를 작성합니다.
# 결과 테이블을 임의의 순서로 반환합니다.

SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(actor_id) >= 3