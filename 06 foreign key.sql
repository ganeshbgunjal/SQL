-- Constraints are used to limit the type of data that goes into the table..
-- foreign key of one column of a table is primary key of another table.
-- foreign key is prevents the actions that destroyes links between 2 tables.
show databases;
create database db3;

use db3;

-- foreign key:-- primary key of 1 table is referred as foreign key of another table. 
-- it prevents data integrity..

create table stud (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
email varchar(20) unique key,
phone int,
alternate_phone int,
enrollement_date timestamp,
yoe int,
student_company varchar(20),
batch_Date varchar(20),
source_of_joining varchar(20),
location varchar(20)
);

desc stud;
select * from stud;

-- seed data means the data that we insert initially in bulk.
insert into stud(fname, lname, email, phone, alternate_phone, enrollement_date, yoe, student_company, batch_Date, source_of_joining, location)
values('a','aa','a@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','nashik');

select * from stud;

insert into stud(fname, lname, email, phone, alternate_phone, enrollement_date, yoe, student_company, batch_Date, source_of_joining, location)
values('a','aa','b@gmail.com',1234,234,curtime(),2,'avx','12 aug','utube','nashik');

insert into stud(fname, lname, email, phone, alternate_phone, enrollement_date, yoe, student_company, batch_Date, source_of_joining, location)
values('j','jj','j@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','nashik'),
('n','nn','n@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','pune'),
('q','qq','q@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','mumbai'),
('e','ee','e@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','kumbhari'),
('t','tt','t@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','panchakhwar'),
('h','hh','h@gmail.com',1234,234,curdate(),2,'avx','12 aug','utube','nashik');

create table courses (
course_id int not null auto_increment primary key,
course_name varchar(20),
course_duration_months int,
course_fee int
);

desc courses;

insert into courses (course_name,course_duration_months,course_fee) values('bigdata',6,50000),
('webdevelopement',2,20000),('data science',6,40000),('devops',1,10000);

select * from courses;

drop table stud;

create table stud (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
email varchar(20) unique key,
phone int,
alternate_phone int,
enrollement_date timestamp,
selected_course int,
yoe int,
student_company varchar(20),
batch_Date varchar(20),
source_of_joining varchar(20),
location varchar(20)
);

insert into stud(fname, lname, email, phone, alternate_phone, enrollement_date, selected_course,yoe, student_company, batch_Date, source_of_joining, location)
values('j','jj','j@gmail.com',1234,234,curdate(),1,2,'avx','12 aug','utube','nashik'),
('b','bb','b@gmail.com',1234,234,curdate(),2,2,'avx','12 aug','utube','pune'),
('q','qq','q@gmail.com',1234,234,curdate(),3,2,'avx','12 aug','utube','mumbai'),
('e','ee','e@gmail.com',1234,234,curdate(),4,2,'avx','12 aug','utube','kumbhari'),
('t','tt','t@gmail.com',1234,234,curdate(),4,2,'avx','12 aug','utube','panchakhwar'),
('h','hh','h@gmail.com',1234,234,curdate(),3,2,'avx','12 aug','utube','nashik');

select * from stud;

drop table stud;

create table stud (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
email varchar(20) unique key,
phone int,
alternate_phone int,
enrollement_date timestamp,
selected_course int,
yoe int,
student_company varchar(20),
batch_Date varchar(20),
source_of_joining varchar(20),
location varchar(20),
foreign key(selected_course) references courses(course_id)
);

desc stud;


insert into stud(fname, lname, email, phone, alternate_phone, enrollement_date, selected_course,yoe, student_company, batch_Date, source_of_joining, location)
values('j','jj','j@gmail.com',1234,234,curdate(),1,2,'avx','12 aug','utube','nashik'),
('b','bb','b@gmail.com',1234,234,curdate(),2,2,'avx','12 aug','utube','pune'),
('q','qq','q@gmail.com',1234,234,curdate(),3,2,'avx','12 aug','utube','mumbai'),
('e','ee','e@gmail.com',1234,234,curdate(),4,2,'avx','12 aug','utube','kumbhari'),
('t','tt','t@gmail.com',1234,234,curdate(),4,2,'avx','12 aug','utube','panchakhwar'),
('h','hh','h@gmail.com',1234,234,curdate(),3,2,'avx','12 aug','utube','nashik');

select * from stud;

insert into stud(fname, lname, email, phone, alternate_phone, enrollement_date, selected_course,yoe, student_company, batch_Date, source_of_joining, location)
values('l','ll','l@gmail.com',1234,234,curdate(),5,2,'avx','12 aug','utube','nashik');
 -- trying to add another record who has no entry in parent table..
 
 select * from courses;
 
 delete from courses where course_id = 2;
 
 ALTER TABLE stud
ADD CONSTRAINT stud_ibfk_2
FOREIGN KEY (selected_course)
REFERENCES courses(course_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

 select * from courses;
 select * from stud;
 
 delete from courses where course_id=2;


 
 