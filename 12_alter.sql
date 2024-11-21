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


-- ALTER

-- add column
ALTER TABLE students
ADD COLUMN Age INT NOT NULL DEFAULT 19;

ALTER TABLE students
MODIFY COLUMN Age VARCHAR(2);

ALTER TABLE students
CHANGE age stu_age INT;

INSERT INTO students (rollno, name, marks, stu_age)
VALUES 
(1,"gargi", 68, 100);


-- delete column
ALTER TABLE students
DROP COLUMN stu_age;

-- rename table name
ALTER TABLE student
RENAME TO students;



select * from students;

TRUNCATE TABLE students; -- delete students table just data not entire table



