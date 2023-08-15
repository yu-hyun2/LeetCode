/* Write your PL/SQL query statement below 
가장 많은 수의 영화를 평가한 사용자의 이름을 찾으십시오. 
동점인 경우 사전순으로 더 작은 사용자 이름을 반환합니다.
February 2020에서 평균 평점이 가장 높은 영화 이름을 찾습니다.
동점인 경우 사전순으로 더 작은 영화 이름을 반환합니다.
*/

SELECT name AS results
FROM(
    SELECT U.name, count(*) AS cnt
    FROM Users U, MovieRating M
    WHERE U.user_id = M.user_id
    GROUP BY U.name
    ORDER BY CNT DESC, U.name
    )
WHERE ROWNUM <= 1

UNION ALL

SELECT TITLE
FROM
(SELECT MV.title, AVG(M.rating) as rate
FROM Movies MV, MovieRating M
WHERE M.movie_id = MV.movie_id AND M.created_at LIKE '2020-02%'
GROUP BY MV.TITLE
ORDER BY rate DESC, MV.title) 
WHERE ROWNUM <= 1
