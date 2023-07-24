# 각 날짜별로 판매된 다양한 제품의 수와 이름을 찾습니다.
# 각 날짜별로 판매된 제품 이름은 사전 순으로 정렬해야 합니다.
# sell_date 순으로 정렬된 결과 테이블을 반환합니다.

SELECT 
    sell_date, 
    count(DISTINCT product) AS num_sold, 
    GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date