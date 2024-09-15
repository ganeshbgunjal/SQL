show databases;
create database db5;

use db5;

-- over and partition by claus

create table employee (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
age int,
sal int,
location varchar(20)
);


insert into employee(fname,lname,age,sal,location)  values('a','aa',21,12000,'nashik'),('q','qq',22,11000,'pune'),('w','ww',23,14000,'hydrabad'),
('f','ff',26,19000,'bangalore'),('t','tt',32,112000,'pune'),('y','yy',31,12000,'nashik'),('b','bba',25,16000,'hydrabad'),('m','mm',27,33000,'bangalore');

select * from employee;

-- find out people from each location
select location,count(*) as total, avg(sal) as avgsal from employee
group by location;


-- use of partition by

select fname,lname,location,
count(location) over(partition by location) as total,
avg(sal) over(partition by location) as average
from employee;



