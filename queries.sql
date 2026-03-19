- - ==========================
- -    /*  Total Revenue */
- - ==============================

	select sum(quantity* price) as total_revenue
from products p
join orderdetails od
on p.product_id = od.product_id;

- - =============================									
- -  /* Revenue per Customer */
- - =============================
	
select c.name, sum(price * quantity) as total_revenue
from customers c 
join orders o
on c.customer_id = o.customer_id
join orderdetails od
on o.order_id = od.order_id
join products p
on p.product_id = od.product_id
group by c.name
order by total_revenue desc;


- - =========================
- -  /* Top Customers */
- - =========================
with cte_customer_spending as 
(
	select c.name, sum(price * quantity) as total_spent
	from customers c 
	join orders o
	on c.customer_id = o.customer_id
	join orderdetails od
	on o.order_id = od.order_id
	join products p
	on p.product_id = od.product_id
	group by c.name
	
)
select *, rank() over (order by total_spent desc) as top_customer 
from cte_customer_spending


- - =============================						
- -    /* montly sales */
- - ==============================
	
select month(order_date)as month , sum(quantity * price) as total_sales 
from orderdetails od
join products p
on od.product_id = p.product_id
join orders o
on o.order_id = od.order_id
group by month(order_date)

									
- - ==================================								
- -   	/* top selling products  */
- - ====================================

	select top 3  p.product_name, sum(od.quantity) as total_sold
from orderdetails od
join products p on od.product_id = p.product_id
group by p.product_name
order by total_sold desc;


- - ================================================================
- -  /* month over month growth  */ // slaes - previous month //
- - ==================================================================
	
select month,
total_orders,
previous_orders,
total_orders - previous_orders as montly_growth
from 
	(
		select datepart(month,order_date)as month,count (order_id) as total_orders,
		coalesce(lag(count (order_id)) 
			over (order by datepart(month,order_date)),0) as previous_orders
		from orders 
		group by datepart(month,order_date)
	
	)t


- - ==========================	
- - 	/* MoM Revenue */
- - ============================

select month, total_sales ,
previous_month_sales,
(total_sales - previous_month_sales) as mom_revenue 
from 	
(
		select 
		month,
		total_sales ,
		lag(total_sales ) over (order by month) as previous_month_sales
		from 
			  (
				 select month(o.order_date) as month,
				 sum(quantity* price) as total_sales 
				 from orders o
				 join orderdetails od
				 on o.order_id = od.order_id
				 join products p
				 on p.product_id = od.product_id
				 group by month(o.order_date)
    		 ) as e
)as t 


