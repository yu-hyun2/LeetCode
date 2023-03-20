# 자신의 글을 하나 이상 조회한 모든 작성자를 찾기 위해 SQL 쿼리를 작성합니다.
# 아이디별로 오름차순으로 정렬된 결과 테이블을 반환합니다.

SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY author_id
HAVING count(*)>=1 
ORDER BY id;