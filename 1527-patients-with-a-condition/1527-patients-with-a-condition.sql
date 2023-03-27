# 제1형 당뇨병 환자의 patient_id, patient_name 및 상태를 보고하는 SQL 쿼리를 작성합니다. 제1형 당뇨병은 항상 DIAB1 접두사로 시작합니다.
# 결과 테이블을 임의의 순서로 반환합니다.

SELECT *
FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%'