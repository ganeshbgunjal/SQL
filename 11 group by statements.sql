show databases;

use db3;

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
    
    
    -- group by:--- grouping of data based on certain condition
    
    select location, count(*) from tblemployee group by location;
    
    select company, count(*) from tblemployee group by company;
    
    select location, company, count(*) from tblemployee group by location,company;