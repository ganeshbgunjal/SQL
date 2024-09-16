show databases;
use db5;

-- dense rank:-- it gives numbering to each records and gives same numbering to
-- same record but doesnot skipps number to next record.

create table tbldenserank (
id int not null auto_increment primary key,
fname varchar(20),
age int
);

insert into tbldenserank(fname,age) values('a',12),('q',12),('w',12),('r',12),('y',12),('h',12),('j',12),('n',12),('x',12),('a',12),('b',12);

select * from tbldenserank;

select fname,age,
row_number() over(order by fname) as rownum,
rank() over (order by fname) as rankk,
dense_rank() over(order by fname) as densrank
from tbldenserank;

