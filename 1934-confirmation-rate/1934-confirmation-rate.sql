/* 
사용자의 확인율은 '확인됨' 메시지 수를 요청된 총 확인 메시지 수로 나눈 값입니다. 확인 메시지를 요청하지 않은 사용자의 확인율은 0입니다. 확인율은 소수점 둘째 자리에서 반올림합니다.

각 사용자의 확인율을 구하는 SQL 쿼리를 작성합니다.
*/

SELECT 
  S.user_id,
  round(AVG(CASE ACTION WHEN 'confirmed' THEN 1 ELSE 0 END),2) AS CONFIRMATION_RATE
FROM Signups S, Confirmations C
WHERE S.user_id = C.user_id(+)
GROUP BY S.user_id
