- - ====================
- -       customers
- - ====================
insert into customers (customer_id,name,city, email,signup_date) 
values 
		(1,'Rahul','Chennai','rahul@gmail.com','2023-01-10'),
		(2,'Anita','Bangalore','anita@gmail.com','2023-02-15'),
		(3,'Kiran','Hyderabad','kiran@gmail.com','2023-03-12'),
		(4,'Priya','Chennai','priya@gmail.com','2023-04-01'),
		(5,'Arjun','Mumbai','arjun@gmail.com','2023-05-20'),
		(6,'Sneha','Delhi','sneha@gmail.com','2023-06-18'),
		(7,'Vikram','Pune','vikram@gmail.com','2023-07-25'),
		(8,'Meena','Chennai','meena@gmail.com','2023-08-05'),
		(9,'Ravi','Hyderabad','ravi@gmail.com','2023-09-10'),
		(10,'Divya','Bangalore','divya@gmail.com','2023-10-12');

							/*	select * from customers;*/

- - ==================
- -     orders
- - ==================
insert into orders ( order_id,customer_id,order_date,total_amount)
	values 
			(1,1,'2024-01-10',54000),
			(2,2,'2024-01-15',20000),
			(3,3,'2024-02-01',22000),
			(4,4,'2024-02-10',1500),
			(5,5,'2024-02-20',800),
			(6,6,'2024-03-05',12000),
			(7,7,'2024-03-10',25000),
			(8,8,'2024-03-15',500),
			(9,9,'2024-04-01',30000),
			(10,10,'2024-04-05',7000),
			(11,1,'2024-04-10',2000),
			(12,2,'2024-04-15',50000),
			(13,3,'2024-04-20',1500),
			(14,4,'2024-05-01',800),
			(15,5,'2024-05-05',12000);
	
						/*select * from orders*/

- - ======================
- -     products
- - ======================

  INSERT INTO Products 
VALUES
		(1,'Laptop','Electronics',50000),
		(2,'Phone','Electronics',20000),
		(3,'Headphones','Accessories',2000),
		(4,'Keyboard','Accessories',1500),
		(5,'Mouse','Accessories',800),
		(6,'Monitor','Electronics',12000),
		(7,'Tablet','Electronics',25000),
		(8,'Charger','Accessories',500),
		(9,'Camera','Electronics',30000),
		(10,'Smartwatch','Electronics',7000);


		/*select * from products*/
	
- - ==========================
- -      orderdetails
- - ==========================
INSERT INTO OrderDetails 
		VALUES
				(1,1,1,1),
				(2,1,3,2),
				(3,2,2,1),
				(4,3,2,1),
				(5,3,3,1),
				(6,4,4,1),
				(7,5,5,1),
				(8,6,6,1),
				(9,7,7,1),
				(10,8,8,1),
				(11,9,9,1),
				(12,10,10,1),
				(13,11,3,1),
				(14,12,1,1),
				(15,13,4,1),
				(16,14,5,1),
				(17,15,6,1),
				(18,5,3,2),
				(19,7,2,1),
				(20,9,1,1);
		
