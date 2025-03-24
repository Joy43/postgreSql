CREATE TABLE Techemployees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO Techemployees (employee_name, department_name, salary, hire_date) VALUES
('John Doe', 'IT', 75000.00, '2020-05-15'),
('Jane Smith', 'HR', 65000.00, '2019-08-20'),
('Mike Johnson', 'Finance', 80000.00, '2021-02-10'),
('Emily Davis', 'Marketing', 70000.00, '2020-11-05'),
('David Brown', 'Sales', 72000.00, '2018-07-25'),
('Sarah Wilson', 'IT', 78000.00, '2019-09-14'),
('James Anderson', 'Finance', 82000.00, '2021-06-30'),
('Linda Martinez', 'HR', 68000.00, '2017-03-12'),
('Robert Taylor', 'Marketing', 73000.00, '2022-01-08'),
('Jessica White', 'Sales', 76000.00, '2016-12-19'),
('Daniel Harris', 'IT', 79000.00, '2018-04-23'),
('Ashley Clark', 'Finance', 81000.00, '2021-09-17'),
('Christopher Lewis', 'HR', 69000.00, '2019-05-21'),
('Megan Walker', 'Marketing', 74000.00, '2020-10-14'),
('Ryan Hall', 'Sales', 77000.00, '2017-08-30'),
('Olivia Young', 'IT', 79500.00, '2021-12-25'),
('Brandon King', 'Finance', 82500.00, '2018-06-18'),
('Sophia Scott', 'HR', 69500.00, '2019-11-03'),
('William Green', 'Marketing', 75000.00, '2020-07-07'),
('Emma Adams', 'Sales', 78500.00, '2016-10-12'),
('Mason Carter', 'IT', 80000.00, '2019-02-27'),
('Isabella Perez', 'Finance', 83500.00, '2021-05-05'),
('Ethan Collins', 'HR', 70000.00, '2017-09-22'),
('Charlotte Stewart', 'Marketing', 75500.00, '2020-03-15'),
('Liam Sanchez', 'Sales', 79000.00, '2018-01-10'),
('Avery Morris', 'IT', 81000.00, '2019-07-28'),
('Benjamin Rogers', 'Finance', 84500.00, '2021-08-09'),
('Elijah Reed', 'HR', 71000.00, '2016-11-30'),
('Amelia Cook', 'Marketing', 76000.00, '2020-12-01'),
('Lucas Bell', 'Sales', 79500.00, '2017-04-05');

SELECT *FROM Techemployees;

SELECT max(salary) FROM Techemployees WHERE department_name ='HR';
-- ✔️ প্রথমে HR বিভাগের সর্বোচ্চ বেতন বের করা হয়, তারপর যেসব কর্মচারীর বেতন তার চেয়ে বেশি, তাদের সম্পূর্ণ তথ্য দেখানো হয়।
SELECT *FROM Techemployees WHERE salary>(SELECT max(salary) from Techemployees WHERE department_name='HR');


-- ------- can return a single valuse


SELECT * from  ( SELECT department_name,
sum(salary) FROM Techemployees GROUP BY department_name) as sum_dept_salary;

SELECT employee_name, salary,department_name
FROM Techemployees
WHERE department_name IN
(SELECT department_name FROM Techemployees WHERE department_name Like '%R%')

-- -----------VIEW---------------
CREATE VIEW  test_view
AS
SELECT employee_name,salary,department_name
FROM Techemployees
WHERE department_name IN
(SELECT department_name FROM Techemployees WHERE department_name Like '%R%');

SELECT *FROM test_view;