
-- -----------VIEW---------------
CREATE VIEW  test_view
AS
SELECT employee_name,salary,department_name
FROM Techemployees
WHERE department_name IN
(SELECT department_name FROM Techemployees WHERE department_name Like '%R%');

SELECT *FROM test_view;
