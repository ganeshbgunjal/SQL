show databases;
create database db4;
use db4;

-- logical operators:----   =, !=, <, >, <=, >=

create table logicl (
	id int not null auto_increment primary key,
	fname varchar(20),
    sal int,
	location varchar(20)
	);
    
desc logicl;

select * from logicl;

insert into logicl(fname,sal,location) values('a',1200,'nashik'),('q',1100,'pune'),('r',1400,'bangalore'),
('h',800,'nashik'),('y',1700,'pune'),('d',4000,'bangalore'),('f',2000,'hydrabad');

select * from logicl;

select * from logicl where location = 'nashik';

select count(*) from logicl where location ='nashik';

select * from logicl where location != 'nashik';

select count(*) from logicl where location != 'nashik';

select * from logicl where sal >1500;
select count(*) from logicl where sal >1500;

select * from logicl where sal <1500;
select  count(*) from logicl where sal <1500;

select * from logicl where location like 'ban%';

select * from logicl;

select * from logicl where sal between 1200 and 1700;

select * from logicl where sal not between 1200 and 1700;

select * from logicl;

select distinct(location) from logicl;

select * from logicl where location in ('nashik','pune');


-- CASE STATEMENT

create table masters (
id int not null auto_increment primary key,
course_name varchar(20),
duration_months int,
course_fee int
);

insert into masters(course_name,duration_months,course_fee) values('bigdata',6,50000),('webdevelopement',3,20000),
('data science',6,40000),('data structures',4,20000);

select * from masters;

select id,course_name,course_fee,
case
	when duration_months >4 then 'Masters'
    else 'Diploma'
end as course_type
from masters;

create table company1 (
id int not null auto_increment primary key,
fname varchar(20),
company varchar(20)
);

insert into company1(fname,company) values('a','google'),('f','microsoft'),('w','wipro'),('j','tcs'),('m','apple'),
('v','infosys'),('s','google'),('b','microsoft');

insert into company1(fname,company) values('x',null);

select * from company1;

select id, fname,company,
case
when company in ('google','apple','microsoft') then 'Product based'
when company is null then 'Invalid Company'
else 'Service Based'
end as company_type
from company1;
