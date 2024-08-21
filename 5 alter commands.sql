show databases;
use db2;

-- alter commands use for changing table structure. 

create table emp (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20)
);

select * from emp;

insert into emp(fname,lname) values('a','aa'),('q','qq'),('w','ww'),('g','gg'),('h','hh');

-- add column
alter table emp
add column age int;

select * from emp;

-- modify column
alter table emp
modify age varchar(20);

desc emp;

select * from emp;

-- rename table name
alter table emp 
rename to ages;

select * from ages;

-- rename column
alter table ages
-- ALTER TABLE TableName CHANGE OldColumnName NewColumnName DataType;
change age agee int;

select * from ages;

-- delete any reocrd
delete from ages
where id = 5;

select * from ages;

-- delete without where will delete whole data of table.but not delet table... table is empty only.

-- drop column
alter table ages
drop column agee;

select * from ages;

desc ages;

-- drop primary key
alter table ages
drop primary key;
-- primary key will not drop. because it has auto increment column. see carefully this. for auto increment there must be primary 
-- key or unique key


-- DDL:- data definition language
-- it works on table definition
-- create, add, drop, alter are some commands


-- DML:- data manipulation language
-- it works on data rather than table
-- insert, select, update, delete(record) are some commands.

-- truncate also removes all records but it is DDL command.
-- delete delete data one by one. and truncate drops table and recreate it.