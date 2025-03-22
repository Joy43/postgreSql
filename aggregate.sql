SELECT *FROM students;
SELECT concat (first_name,'',last_name)FROM students;
SELECT  length (first_name) FROM students;
SELECT avg (age) FROM students;
SELECT min (age) FROM students;
SELECT sum (age) FROM students;
SELECT count (*) FROM students;
-- -----COMBINATION SCALER & AGGREGATE FUNCTION--------
SELECT max (length(first_name)) FROM students;
SELECT *from students
WHERE NOT country ='UK';
SELECT * FROM students
WHERE email!= NULL;
SELECT * FROM students
WHERE email is NOT NULL;
SELECT COALESCE(email,'Email not provided') as "Email" ,first_name,blood_group FROM students;

SELECT * FROM students WHERE country ='UK' or 'Canada' or country ='uk';
-- ------------in-------------
SELECT *from students WHERE country IN ('UK','USA');

-- --------BETWEEN OPERATOR---------
SELECT *FROM students
 WHERE age BETWEEN 19 AND 22;
SELECT *FROM students
 WHERE dob BETWEEN '2003-07-08' AND '2004-05-04' ORDER BY dob;
 SELECT *FROM students
 WHERE first_name LIKE '%b' ;
-- --------------- update-----------
UPDATE students
set email = 'default@gmail.com',age=50
WHERE student_id=3;
