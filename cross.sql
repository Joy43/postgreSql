CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);
CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES (1,'join doe',101);
INSERT INTO employees  VALUES (2,'joy',102);
INSERT INTO departments VALUES (101,'cse');
INSERT INTO departments VALUES (102,'EEE');
DELETE FROM departments WHERE dept_id = 101;
DELETE FROM employees WHERE emp_id=102;
SELECT *FROM employees;
SELECT *FROM departments;


-- -------CROSS JOIN---
SELECT *FROM employees
CROSS JOIN departments;
-- ----NATURAL JOIN----
SELECT *FROM employees
NATURAL JOIN departments;