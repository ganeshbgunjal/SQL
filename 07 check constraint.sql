-- check constraint
show databases;
use db3;

SELECT VERSION();


create table aadhar (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
age int check (age >= 18 and age <=75)
);

insert into aadhar(fname,lname,age) values('a','aa',32),('q','qq',18),('e','ee',30),('t','tt',64),('u','uu',74);

select * from aadhar;

insert into aadhar(fname,lname,age) values('h','hh',70);
