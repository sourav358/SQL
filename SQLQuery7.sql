

select * from table1

select * from table2
-- full outer join= inner join + only left table + only right table  

select * from table1 full outer join table2 on table1.c1 = table2.c1

select a.c1,a.c2,b.c3 from table1 a full outer join table2 b on a.c1=b.c1

--not good to use full outer join as it increase the complexity and takes a lot of time