CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT zz.name
FROM person_visits pv
         JOIN pizzeria zz ON pv.pizzeria_id = zz.id
         JOIN person p on pv.person_id = p.id
WHERE pv.visit_date = '2022-01-08' AND p.name = 'Dmitriy';