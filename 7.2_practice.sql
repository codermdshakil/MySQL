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
 
 
CREATE TABLE customers(

	customer_id INT PRIMARY KEY,
    customer VARCHAR(100) UNIQUE,
    mode VARCHAR(80) NOT NULL,
    city VARCHAR(100) NOT NULL
);


INSERT INTO customers(customer_id, customer, mode, city)
VALUES
 (101, "Olivia Barrett", "Netbanking", "Portland"),
 (102, "Ethan Sinclair", "Credit Card", "Miami"),
 (103, "Maya Hernandez", "Credit Card", "Seattle"),
 (104, "Liam Donovan", "Netbanking", "Denver"),
 (105, "Sophia Nguyen", "Credit Card", "New Orleans"),
 (106, "Caleb Foster", "Debit Card", "Minneapolis"),
 (107, "Ava Patel", "Debit Card", "Phoenix"),
 (108, "Lucas Carter", "Netbanking", "Boston"),
 (109, "Isabella Martinez", "Netbanking", "Nashville"),
 (110, "Jackson Brooks", "Credit Card", "Boston");


-- Given table find the total payment according to each payment method

select mode, count(*) AS total_payments
from customers
group by mode
ORDER BY total_payments ASC;


