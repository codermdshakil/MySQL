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

-- Aggregation function
-- it will count how many rows or records are availables
select COUNT(*)
from student;

-- SUM
select sum(marks)
from student;

-- MAX
select MAX(marks)
from student;

-- MIN
select MIN(marks)
from student;

-- AVG
select AVG(marks)
from student;

-- GROUP BY
-- show each city how many students
select city, count(city) AS Students
from student
GROUP BY city;




 