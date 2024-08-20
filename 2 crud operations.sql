-- CRUD operations
-- create read/select update delete

create table employee (
id int,
fname varchar(20),
mname varchar(20),
lname varchar(20),
age int,
salary int,
location varchar(20)
);

desc employee;

select * from employee;

select id,fname,lname,age from employee;

insert into employee(id, fname, mname, lname, age, salary, location)
values(1,'ganesh','bhausaheb','gunjal',33,700000,'nashik'),
(2,'rupali','bhausaheb','gunjal',26,800000,'niphad'),
(3,'dilip','bhausaheb','gunjal',32,150000,'panchakeshwar'),
(4,'amol','bhaskar','gunjal',23,500000,'gav'),
(5,'chandu','pandit','bagul',33,60000,'aurangabad');

select * from employee;

update employee
set location ='aurangabad naka'
where id = 5;

SET SQL_SAFE_UPDATES = 0;


-- Constraints:---- 
-- null
-- not null: 
-- default

create table yojna (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
city varchar(20) default 'Nashik'
);

desc yojna;

select * from yojna;

insert into yojna(fname, lname, city)
values('a','aa','panachakeshwar'),
('x','xx','kumbhari'),('f','ff','palkhed'),('t','tt','ranwad');

insert into yojna(fname, lname)
values('a','aa');

select * from yojna;


