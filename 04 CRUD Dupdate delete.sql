show databases;
create database db2;
use db2;

create table employee (
id int not null auto_increment primary key,
fname varchar(20) not null,
lname varchar(20) not null,
age int not null,
sal int not null,
location varchar(20) not null default 'Nashik'
);

desc employee;

select * from employee;

insert into employee(fname, lname, age, sal, location) values('a','aa',33,10000,'panchakeshwar'),
('q','qq',23,8000,'kumbhari'),
('w','ww',28,2000,'ranwad'),
('e','ee',29,12000,'palkhed'),
('t','tt',30,4000,'panchakeshwar'),
('g','gg',31,6500,'nandurdi'),
('k','kk',33,7500,'ugav');

select * from employee;

insert into employee(fname, lname, age, sal) values('j','jjaa',30,11000); -- insert with default value

-- filter records
select * from employee where age >26;
select count(*) from employee where age >26;

-- alias name
select fname as name,lname as surname from employee;

-- update means change value in existing record. 

-- delete record. if we use where, then only specific record will be deleted. if we dont use where then whole table data will be deleted. 
-- only data will be deleted. table structure remains same.

delete from employee
where  id = 5;

select * from employee;  -- 5th record is deleted.
