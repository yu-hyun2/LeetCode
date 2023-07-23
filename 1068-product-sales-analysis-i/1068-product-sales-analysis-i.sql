# Sales 테이블의 각 sale_id에 대한 product_name, 연도 및 가격을 보고하는 SQL 쿼리를 작성합니다.
SELECT P.product_name, year, price
FROM Sales S JOIN Product P ON S.product_id = P.product_id
GROUP BY sale_id