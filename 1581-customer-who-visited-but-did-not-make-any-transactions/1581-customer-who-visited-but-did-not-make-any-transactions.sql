# 트랜잭션을 수행하지 않고 방문한 사용자의 ID와 이러한 유형의 방문 횟수를 찾기 위한 SQL 쿼리를 작성합니다.
# 원하는 순서대로 정렬된 결과 테이블을 반환합니다.
SELECT customer_id, count(V.customer_id) AS count_no_trans
FROM Visits V LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.visit_id IS NULL
GROUP BY V.customer_id

