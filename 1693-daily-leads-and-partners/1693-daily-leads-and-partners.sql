# 각 date_id 및 make_name에 대해 고유 리드_id 및 고유 파트너_id의 수를 구합니다.
SELECT
    date_id, 
    make_name, 
    COUNT(DISTINCT lead_id) AS unique_leads, 
    COUNT(DISTINCT partner_id) AS unique_partners
FROM 
    DailySales
GROUP BY 
    date_id, 
    make_name

