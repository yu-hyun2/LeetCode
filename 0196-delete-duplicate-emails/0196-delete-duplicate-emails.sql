DELETE A
FROM Person A Join Person B ON A.email = B.email
WHERE A.id > B.id