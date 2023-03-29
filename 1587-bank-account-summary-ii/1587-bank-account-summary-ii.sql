# 잔액이 10000보다 큰 사용자의 이름과 잔액을 보고하는 SQL 쿼리를 작성합니다. 
# 계정의 잔액은 해당 계정과 관련된 모든 거래 금액의 합계와 같습니다.
# 결과 테이블을 임의의 순서로 반환합니다.

SELECT U.name, sum(T.amount) AS balance
FROM Users U JOIN Transactions T ON U.account = T.account
GROUP BY T.account
HAVING sum(amount) > 10000