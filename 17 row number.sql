show databases;
use db5;

-- ROW NUMBER:- gives numbering to each reocrd. even for duplicates also.

-- simpli it gives numbering to each individual record.. if there is duplicate then it gives different numbering too it..
-- order by is mandatory..

create table rownumber (
id int not null auto_increment primary key,
fname varchar(20),
age int
);

insert into rownumber(fname,age) values('a',12),('q',12),('w',12),('r',12),('y',12),('h',12),('j',12),('n',12),('x',12),('a',12),('b',12);

select * from rownumber;

select fname,age,row_number() over(order by fname) as rownum
from rownumber;

-- to find 5th salary

select * from (select fname,age,row_number() over(order by fname) as rownum
from rownumber) as temptable 
where rownum = 5;


-- using partition by clause
-- give records using partition by to each location.

create table tblpartition (
id int not null auto_increment primary key,
fname varchar(20),
age int,
sal int,
location varchar(20)
);

insert into tblpartition(fname,age,sal,location) values('q',22,1200,'nashik'),('w',23,1100,'pune'),('r',27,1800,'bangalore'),
('d',24,3000,'nashik'),('g',32,5200,'hydrabad'),('v',22,1600,'bangalore'),('m',26,2000,'pune'),('l',25,1700,'pune'),
('x',22,1900,'pune'),('c',31,4200,'hydrabad'),('n',29,7200,'bangalore'),('h',22,1500,'nashik');

select * from tblpartition;

select fname,age,sal,location,
row_number() over(partition by location order by sal desc) as rownum
from tblpartition;

-- to find out top salary getter from all locations
select * from (select fname, age, sal, location, 
row_number() over(partition by location order by sal desc) as rownum
from tblpartition) as temptable
where rownum = 1;





