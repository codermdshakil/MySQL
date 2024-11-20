
-- Create college database
CREATE DATABASE College;

USE College;

-- create a table
CREATE TABLE Student(
	Id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- INSERT data
INSERT INTO Student
VALUES 
 (1, "AMAN", 26),
 (2, "SHRADHA", 24);

-- show table
SELECT * FROM Student;

