DELETE 
FROM Person 
WHERE id IN (SELECT id 
            FROM (
              SELECT id,row_number() 
                over(partition by email 
                ORDER BY id) AS rnum 
              FROM Person)a 
              WHERE rnum>1);