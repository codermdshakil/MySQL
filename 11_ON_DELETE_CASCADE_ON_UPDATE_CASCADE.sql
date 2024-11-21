CREATE DATABASE College;

USE College;


CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO dept
VALUES
 (101, "English"),
 (102, "IT");

UPDATE dept
SET id = 111
WHERE id = 105;
 
select * from dept;


CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) references dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher
values
(1, "adam", 101),
(2, "Eve", 105);

select * from teacher;
 


INSERT INTO Student 
VALUES
 (101, "anil", 78, "C", "Pune"),
 (102, "bhumika", 93, "A", "Mumbai"),
 (103, "chetan", 85, "B", "Mumbai"),
 (104, "dhruv", 96, "A", "Delhi"),
 (105, "emanuel", 12, "F", "Delhi"),
 (106, "farah", 82, "B", "Delhi");
 
 
CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(100) UNIQUE,
    mode VARCHAR(80) NOT NULL,
    city VARCHAR(100) NOT NULL
);

UPDATE student
SET marks = 12
WHERE rollno = 105;

-- DELETE 
DELETE FROM student
WHERE marks < 33;

-- DELETE TABLE
DELETE FROM student;







 

