-- Constraint
CREATE TABLE tmp1(
	id INT PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
    email VARCHAR(200) UNIQUE,
    student_roll INT,
    
    -- foreign key
    FOREIGN KEY (student_roll) references Student(rollNo)
);


insert into tmp1 (id, name, email, student_roll) values (1, "noyon", "noyon@gmail.com", 103);
insert into tmp1 (id, name, email, student_roll) values (2, "karan", "karan@gmail.com", 101);
insert into tmp1 (id, name, email, student_roll) values (3, "ramlal", "ramkaran@gmail.com", 102);
insert into tmp1 (id, name, email, student_roll) values (4, "ali", "ali@gmail.com", 101);

select * from tmp1;

-- Constraints
-------------------
-- PRIMARY KEY
-- FOREIGN KEY
-- NOT NULL
-- UNIQUE
-- DEFAULT
-- CHECK