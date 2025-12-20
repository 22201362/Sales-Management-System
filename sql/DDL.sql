--- I will start by creating the database
create database "sales";

-- Here I will create the tables
create table supplier (
    supplier_id int primary key,
    name VARCHAR(100) not null,
    phone VARCHAR(20)
);

create table product (
    product_id int primary key,
    name VARCHAR(100) not null,
    price NUMERIC(10,2) not null,
    stock int not null,
    supplier_id int,
    foreign key (supplier_id) references supplier(supplier_id)
);

create table customer (
    customer_id int primary key,
    name VARCHAR(100) not null,
    phone VARCHAR(20)
);

create table employee (
    employee_id int primary key,
    name VARCHAR(100) not null,
    phone VARCHAR(20)
);

create table "order" (
    order_id int primary key,
    order_date date not null,
    total_amount NUMERIC(10,2) not null,
    customer_id int,
    employee_id int,
    foreign key (customer_id) references customer(customer_id),
    foreign key (employee_id) references employee(employee_id)
);

CREATE TABLE order_items (
    order_item_id int primary,
    order_id int,
    product_id int,
    quantity int not null,
    foreign key (order_id) references "order"(order_id),
    foreign key (product_id) references product(product_id)
);

create table payment (
    payment_id int primary key,
    order_id int,
    amount NUMERIC(10,2) not null,
    foreign key (order_id) references "order"(order_id)
);
