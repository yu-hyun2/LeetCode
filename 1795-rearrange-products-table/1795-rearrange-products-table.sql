# 각 행에 (제품_id, 스토어, 가격)이 포함되도록 제품 테이블을 재정렬합니다. 스토어에서 제품을 사용할 수 없는 경우 결과 테이블에 해당 제품_id와 스토어 조합이 포함된 행을 포함하지 마십시오.

SELECT 
    product_id, 
    'store1' AS store, 
    store1 AS price 
FROM Products
WHERE store1 IS NOT NULL

UNION ALL 
SELECT 
    product_id, 
    'store2' AS store, 
    store2 AS price 
FROM Products
WHERE store2 IS NOT NULL

UNION ALL
SELECT 
    product_id, 
    'store3' AS store, 
    store3 AS price 
FROM Products
WHERE store3 IS NOT NULL
