/*
=========================================================
Project : Book Store Sales Analysis
File    : 02_aggregate_queries.sql
Author  : Subhechha Dhara

Description:
This file contains SQL queries using aggregate
functions to summarize and analyze bookstore data.
=========================================================
*/

-- =========================================================
-- Query 1: Calculate the total stock of all books
-- =========================================================
SELECT
    SUM(stock) AS total_stock
FROM books;


-- =========================================================
-- Query 2: Calculate the total revenue generated
-- =========================================================
SELECT
    SUM(total_amount) AS total_revenue
FROM orders;


-- =========================================================
-- Query 3: Find the average price of Fantasy books
-- =========================================================
SELECT
    AVG(price) AS average_price
FROM books
WHERE genre = 'Fantasy';


-- =========================================================
-- Query 4: Calculate the total number of books sold in each genre
-- =========================================================
SELECT
    b.genre,
    SUM(o.quantity) AS total_books_sold
FROM orders o
JOIN books b
ON o.book_id = b.book_id
GROUP BY b.genre;


-- =========================================================
-- Query 5: Find customers who have placed at least two orders
-- =========================================================
SELECT
    o.customer_id,
    c.name,
    COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY
    o.customer_id,
    c.name
HAVING COUNT(o.order_id) >= 2;
