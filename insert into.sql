

select *from dbo.Employees


insert into dbo.Employees(EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values (6,'sourav','kumar','IT',70000,'2025-08-09')

insert into dbo.Employees(EmployeeID,FirstName,LastName)
values(7,'gyan','ranjan')

insert into dbo.Employees
values(8,'vivek','kumar','IT',80000,'2025-08-09')


select * from INFORMATION_SCHEMA.columns
where table_name ='Employees'