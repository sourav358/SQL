

select * from dbo.sales

select min(quantity)[minimum quantity]from dbo.sales

select min(saledate)[minimum sale date] from dbo.sales

select min(paymentmethod)[min pay method] from dbo.sales

--show minimum totalamount for each storeid

select storeid,min(totalamount)[min total amount]from dbo.sales
group by storeid