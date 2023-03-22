# 각 주식의 자본 이득/손실을 보고하는 SQL 쿼리를 작성합니다.
# 주식의 자본 이득/손실은 주식을 한 번 또는 여러 번 사고 판 후의 총 이득 또는 손실입니다.

SELECT stock_name, 
    SUM(CASE WHEN operation = 'Buy' THEN - price
    WHEN operation = 'Sell' THEN price
    END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name