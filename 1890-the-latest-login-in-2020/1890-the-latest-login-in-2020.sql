# 2020년 한 해 동안 모든 사용자의 최신 로그인을 보고하는 SQL 쿼리를 작성합니다. 2020년에 로그인하지 않은 사용자는 포함하지 마세요.

SELECT 
  L.user_id, 
  L.time_stamp AS last_stamp
FROM (SELECT 
        user_id, 
        time_stamp, 
        ROW_NUMBER() OVER(partition by user_id 
          order by time_stamp desc) AS NUM
      FROM Logins
      WHERE time_stamp LIKE '2020-%') L
WHERE NUM=1
