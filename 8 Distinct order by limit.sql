show databases;
use db3;

-- distinct, order by, limit
create table tbldistinct (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20)
);

select * from tbldistinct;

insert into tbldistinct(fname,lname) values('sam','samson'),
('sam','samson'),('dad','dadso'),('gas','gases'),('pas','pasm'),('fassam','fassamson'),('sam','samson');

select *from tbldistinct;

select distinct(fname) from tbldistinct;
select count(distinct(fname)) as namecount from tbldistinct;


create table orderby (
id int not null auto_increment primary key,
fname varchar(20) not null,
lname varchar(20) not null
);

select * from orderby;

insert into orderby(fname,lname) values('a','aa'),('q','qq'),('w','ww'),('r','rr'),('y','yy'),
('e','ee'),('h','hh'),('m','mm'),('l','ll'),('i','ii');

select * from orderby;

select * from orderby order by fname;
select * from orderby order by fname desc;

select * from orderby limit 5; 

select * from orderby limit 8;