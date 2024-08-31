show databases;
create database db4;
use db4;

-- logical operators

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