
-- UPDATE
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "B"
WHERE marks  between 80 and 90;

UPDATE student
SET marks = marks + 1;


SET SQL_SAFE_UPDATES = 1;

select * from student;
