show databases;
use db5;

-- rank:- used for ranking each record and giving same number to duplicate
-- record and then gives next number to next record.

create table tblrank (
id int not null auto_increment primary key,
fname varchar(20),
age int
);

insert into tblrank(fname,age) values('a',12),('q',12),('w',12),('r',12),('y',12),('h',12),('j',12),('n',12),('x',12),('a',12),('b',12);

select * from tblrank;

select fname,age,
rank() over(order by fname) as rankk
from tblrank;

-- to find 5th highest sal
select * from (select fname,age,
rank() over(order by fname) as rankk
from tblrank) as temptable
where rankk =5;