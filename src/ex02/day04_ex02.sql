CREATE VIEW v_generated_dates AS
SELECT generated_dates::date
FROM generate_series('2022-01-01'::date, '2022-01-30'::date, '1 Day') AS generated_dates
ORDER BY 1;
