-- Here I will start writing our queries
-- 1 normal selecttion
select * from supplier;

-- 2 using where
select name, price from product
where price > 100;

-- 3 ordered by
select name from customer
order by name desc;

-- 4 joins
select c.name, o.order_id
from customer c
join "order" o on c.customer_id = o.customer_id;

-- 5 join and where
select e.name, o.total_amount
from employee e
join "order" o on e.employee_id = o.employee_id
where o.total_amount > 300;

-- 6 joining 3 tables
select o.order_id, p.name, oi.quantity
from "order" o
join order_items oi on o.order_id = oi.order_id
join product p on oi.product_id = p.product_id;

-- 7 count
select count(*) from product;

-- 8 sum
select sum(total_amount) from "order";

-- 9 avg
select avg(price) from product;

-- 10 grouped by
select supplier_id, count(product_id)
from product
group by supplier_id;

-- 11 grouped by and join
select s.name, count(p.product_id)
from supplier s
join product p on s.supplier_id = p.supplier_id
group by s.name;

-- 12 max
select max(total_amount) from "order";

-- 13 min
select min(price) from product;

-- 14 join and ordered by
select c.name, o.order_date
from customer c
join "order" o on c.customer_id = o.customer_id
order by o.order_date;

-- 15 where and join
select p.name, oi.quantity
from product p
join order_items oi on p.product_id = oi.product_id
where oi.quantity > 1;

-- 16 date filter
select order_id, order_date
from "order"
where order_date >= '2025-01-03';

-- 17 joining and count
select c.name, count(o.order_id)
from customer c
join "order" o on c.customer_id = o.customer_id
group by c.name;

-- 18 joining and sum
select e.name, sum(o.total_amount)
from employee e
join "order" o on e.employee_id = o.employee_id
group by e.name;

