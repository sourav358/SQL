
create database constraints
--constraints are certain condition that can be applied on columns of a table & these conditions are to be followed while
--inserting records into the table

--Not Null constraints
use constraints

--Case1:we will have to create a new table 

create table test_not_null(
e_id int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.columns where table_name like 'test_not_null'

insert into test_not_null values (1,23,'vivek')

insert into test_not_null values (null,23,'vivek')

insert into test_not_null values (1,null,'vivek')


-- CASE2: table already exists
-- we want to make firstname column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values(1,2,null)

alter table test_not_null
alter column age tinyint not  null

insert into test_not_null values(1,null,'raj')



