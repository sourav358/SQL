

--Foreign key constraints

-- Case1 : we need to create a new table
create table test_Primary_key(
ID int primary key,
name varchar(256)
)

insert into test_Primary_key values(1,'sourav'),(2,'gyan'),(3,'vivek')

select * from test_Primary_key

create table test_foreign_key(
ID int foreign key references test_Primary_key(ID),
course varchar(256)
)

insert into test_foreign_key values(1,'A')

select * from test_foreign_key

insert into test_foreign_key values(null,'B')

insert into test_foreign_key values(5,'C')


---Case 2: Table Alraedy exists
create table test_foreign_key_2(ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (ID) references test_Primary_key(id)