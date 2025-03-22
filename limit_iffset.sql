SELECT *FROM students
LIMIT 2;
SELECT *FROM students
LIMIT 5 OFFSET 2;
SELECT *FROM students
LIMIT 5 OFFSET 3 *0;
SELECT *FROM students
LIMIT 5 OFFSET 2 *1;
-- -----------delete--------
DELETE FROM students
WHERE grade ='c' AND country='Canada';
----------update data------
