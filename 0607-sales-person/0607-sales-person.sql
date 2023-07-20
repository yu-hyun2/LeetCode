# # "RED"라는 이름으로 회사와 관련된 주문이 없는 모든 영업 사원의 이름을 찾습니다.
SELECT DISTINCT S.name
FROM SalesPerson S LEFT JOIN Orders O ON S.sales_id = O.sales_id
WHERE S.sales_id NOT IN (
  SELECT DISTINCT O.sales_id 
  FROM Orders O JOIN Company C ON C.com_id = O.com_id
  WHERE C.name = "RED" )
