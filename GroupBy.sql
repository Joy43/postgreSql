SELECT *FROM students;
SELECT country,count(*) FROM students
 GROUP BY country;
--  --------- having----------
SELECT country,avg (age) FROM students
GROUP BY country
HAVING avg(age)>20.6;
-- filter groups using having to show only countries with average age above 22
SELECT country, avg (age) FROM students
GROUP BY country
HAVING avg (age)>20.60;

--------------count student bron each year----------------
SELECT extract(year from dob) as birth_year,
count(*)
FROM students
GROUP BY birth_year;