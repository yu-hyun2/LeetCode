# SQL 쿼리를 작성하여 부서 ID 열과 월별 매출 열이 있도록 테이블의 서식을 다시 지정합니다.

# # 1. CASE문
# SELECT id,
#     SUM(CASE WHEN Month = 'Jan' THEN revenue ELSE null END) AS Jan_Revenue,
#     SUM(CASE WHEN Month = 'Feb' THEN revenue ELSE null END) AS Feb_Revenue,
#     SUM(CASE WHEN Month = 'Mar' THEN revenue ELSE null END) AS Mar_Revenue,
#     SUM(CASE WHEN Month = 'Apr' THEN revenue ELSE null END) AS Apr_Revenue,
#     SUM(CASE WHEN Month = 'May' THEN revenue ELSE null END) AS May_Revenue,
#     SUM(CASE WHEN Month = 'Jun' THEN revenue ELSE null END) AS Jun_Revenue,
#     SUM(CASE WHEN Month = 'Jul' THEN revenue ELSE null END) AS Jul_Revenue,
#     SUM(CASE WHEN Month = 'Aug' THEN revenue ELSE null END) AS Aug_Revenue,
#     SUM(CASE WHEN Month = 'Sep' THEN revenue ELSE null END) AS Sep_Revenue,
#     SUM(CASE WHEN Month = 'Oct' THEN revenue ELSE null END) AS Oct_Revenue,
#     SUM(CASE WHEN Month = 'Nov' THEN revenue ELSE null END) AS Nov_Revenue,
#     SUM(CASE WHEN Month = 'Dec' THEN revenue ELSE null END) AS Dec_Revenue
# FROM Department
# GROUP BY id

# 2. IF문
SELECT id,
    SUM(IF(month = 'Jan', revenue, null)) AS Jan_Revenue,
    SUM(IF(month = 'Feb', revenue, null)) AS Feb_Revenue,
    SUM(IF(month = 'Mar', revenue, null)) AS Mar_Revenue,
    SUM(IF(month = 'Apr', revenue, null)) AS Apr_Revenue,
    SUM(IF(month = 'May', revenue, null)) AS May_Revenue,
    SUM(IF(month = 'Jun', revenue, null)) AS Jun_Revenue,
    SUM(IF(month = 'Jul', revenue, null)) AS Jul_Revenue,
    SUM(IF(month = 'Aug', revenue, null)) AS Aug_Revenue,
    SUM(IF(month = 'Sep', revenue, null)) AS Sep_Revenue,
    SUM(IF(month = 'Oct', revenue, null)) AS Oct_Revenue,
    SUM(IF(month = 'Nov', revenue, null)) AS Nov_Revenue,
    SUM(IF(month = 'Dec', revenue, null)) AS Dec_Revenue
FROM Department
GROUP BY id
