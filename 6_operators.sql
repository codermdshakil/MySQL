CREATE DATABASE College;

USE College;


CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

INSERT INTO Student 
VALUES
 (101, "anil", 78, "C", "Pune"),
 (102, "bhumika", 93, "A", "Mumbai"),
 (103, "chetan", 85, "B", "Mumbai"),
 (104, "dhruv", 96, "A", "Delhi"),
 (105, "emanuel", 12, "F", "Delhi"),
 (106, "farah", 82, "B", "Delhi");

-- show all student
select * from student;

-- show specific column name
select distinct city 
from student;

-- condition based data show
select * 
from student
where city = "Mumbai";

-- and use with condition

select * 
from student
where marks >= 80 and city = "Mumbai";


-- show marks assending order data
select * 
from student
where marks > 80
order by marks ASC;

-- arithmetic operators
select * 
from student
where marks+10 > 100;


-- logical operator (AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY)
-- AND
select *
from student
where marks > 90 AND city = "Mumbai";


-- OR
select *
from student
where marks > 90 OR city = "Mumbai";

-- NOT - negative condtion
select *
from student
where NOT marks < 90;

-- IN -- যার যার সাথে মিলবে তাকেই show করবে 
select * 
from student
where city IN ('delhi', 'pune');

-- between - filter result with specific range 
select * 
from student
where city between (city = "mumbai") and (city = "pune");


-- LIKE
select * 
from student
where city like "%d%";

-- LIMIT + OFFSET
SELECT * 
FROM student
LIMIT 2
OFFSET 4;

-- LIMIT shortcut
SELECT * 
FROM student
LIMIT 4,2;


-- ORDER BY
-- show class top 3 who 1st, 2nd, 3rd student
select * 
from student
order by marks desc
limit 3;



select * from student;

-- Summary
-- Arithmetic Operator
-- Comparison Operator
-- Logical Operator
-- Bitwise operator
-- ORDER BY
-- LIMIT 
-- OFFSET
