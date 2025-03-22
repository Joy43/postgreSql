CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age>18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', 'johndoe@example.com', '2004-05-10', 'O+', 'USA'),
('Alice', 'Smith', 22, 'B', 'Mathematics', 'alice.smith@example.com', '2002-09-15', 'A-', 'UK'),
('Bob', 'Johnson', 25, 'C', 'Physics', 'bob.johnson@example.com', '1999-03-22', 'B+', 'Canada'),
('Emily', 'Davis', 21, 'A', 'Biology', 'emily.davis@example.com', '2003-07-08', 'AB-', 'Australia'),
('Michael', 'Brown', 23, 'B', 'Chemistry', 'michael.brown@example.com', '2001-12-01', 'O-', 'Germany'),
('Sophia', 'Wilson', 24, 'A', 'Engineering', 'sophia.wilson@example.com', '2000-08-14', 'A+', 'France'),
('Daniel', 'Martinez', 22, 'C', 'Economics', 'daniel.martinez@example.com', '2002-04-25', 'B-', 'Spain'),
('Olivia', 'Taylor', 26, 'B', 'Psychology', 'olivia.taylor@example.com', '1998-11-30', 'AB+', 'Italy'),
('Ethan', 'Anderson', 21, 'A', 'Philosophy', 'ethan.anderson@example.com', '2003-06-17', 'O-', 'Japan'),
('Mia', 'Thomas', 23, 'B', 'History', 'mia.thomas@example.com', '2001-10-05', 'A-', 'Netherlands');
-- -student
SELECT *FROM students;
--  specific 
SELECT email,age FROM students;
-- temporary colum name change-----
SELECT email as "student email" FROM students;
-- ------ order-----------
SELECT * FROM students ORDER BY first_name ASC;
SELECT country FROM students ORDER BY country;
SELECT DISTINCT grade FROM students;
-- where
SELECT * FROM students
WHERE country ='UK';
-- -------AND USE
SELECT * FROM students
WHERE grade='A' AND course='Mathmatics' ;
SELECT * FROM students
WHERE (country='Australia' or country='UK') AND age=20 ;
SELECT * FROM students
-- WHERE age <=20 ;
WHERE age !=20 ;
SELECT *FROM students
DELETE 