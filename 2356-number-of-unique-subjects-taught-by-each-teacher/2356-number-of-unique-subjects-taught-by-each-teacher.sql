# 각 교사가 대학에서 가르치는 고유 과목의 수를 계산합니다.
SELECT teacher_id, count(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
