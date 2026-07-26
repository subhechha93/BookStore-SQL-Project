-- Total stock of all books
SELECT SUM(stock) AS total_stock
FROM books;

-- Total revenue
SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- Average price of Fantasy books
SELECT AVG(price) AS average_price
FROM books
WHERE genre = 'Fantasy';

-- Total books sold by genre
SELECT
    b.genre,
    SUM(o.quantity) AS total_books_sold
FROM orders o
JOIN books b
ON o.book_id = b.book_id
GROUP BY b.genre;

-- Number of orders placed by each customer
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;
