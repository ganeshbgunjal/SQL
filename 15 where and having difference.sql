show databases;
use db4;

-- difference between WHERE and HAVING
-- where is used before group by and used for filtering individual records.. 
-- having is used after group by and used after aggragation. 


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

create table tblhavingnew (
id int not null auto_increment primary key,
fname varchar(20),
sal int,
location varchar(20),
source_of_joining varchar(20)
);

insert into tblhavingnew (fname,sal,location,source_of_joining) values('q',1200,'nashik','linkedin'),('w',1100,'nashik','utube'),('n',200,'pune','friend'),
('f',1700,'hydrabad','linkedin'),('a',1900,'bangalore','utube'),('v',1000,'nashik','linkedin'),('m',3000,'pune','friend'),('z',2500,'hydrabad','friend'),
 ('c',2200,'bangalore','linkedin'),('m',6000,'pune','linkedin'),('x',3500,'bangalore','utube'),
('l',3900,'hydrabad','quora');

select * from tblhavingnew;

select source_of_joining,count(*) from tblhavingnew group by source_of_joining;

select source_of_joining,count(*) as total from tblhavingnew group by source_of_joining having total >1;

SELECT source_of_joining, COUNT(*) AS total
FROM tblhavingnew
WHERE source_of_joining IN ('linkedin', 'utube')
GROUP BY source_of_joining;

-- can we use WHERE and HAVING in one place?

select * from tblhavingnew;

SELECT source_of_joining, sal, COUNT(*) 
FROM tblhavingnew 
WHERE source_of_joining = 'linkedin'
GROUP BY source_of_joining 
HAVING sal > 1200;    -- this code is not working... because sal col is not included in group by. below code is working. 


SELECT source_of_joining, count(*) AS total
FROM tblhavingnew
WHERE source_of_joining = 'linkedin';
