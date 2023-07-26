# 각 제품의 평균 판매 가격을 구하는 SQL 쿼리를 작성합니다. 평균_가격은 소수점 둘째 자리에서 반올림해야 합니다.
SELECT 
  P.product_id, 
  ROUND(SUM(P.price * U.units)/SUM(U.units),2) 
  AS average_price
FROM Prices P JOIN UnitsSold U 
    ON P.product_id = U.product_id 
        AND U.purchase_date BETWEEN start_date AND end_date
GROUP BY P.product_id

