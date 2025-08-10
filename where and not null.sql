



select  * from dbo.EmployeeRecords


select * from dbo.employeeRecords
where not firstname='john' and not salary = 60000

select * from dbo.EmployeeRecords
where not lastname='Miller' or not department ='HR'

select * from dbo.EmployeeRecords
where salary between 75000 and 85000

select * from dbo.EmployeeRecords
where salary>=75000 and salary<=85000

select * from dbo.EmployeeRecords
where salary not between 75000 and 85000

select * from dbo.EmployeeRecords
where not salary  between 75000 and 85000

select * from dbo.EmployeeRecords
where department= 'HR' or department='IT'

select * from dbo.EmployeeRecords
where department in('HR','IT')

select * from dbo.EmployeeRecords
where department not in('HR','IT')
