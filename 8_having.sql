
-- HAVING - group and condition

SELECT city, count(name)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;
