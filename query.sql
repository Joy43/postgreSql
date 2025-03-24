-- Active: 1742240762482@@127.0.0.1@5432@ssjoy
CREATE TABLE books(
    id SERIAL PRIMARY KEY,
    title VARCHAR (100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    published_year INT NOT NULL,
    price NUMERIC(6,2),
    class VARCHAR(20)
);

INSERT INTO books (title, author, published_year, price, class)  
VALUES  
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 10.99, 1),  
('To Kill a Mockingbird', 'Harper Lee', 1960, 12.50, 2),  
('1984', 'George Orwell', 1949, 15.75, 3),  
('Moby-Dick', 'Herman Melville', 1851, 9.99, 4),  
('Pride and Prejudice', 'Jane Austen', 1813, 8.49, 5),  
('The Catcher in the Rye', 'J.D. Salinger', 1951, 11.20, 1),  
('The Hobbit', 'J.R.R. Tolkien', 1937, 14.99, 3),  
('Brave New World', 'Aldous Huxley', 1932, 13.75, 2),  
('The Lord of the Rings', 'J.R.R. Tolkien', 1954, 25.99, 3),  
('Crime and Punishment', 'Fyodor Dostoevsky', 1866, 16.50, 4),  
('War and Peace', 'Leo Tolstoy', 1869, 22.99, 5),  
('Jane Eyre', 'Charlotte Brontë', 1847, 10.50, 2),  
('Wuthering Heights', 'Emily Brontë', 1847, 9.75, 1),  
('Frankenstein', 'Mary Shelley', 1818, 11.99, 4),  
('Dracula', 'Bram Stoker', 1897, 13.49, 3),  
('The Picture of Dorian Gray', 'Oscar Wilde', 1890, 12.25, 2),  
('The Count of Monte Cristo', 'Alexandre Dumas', 1844, 18.99, 5),  
('Les Misérables', 'Victor Hugo', 1862, 19.99, 4),  
('Fahrenheit 451', 'Ray Bradbury', 1953, 14.75, 3),  
('The Brothers Karamazov', 'Fyodor Dostoevsky', 1880, 20.50,9), 
('The Brothers Karamazov', 'Fyodor Dostoevsky', 1880, 20.50,'Class 9');  

SELECT *FROM books;

select title, author FROM books;
SELECT *FROM books
WHERE class ='9';
DROP TABLE books;
SELECT *FROM books
WHERE published_year > 2022;
SELECT *FROM books
ORDER BY title DESC;

SELECT * FROM books
WHERE "class"='2'
LIMIT 5;

UPDATE books
set price=18
WHERE id='41';

SELECT *FROM books
ADD COLUMN code VARCHAR(50);
ALTER TABLE books
ALTER COLUMN published_year Type NUMERIC (20,2);

ALTER TABLE books
ALTER COLUMN published_year TYPE NUMERIC  (10,2);
SELECT *FROM books
WHERE title='The Brothers Karamazov';
SELECT *FROM books
WHERE published_year>2011
AND title IN ('The Brothers Karamazov ')
AND price BETWEEN 80.00 and 120.00;

SELECT *FROM books
WHERE title LIKE '%bangla%';