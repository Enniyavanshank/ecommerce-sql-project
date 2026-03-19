-- ===================
--   /* TABLES */
-- ===================

  create table customers 
(
	customer_id int primary key,
	name varchar(100) not null,
	city varchar(100),
	email varchar(100),
	signup_date date
);

create table  orders 
(
	order_id int primary key,
	customer_id int,
	order_date date not null,
	total_amount decimal(10,2),
	foreign key (customer_id) references  customers (customer_id)
);

create table products (
    product_id int primary key,
    product_name varchar(50),
    category varchar(50),
    price decimal(10,2)


create table orderdetails
(
	order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
