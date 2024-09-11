show databases;
use db4;
show tables;

-- Joins:-- joins are used to join two or more table using foreign key constraint or some common column.
-- join has 4 types
-- 1 Inner Join
-- 2 Right join
-- 3 Left join
-- full join

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
 
 select * from courses;
 
 
 -- INNER join:-- used to retrieve records that have matching values in both tables.
 select course_name,course_duration_months,fname,lname
 from courses
 join stud
 on courses.course_id = stud.selected_course;
 
 
 -- RIGHT join:-- it returns all records from right table and only matching records from left table. 
 select course_name,course_duration_months,fname,lname
 from courses
 right join stud
 on courses.course_id = stud.selected_course;
 
 -- LEFT table:--- it returns all records from left table and only matching records from right table. if there is match then it gives null
 select course_name,course_duration_months,fname,lname
 from courses
 left join stud
 on courses.course_id = stud.selected_course;
 
 
 -- FULL join:-- in my sql there is no full join. there is UNIION of right and left table.
 -- UNIION ALL:--  gives duplicated also
 -- UNION:--  it removes duplicated
 -- this is diff between union and union all..
 
 
  select course_name,course_duration_months,fname,lname
 from courses
 right join stud
 on courses.course_id = stud.selected_course 
union all
 select course_name,course_duration_months,fname,lname
 from courses
 left join stud
 on courses.course_id = stud.selected_course;
 
 
  -- CROSS join:-- its cartesion product of tables. suppose table 1 has 4 records and table 2 has 8 records. then cartesion praduct
 -- of this 2 tables will give 32 records.. 
 
 select * from courses
 cross join stud;
 
