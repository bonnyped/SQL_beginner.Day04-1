CREATE VIEW v_symmetric_union AS
(SELECT pv.person_id
FROM person_visits pv
WHERE pv.visit_date = '2022-01-02'
EXCEPT ALL
SELECT pv2.person_id
FROM person_visits pv2
WHERE pv2.visit_date = '2022-01-06')
UNION ALL
(SELECT pv2.person_id
FROM person_visits pv2
WHERE pv2.visit_date = '2022-01-06'
EXCEPT ALL
SELECT pv.person_id
FROM person_visits pv
WHERE pv.visit_date = '2022-01-02')
