CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date Date,
    total_amount DECIMAL(10,2)

);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-03-01', 150.75),
(2, '2024-03-02', 299.99),
(3, '2024-03-03', 89.50),
(4, '2024-03-04', 450.00),
(5, '2024-03-05', 120.25),
(6, '2024-03-06', 250.40),
(7, '2024-03-07', 320.80),
(4, '2024-03-08', 75.60),
(9, '2024-03-09', 180.90),
(10, '2024-03-10', 220.15);


SELECT *FROM orders;
-- ------- find cistomers who have placed more than 2 orders and calculate total amount spend by each of these customers--------------------
SELECT customer_id, count(order_id),sum(total_amount) as total_spend FROM orders GROUP BY customer_id
HAVING count(order_id)>2
;
-- --------find the total amount ordrs each month in the 2022

SELECT extract (MONTH FROM order_date) as month,sum(total_amount) FROM  orders

WHERE extract(year from order_date)=2022 GROUP BY month;
