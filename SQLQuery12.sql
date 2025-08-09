

select * from dbo.sales

select max(totalamount)[Maximum Amount] from dbo.Sales

select max(saledate)[Max salesDate] from dbo.Sales

select max(paymentmethod)[Pay Method] from dbo.sales

--maximum quantity sold for each product id

select productid,max(quantity)[max Quantity] from dbo.Sales
group by productid

select * from dbo.sales

--Maximum total amount for all distinct datea in sales date column
select saledate,max(totalamount)[Maximum Total amount] from dbo.sales
group by saledate