

select * from append1


select * from append

select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2

select c1,c2,c3 from append1
union
select c1,c2,c3 from append2

-- numbers of columns present in the select ist have to same
-- datatypes of columns have to be same
-- Order in which columns are written has to be the same

select c1,c2,c3 from append1
union
select c1,c3,c2 from append2

-- alias name which are specified in !st select statement will be assigned to column

select c1[Column1],c2[Column2],c3[Column] from append1
union
select c1[col1],c2[col2],c3[col3] from append2

