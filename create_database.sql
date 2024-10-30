
-- create a database
CREATE DATABASE college;

-- use these database

USE college;

-- create a table in databse 
CREATE TABLE student(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL
);

-- insert data in table

INSERT INTO student VALUES(1, "Shakil", 19);
INSERT INTO student VALUES(2, "Noyon", 22);
INSERT INTO student VALUES(3, "Nadim", 20);
INSERT INTO student VALUES(4, "Mahfuj", 21);

-- print full table 
SELECT * FROM student;

