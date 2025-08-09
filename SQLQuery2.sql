

select * from[dbo].[Employees]
where employeeId = 2

select Employeeid,firstname from[dbo].[Employees]
where employeeId = 2


select * from dbo.employees where salary>=75000.00

select firstname, lastname, Department, salary
from dbo.employees where salary<75000.00

select distinct firstname, lastname, Department, salary
from dbo.employees where salary<75000.00