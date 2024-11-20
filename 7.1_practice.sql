
-- Write the query to find avg marks in each city ina ascending order 

select  city, AVG(marks) AS AVG_MARKS
from student
GROUP BY city
ORDER BY AVG_MARKS ASC;


-- Dessending
select  city, AVG(marks) AS AVG_MARKS
from student
GROUP BY city
ORDER BY AVG_MARKS DESC;
