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
 (105, "emanuel", 92, "F", "Delhi"),
 (106, "farah", 82, "B", "Delhi");
 
-- Q : show the students how marks greater then avg marks
SELECT * 
FROM student
WHERE marks > (SELECT AVG(marks)
				FROM student);
                
-- Q : find the name of all student with even roll number
-- 1. find even roll number
SELECT *
FROM student
WHERE rollno%2 = 0;

-- 2 find even roll number student name and roll
SELECT NAME, ROLLNO
FROM STUDENT
WHERE ROLLNO IN (SELECT rollno
				FROM student
				WHERE rollno%2 = 0);
                
-- Q: find the max marks from the students of delhi

-- 1. find delhi student
SELECT *
FROM student
WHERE city = "delhi";

-- 2. find delhi students 
SELECT MAX(marks)
FROM (SELECT *
	 FROM student	
     WHERE city = "delhi") AS temp;


SELECT MAX(marks)
FROM student
WHERE city = "mumbai";


