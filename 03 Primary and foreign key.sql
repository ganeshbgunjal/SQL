show databases;
use db1;

-- primary key identifies each record uniquely. it avoid record duplication. also null is not allowed.

create table tbl2 (
id int primary key,
name varchar(20),
age int
);

select * from tbl2;

insert into tbl2(id,name,age) values(1,'ganaa',33),(2,'nana',23),(3,'cutuu',25);

-- but if we insert same record again it will not accept or insert due to primary key. 

-- Auto_increment:--  it increases count to 1. no need to give explicitely.
-- Unique key:- it looks same as primary key. but slightely changes. both have same function. primrary key can be use once and 
-- unique key can be used on multiple column. unique key can hold null values.


-- Composite primary key:- primary key on 2 columns at a time. that 2 columns should be unique. means fname and lname must be unique.

create table tbl3 (
fname varchar(20),
lname varchar(20),
primary key(fname,lname)
);

select * from tbl3;
insert into tbl3(fname,lname) values('ganesh','gunjal'),('ganesh','gunjal');  -- it will not insert due to composite key. 
-- also it will not take null value.

-- UNIQUE KEY:- 
create table tbl4 (
id int primary key auto_increment,
fname varchar(20),
lname varchar(20),
unique key(fname,lname)
);

select * from tbl4;
insert into tbl4(fname,lname) values('ganesh','gunjal'),('ganesh',null); -- it will save data because of unique key.


