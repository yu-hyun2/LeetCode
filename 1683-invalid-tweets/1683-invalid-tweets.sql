# 유효하지 않은 트윗의 ID를 찾습니다. 트윗 콘텐츠에 사용된 글자 수가 15자를 초과하는 경우 해당 트윗은 유효하지 않습니다.
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15