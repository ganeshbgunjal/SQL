show databases;
use db3;

-- distinct:- different. excluding duplicate. 
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


-- order by:- arrange records  alphabetically in ascending or descending order
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

-- limit:--- for fetching limited records.
select * from orderby limit 5; 

select * from orderby limit 8;

-- like:-- its wildcard keyword. when we have to fetch records by some pattern, then it is used.
-- (underscore)_ means exactly one character. 
-- percentage means one or more characters. %ga% means anything before and after 'ga'

create table tbl_like ( 
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20)
);

select * from tbl_like;

insert into tbl_like(fname,lname) values('ganesh','gunjal'),('ram','kolhe'),('chandu','bagul'),
('rasika','rajguru'),('sushma','patil'),('aanand','tidke');

insert into tbl_like(fname,lname) values('ganesh','gunjal'),('ganesh','singh'),('ganesh','gupta');
select * from tbl_like;

select * from tbl_like where fname like 'g%';

select * from tbl_like where lname like '___jal';

select * from tbl_like order by fname limit 0,4;

select * from tbl_like where lname like '%ke';
