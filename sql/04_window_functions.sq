/*
=========================================================
Project : Book Store Sales Analysis
File    : 04_window_functions.sql
Author  : Subhechha Dhara

Description:
This file demonstrates the use of SQL Window Functions
for ranking, running totals, and analytical calculations.
=========================================================
*/


-- =========================================================
-- Query 1: Assign a unique row number based on book price
-- =========================================================
SELECT
    ROW_NUMBER() OVER (ORDER BY price DESC) AS row_number,
    book_id,
    title,
    author,
    genre,
    price
FROM books;


-- =========================================================
-- Query 2: Rank all books by price (highest to lowest)
-- =========================================================
SELECT
    book_id,
    title,
    author,
    price,
    RANK() OVER (ORDER BY price DESC) AS price_rank
FROM books;


-- =========================================================
-- Query 3: Rank all books using DENSE_RANK()
-- =========================================================
SELECT
    book_id,
    title,
    author,
    price,
    DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank
FROM books;


-- =========================================================
-- Query 4: Rank books within each genre by price
-- =========================================================
SELECT
    genre,
    title,
    price,
    RANK() OVER (
        PARTITION BY genre
        ORDER BY price DESC
    ) AS genre_price_rank
FROM books;


-- =========================================================
-- Query 5: Calculate the running total of order revenue
-- =========================================================
SELECT
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        ORDER BY order_date
    ) AS running_total
FROM orders;


-- =========================================================
-- Query 6: Display the previous order amount
-- =========================================================
SELECT
    order_id,
    order_date,
    total_amount,
    LAG(total_amount) OVER (
        ORDER BY order_date
    ) AS previous_order_amount
FROM orders;


-- =========================================================
-- Query 7: Display the next order amount
-- =========================================================
SELECT
    order_id,
    order_date,
    total_amount,
    LEAD(total_amount) OVER (
        ORDER BY order_date
    ) AS next_order_amount
FROM orders;


-- =========================================================
-- Query 8: Divide books into four price categories
-- =========================================================
SELECT
    book_id,
    title,
    price,
    NTILE(4) OVER (
        ORDER BY price DESC
    ) AS price_category
FROM books;


-- =========================================================
-- Query 9: Calculate the running total spent by each customer
-- =========================================================
SELECT
    c.name,
    o.order_date,
    o.total_amount,
    SUM(o.total_amount) OVER (
        PARTITION BY c.customer_id
        ORDER BY o.order_date
    ) AS running_total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


-- =========================================================
-- Query 10: Find the second highest-priced book in each genre
-- =========================================================
SELECT *
FROM (
    SELECT
        genre,
        title,
        price,
        DENSE_RANK() OVER (
            PARTITION BY genre
            ORDER BY price DESC
        ) AS rank_no
    FROM books
) ranked_books
WHERE rank_no = 2;
