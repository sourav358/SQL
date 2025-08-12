
select * from Customers

select * from Orders

select * from Products

--1) Identify pairs of customers who live in the same country
select c.CustomerName,d.CustomerName from Customers c  join customers d on c.Country=d.Country and c.CustomerID <> d.CustomerID
and c.CustomerID> d.CustomerID

--2) Find the customer who has spent the most on their orders
select customername from
(select CustomerName, sum(price)[amount spent],DENSE_RANK() over (order by sum(price)desc)[DR]
from customers c inner join orders o on c.CustomerID=o.CustomerID 
inner join products p on o.ProductID=p.ProductID group by CustomerName) m where DR=1

--3) Find customers who have ordered more than one type of products
select CustomerName from Customers c right join orders o on c.CustomerID = o.CustomerID 
group by CustomerName
having count(productID)>1

--4) List all products and their corresponding orders, using a RIGHT JOIN, Including products that have never been ordered.
	select OrderID,p.ProductID,ProductName from orders o right join Products p on o.ProductID=p.ProductID
--5) Retrieve all orders by customers from USA
	select OrderID from customers c inner join orders o on c.CustomerID=O.CustomerID where country in ('USA')
--6) Find the name of customers who have ordered a product price above $500
	select distinct CustomerName from Customers c inner join Orders o on o.CustomerID= c.CustomerID inner join 
	products p on p.ProductID=o.ProductID where price >500
--7) Find customers who have ordered the same product more than once
select distinct m.customerName from
	(select CustomerName,ProductID, count(orderid)[count] from Customers c inner join Orders o on c.CustomerID = o.CustomerID 
	group by CustomerName,ProductID having count(orderid)>1) m