-- These codes are too insert information to my database
insert into supplier (supplier_id, name, phone) values
(1, 'Ahmed Ali', '0501111111'),
(2, 'Mohammed Hassan', '0502222222'),
(3, 'Sara Khaled', '0503333333'),
(4, 'Fatima Youssef', '0504444444'),
(5, 'Ali Mahmoud', '0505555555'),
(6, 'Noor Abdullah', '0506666666');

insert into product (product_id, name, price, stock, supplier_id) values
(1, 'Laptop', 1200.00, 10, 1),
(2, 'Phone', 800.00, 20, 2),
(3, 'Headphones', 150.00, 30, 3),
(4, 'Keyboard', 50.00, 40, 4),
(5, 'Mouse', 25.00, 50, 5),
(6, 'Monitor', 300.00, 15, 6);

insert into customer (customer_id, name, phone) values
(1, 'Omar Saleh', '0511111111'),
(2, 'Lina Ahmed', '0522222222'),
(3, 'Yousef Karim', '0533333333'),
(4, 'Maya Hassan', '0544444444'),
(5, 'Hassan Adel', '0555555555'),
(6, 'Rana Nabil', '0566666666');

insert into employee (employee_id, name, phone) values
(1, 'Adam Smith', '0571111111'),
(2, 'Emily Johnson', '0572222222'),
(3, 'Daniel Brown', '0573333333'),
(4, 'Sophia Miller', '0574444444'),
(5, 'Michael Davis', '0575555555'),
(6, 'Olivia Wilson', '0576666666');

insert into "order" (order_id, order_date, total_amount, customer_id, employee_id) values
(1, '2025-01-01', 500.00, 1, 1),
(2, '2025-01-02', 1200.00, 2, 2),
(3, '2025-01-03', 300.00, 3, 3),
(4, '2025-01-04', 800.00, 4, 4),
(5, '2025-01-05', 150.00, 5, 5),
(6, '2025-01-06', 950.00, 6, 6);

insert into order_items (order_item_id, order_id, product_id, quantity) values
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 3, 4, 3),
(5, 4, 5, 2),
(6, 5, 6, 1);

insert into payment (payment_id, order_id, amount) values
(1, 1, 500.00),
(2, 2, 1200.00),
(3, 3, 300.00),
(4, 4, 800.00),
(5, 5, 150.00),
(6, 6, 950.00);

-- Here I applied updates to my tables
update supplier
set phone = '0599999999'
where supplier_id = 1;

update product
set price = 1100.00
where product_id = 1;

update customer
set phone = '0588888888'
where customer_id = 1;

update employee
set phone = '0577777777'
where employee_id = 1;

update "order"
set total_amount = 550.00
where order_id = 1;

update order_items
set quantity = 2
where order_item_id = 1;

update payment
set amount = 550.00
where payment_id = 1;

-- Here I applied deletion to my tables
delete from payment
where payment_id = 6;

delete from order_items
where order_item_id = 6;

delete from "order"
where order_id = 6;

delete from product
where product_id = 6;

delete from supplier
where supplier_id = 6;

delete from customer
where customer_id = 6;

delete from employee
where employee_id = 6;

-- Here is selections to give different results
select name, phone from supplier;

select name, price from product
where price > 100;

select * from customer
where customer_id = 1;

select name from employee
order by name;

select order_id, total_amount from "order"
where total_amount > 300;

select order_id, product_id, quantity from order_items
where quantity >= 2;

select order_id, amount from payment
order by amount desc;

