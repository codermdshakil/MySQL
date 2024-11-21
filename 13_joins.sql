CREATE DATABASE College;

USE College;


CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(60)
);


INSERT INTO Student (id, name)
VALUES
 (101, "adam"),
 (102, "bob"),
 (103, "casey");
  
CREATE TABLE course(
	id INT PRIMARY KEY,
    course_name VARCHAR(60)
);

INSERT INTO course
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

-- INNER JOIN
-- returns records that have matching values in both tables
SELECT * 
FROM STUDENT AS s
INNER JOIN COURSE AS c
ON s.ID  = c.ID;

-- LEFT JOIN
-- returns records from all left table and the matched records from the right table
SELECT * 
FROM STUDENT AS s
LEFT JOIN COURSE AS c
ON s.ID  = c.ID;

-- RIGHT JOIN
-- returns records from all right table and  the matched records from the left table
SELECT * 
FROM STUDENT AS s
RIGHT JOIN COURSE AS c
ON s.ID  = c.ID;

-- FULL JOIN

SELECT * 
FROM STUDENT AS s
LEFT JOIN COURSE AS c
ON s.ID  = c.ID
UNION
SELECT * 
FROM STUDENT AS s
RIGHT JOIN COURSE AS c
ON s.ID  = c.ID;

-- LEFT Exclusive JOIN
SELECT * 
FROM STUDENT AS a
LEFT JOIN COURSE AS b
ON a.id = b.id
WHERE  b.id IS NULL;

-- RIGHT Exclusive JOIN
SELECT * 
FROM STUDENT AS a
RIGHT JOIN COURSE AS b
ON a.id = b.id
WHERE  a.id IS NULL;


CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee (id, name, manager_id)
VALUES
 (101, "adam", 103),
 (102, "bob", 104),
 (103, "casey", NULL),
 (104, "donald", 103);
 
select * from employee;

SELECT A.NAME AS MANAGER_NAME , B.NAME  
FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.ID = B.MANAGER_ID;



