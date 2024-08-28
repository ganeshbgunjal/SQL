show databases;
use db3;

-- order of execution in sql statements
select * from table_name where fname like 'x%';    -- random code..

-- this is execution of sql code. 
-- G - group by
-- H - having
-- O - order by
-- L - limit


select col1, col2 from tablename order by col1;    -- random example
-- order of execution is 
-- 1 FROM (loading the table) ---- from will be executed first in the query
-- 2 SELECT (direction, which columns to show) ---- then select will execute
-- 3 order by