INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT (SELECT max(pv.id) + 1
        FROM person_visits pv),
       (SELECT p.id
        FROM person p
        WHERE p.name = 'Dmitriy'),
       (SELECT mn.pizzeria_id
        FROM menu mn
        WHERE mn.price < 800
        LIMIT 1),
        '2022-01-08'::date;
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;