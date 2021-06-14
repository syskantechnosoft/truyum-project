1.a. 
INSERT INTO menu_item(me_id, me_name, me_price, me_active, me_date_of_launch, me_category, me_free_delivery)
VALUES ('1','Sandwich','99.00', 'Yes', (str_to_date("15-03-17", "%d-%m-%y")), 'Main course', 'Yes');
INSERT INTO menu_item (me_id,me_name, me_price ,me_active, me_date_of_launch, me_category, me_free_delivery)
VALUES ('2,''Burger','129.00', 'Yes', (str_to_date("23-12-17",  "%d-%m-%y")), 'Main course', 'No');
1.b.
SELECT * FROM `truyum-data`.menu_item;
2.
SELECT * 
FROM `truyum-data`.menu_item
WHERE me_active = 'Yes' and me_date_of_launch > '20171201';
3.a. 
SELECT *
FROM `truyum-data`.menu_item
WHERE me_id = '1';
3.b.
UPDATE  `truyum-data`.menu_item
SET me_id = '1', me_name = 'Sandwich1', me_price = '129.9', me_active = 'No', me_date_of_launch = '010120',me_category = 'Main course', me_free_delivery='No'
WHERE me_id = '1';
4.a.
INSERT INTO user(us_id, us_name)
VALUES ('1','John Kenny');

5.a. 
select m.*
from menu_item as m
join cart as c on m.me_id=c.ct_me_id
where c.ct_us_id = 1;
5.b.
select sum(m.*)
from menu_item as m
join cart as c on m.me_id=c.ct_me_id
where c.ct_us_id = 1;
