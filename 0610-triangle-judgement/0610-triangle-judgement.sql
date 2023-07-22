# 세 선분마다 삼각형을 형성할 수 있는지 여부를 보고하는 SQL 쿼리를 작성합니다.

## 1. IF문 - 효율 안 좋음..
# SELECT x, y, z,
#   IF(x+y>z AND x+z>y AND y+z>x, 'Yes','No') AS triangle
# FROM Triangle

## 2. CASE문 - 더 빠름
SELECT x, y, z,
  CASE WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes'
  ELSE'No' END AS triangle
FROM Triangle
