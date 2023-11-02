CREATE VIEW v_price_with_discount AS
(SELECT p.name,
       mn.pizza_name,
       mn.price,
       mn.price * 0.9 disount_price
FROM person_order po
         JOIN menu mn ON po.menu_id = mn.id
         JOIN person p on po.person_id = p.id
ORDER BY 1, 2);
