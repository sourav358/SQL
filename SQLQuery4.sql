

select * from employeerecords
where lastname = 'Miller' and EmployeeID=3

select * from employeerecords
where lastname = 'Miller' and EmployeeID='3'

select * from dbo.employeerecords
where department = 'HR' or department ='Finance'

select * from dbo.employeerecords
where (department = 'HR' or Department = 'Finance') and salary = 60000