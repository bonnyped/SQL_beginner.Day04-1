SELECT vgd.generated_dates missing_dates
FROM v_generated_dates vgd
EXCEPT
SELECT pv.visit_date
FROM person_visits pv
ORDER BY 1;