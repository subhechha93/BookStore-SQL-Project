SELECT * FROM books;

SELECT * FROM customers;

SELECT * FROM orders;
-- Retrieve all books in the Fiction genre
SELECT * FROM books
WHERE genre = 'Fiction';

-- Find books published after 1950
SELECT * FROM books
WHERE published_year > 1950;

-- List all customers from Canada
SELECT * FROM customers
WHERE country = 'Canada';

-- Show orders placed in November 2023
SELECT *
FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

-- Find the most expensive book
SELECT *
FROM books
ORDER BY price DESC
LIMIT 1;
