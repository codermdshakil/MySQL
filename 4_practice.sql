

CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE 	Employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    SALARY INT 
);

INSERT INTO Employee (id, name, salary)

VALUES 
	(1, "adam", 25000),
    (2, "bob", 30000),
    (3, "casey", 40000);
    

SELECT * FROM Employee;

    
