/*
=========================================================
Project : Book Store Sales Analysis
File    : 01_basic_queries.sql
Author  : Subhechha Dhara

Description:
This file contains basic SQL queries used to retrieve,
filter, and sort data from the Book Store database.
=========================================================
*/


-- =========================================================
-- Query 1: Display all records from the Books table
-- =========================================================
SELECT *
FROM books;


-- =========================================================
-- Query 2: Display all records from the Customers table
-- =========================================================
SELECT *
FROM customers;


-- =========================================================
-- Query 3: Display all records from the Orders table
-- =========================================================
SELECT *
FROM orders;


-- =========================================================
-- Query 4: Retrieve all books in the 'Fiction' genre
-- =========================================================
SELECT *
FROM books
WHERE genre = 'Fiction';


-- =========================================================
-- Query 5: Find books published after the year 1950
-- =========================================================
SELECT *
FROM books
WHERE published_year > 1950;


-- =========================================================
-- Query 6: List all customers from Canada
-- =========================================================
SELECT *
FROM customers
WHERE country = 'Canada';


-- =========================================================
-- Query 7: Show orders placed in November 2023
-- =========================================================
SELECT *
FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';


-- =========================================================
-- Query 8: Find the most expensive book
-- =========================================================
SELECT *
FROM books
ORDER BY price DESC
LIMIT 1;
