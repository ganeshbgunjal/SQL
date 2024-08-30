show databases;
use db3;

-- some other data types
-- Decimal
create table tbldecimal (
id int not null auto_increment primary key,
fname varchar(20),
salary decimal(5,2)
);

desc tbldecimal;

insert into tbldecimal(fname,salary) values('a',140.21);
insert into tbldecimal(fname,salary) values('a',14.211);
insert into tbldecimal(fname,salary) values('a',14.02);

select * from tbldecimal;

-- timestamp datatype

create table tbltimestamp (
id int not null auto_increment primary key,
fname varchar(20),
sal int,
changed_at timestamp default now()
);


select * from tbltimestamp;

insert into tbltimestamp(fname,sal) values(fname,sal);
insert into tbltimestamp(fname,sal) values('a',1200);
insert into tbltimestamp(fname,sal) values('a',1200),('v',1400),('y',200),('i',100);

select * from tbltimestamp;


update tbltimestamp
set fname='yy'
where id = 5;

select * from tbltimestamp;   -- after update time is not changed.  so for this we need to change some changes. look them carefully. 

drop table tbltimestamp;

create table tbltimestamp (
id int not null auto_increment primary key,
fname varchar(20),
sal int,
changed_at timestamp default now() on update now()
);

insert into tbltimestamp(fname,sal) values(fname,sal);
insert into tbltimestamp(fname,sal) values('a',1200);
insert into tbltimestamp(fname,sal) values('a',1200),('v',1400),('y',200),('i',100);

select * from tbltimestamp;

update tbltimestamp
set fname = 'vv'
where id = 4;

select * from tbltimestamp;   -- after updating, respected row is updated with the current time..




