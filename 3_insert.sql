
-- Create college database
CREATE DATABASE College;

CREATE DATABASE IF NOT EXISTS College;

USE College;

-- create a table
CREATE TABLE Student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Student (rollno, name)
VALUES 
  (101,"karan"),
  (102,"arjun");


INSERT INTO Student (rollno, name) values (103, "Noyon");

select * from Student;

 
