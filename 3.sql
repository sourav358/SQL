

select * from dbo.Customers

select * from dbo.Orders

select * from customers where customer_id in(
select distinct customer_id from orders where order_date between '2024-08-01' and '2024-08-31'
)

select * from Customers where customer_id in(
select distinct customer_id from Orders where order_date not between '2024-08-01' and '2024-08-31'
)

--Fetch the data from employees table where salary > average salary
select * from Employees where salary >(
select avg(salary) from employees)

select avg(salary) from Employees


