show databases;
use db4;

-- difference between WHERE and HAVING

create table tblhaving (
id int not null auto_increment primary key,
fname varchar(20),
sal int,
location varchar(20)
);

insert into tblhaving (fname,sal,location) values('q',1200,'nashik'),('w',1100,'nashik'),('n',200,'pune'),
('f',1700,'hydrabad'),('a',1900,'bangalore'),('v',1000,'nashik'),('m',3000,'pune'),('z',2500,'hydrabad'),('c',2200,'bangalore'),
('m',6000,'pune'),('x',3500,'bangalore'),('l',3900,'hydrabad');

select * from tblhaving;

select max(Sal) from tblhaving;
select count(sal) from tblhaving;

select location, count(sal) from tblhaving group by location;

select * from tblhaving where location = 'nashik';

select * from tblhaving where sal = 1200;