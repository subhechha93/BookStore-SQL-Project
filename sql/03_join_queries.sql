/*
=========================================================
Project : Book Store Sales Analysis
File    : 03_join_queries.sql
Author  : Subhechha Dhara

Description:
This file contains SQL JOIN queries used to combine
data from multiple tables and generate business insights.
=========================================================
*/


-- =========================================================
-- Query 1: Calculate the total number of books sold for each genre
-- =========================================================
SELECT
    b.genre,
    SUM(o.quantity) AS total_books_sold
FROM orders o
JOIN books b
ON o.book_id = b.book_id
GROUP BY b.genre;


-- =========================================================
-- Query 2: Find the most frequently ordered book
-- =========================================================
SELECT
    o.book_id,
    b.title,
    COUNT(o.order_id) AS order_count
FROM orders o
JOIN books b
ON o.book_id = b.book_id
GROUP BY
    o.book_id,
    b.title
ORDER BY order_count DESC
LIMIT 1;


-- =========================================================
-- Query 3: Calculate the total quantity of books sold by each author
-- =========================================================
SELECT
    b.author,
    SUM(o.quantity) AS total_books_sold
FROM orders o
JOIN books b
ON o.book_id = b.book_id
GROUP BY b.author;


-- =========================================================
-- Query 4: List the cities where customers spent more than $30
-- =========================================================
SELECT DISTINCT
    c.city,
    o.total_amount
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
WHERE o.total_amount > 30;


-- =========================================================
-- Query 5: Find the customer who spent the most on book purchases
-- =========================================================
SELECT
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY total_spent DESC
LIMIT 1;


-- =========================================================
-- Query 6: Calculate the remaining stock after fulfilling all orders
-- =========================================================
SELECT
    b.book_id,
    b.title,
    b.stock,
    COALESCE(SUM(o.quantity), 0) AS ordered_quantity,
    b.stock - COALESCE(SUM(o.quantity), 0) AS remaining_stock
FROM books b
LEFT JOIN orders o
ON b.book_id = o.book_id
GROUP BY
    b.book_id,
    b.title,
    b.stock
ORDER BY b.book_id;
