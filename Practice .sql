
-- Create the employees table
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES department(department_id),
    salary DECIMAL (10,2),
    hire_date DATE
);
-- Create the departments table
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert data into employee
INSERT INTO employee (employee_name, department_id, salary, hire_date) VALUES
('Alice Johnson', 1, 75000.00, '2020-06-15'),
('Bob Smith', 2, 60000.00, '2019-08-22'),
('Charlie Brown', 1, 80000.00, '2021-01-10'),
('David White', 3, 55000.00, '2022-03-14'),
('Eve Black', 4, 70000.00, '2018-11-05'),
('Frank Green', 5, 95000.00, '2017-09-30'),
('Grace Adams', 2, 62000.00, '2021-07-18'),
('Henry Baker', 3, 58000.00, '2020-12-25'),
('Ivy Wilson', 4, 72000.00, '2019-04-29'),
('Jack Miller', 5, 98000.00, '2016-06-11'),
('Kelly Turner', 1, 82000.00, '2022-08-01'),
('Liam Scott', 2, 61000.00, '2019-05-13'),
('Mason Lopez', 3, 59000.00, '2020-09-08'),
('Nina Carter', 4, 73000.00, '2018-02-19'),
('Oliver Davis', 5, 99000.00, '2015-12-17'),
('Paula Evans', 1, 77000.00, '2021-03-23'),
('Quinn Foster', 2, 63000.00, '2020-10-05'),
('Ryan Harris', 3, 57000.00, '2017-07-27'),
('Sophia King', 4, 74000.00, '2019-09-15'),
('Thomas Lewis', 5, 97000.00, '2016-11-22');

INSERT INTO department (department_name) VALUES 
('Engineering'),
('Marketing'),
('Sales'),
('Human Resources'),
('Finance');
SELECT *FROM employee;
SELECT *FROM department;

/* 
-- ------------ 1.inner join to retrive employee and department-----------
 */

SELECT *FROM employee 
JOIN department on employee.department_id=department.department_id;
SELECT *FROM employee 
JOIN department USING(department_id);

-- --------2. show department name & salery---------------

SELECT department_name,avg(salary) as avg_salary FROM employee
JOIN department USING(department_id)
GROUP BY department_name
;
SELECT department_name,round(avg(salary)) as avg_salary FROM employee
JOIN department USING(department_id)
GROUP BY department_name;

-- ----------count emoloyees in each department------------
SELECT department_name,count(*) FROM employee
JOIN department USING (department_id)
GROUP BY department_name;

-- ----------height salary ----------
select department_name,round(avg(salary)) as avg_salary FROM employee
JOIN department USING(department_id)
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1
;

SELECT extract (YEAR FROM hire_date) as hire_date,count(*) FROM employee
GROUP BY hire_date;

