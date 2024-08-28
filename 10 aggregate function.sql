show databases;
use db3;

-- aggragate functions::- its takes multiple columns and returns single result
-- aggregate means combining few things and giving the output

-- 1 min  -- gives minimum value
-- 2 max   -- gives maximum value
-- 3 count   -- gives total count of rows 
-- 4 sum     -- gives sum of given column
-- 5 avg    -- gives avg of given column.


create table tblaggregate (
id int not null auto_increment primary key, 
fname varchar(20),
lname varchar(20),
salary int
);

desc tblaggregate;

select * from tblaggregate;

insert into tblaggregate(fname,lname,salary)
values('a','aa',1200),('b','bb',200),('z','zz',2200),('g','gg',12500),('n','nn',12000),('y','yy',11200),('f','ff',1341200);

select * from tblaggregate;

select max(salary) as max_sal from tblaggregate;

select min(salary) min_sal from tblaggregate;

select count(id) as count_total from tblaggregate;

create table tblemployee (
	id int not null auto_increment primary key,
	fname varchar(20) not null,
	lname varchar(20) not null,
	sal int not null,
	company varchar(20) not null,
	location varchar(20) not null
	);
	
	insert into tblemployee(fname,lname,sal,company,location)
	values('a','aa',1200,'walmart','nashik'),('q','qq',200,'amazon','pune'),('e','ee',1500,'ibm','hydrabad'),
	('r','rr',1800,'tcs','pune'),('g','gg',11200,'walmart','nashik'),('j','jj',16200,'ibm','hydrabad'),
	('n','nn',19200,'amazon','pune'),('b','bb',11400,'tcs','bangalore'),('h','hh',199200,'google','ocland');
    
    select * from tblemployee;
    
    select count(*) as total_rows from tblemployee;
    
    select max(sal) as max_Sal from tblemployee;
    
    select min(sal) as min_sal from tblemployee;
    
    select avg(sal) as avg_sal from tblemployee;
    
    select sum(sal) as total_sal from tblemployee;
    
    select * from tblemployee where location = 'hydrabad';
    
    select count(*) as total_emp from tblemployee where location = 'hydrabad';
    
    select count(distinct(company)) as total_com_count from tblemployee;
    
    select company from tblemployee;
    
    -- group by:--- grouping of data
    
    select location, count(*) from tblemployee group by location;
    
    select company, count(*) from tblemployee group by company;
    
    select location, company, count(*) from tblemployee group by location,company;


