-- Database: Collection of data in the form of tables.
-- Table:- collection of data in the form of rows and tables.
-- SQL used evrywhere. data science, web dev, data engineering. necessory for every s/w engineer, data engineer, data scientist.


-- to see all databases
show databases;

-- to create new database
create database db2;

-- to use specific database
use db1;

-- to drop database
drop database db2;

-- to see current database
select database();


-- create table syntax
create table tbl1 (
id int,
name varchar(20),
lname varchar(20),
age int
);

-- to see table structure
desc tbl1;

-- to see tables present in the database
show tables;




-- fetch data from table
select * from tbl1;


-- to drop table
drop table tbl1;



