

--Order of Execution 

select * from Employees

select distinct top 1 Department, avg(salary)[Avg Salary] from dbo.Employees
where salary>50000
group by department
having avg(salary)>55000
order by department 

--From & join
--where
--group by
--having
--select
--distinct
--order by
-- top

select distinct top 1 Department, avg(salary)[Avg Salary] from dbo.Employees
where salary>50000
group by department
having avg(salary)>55000
order by department 