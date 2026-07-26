# 📚 Book Store Sales Analysis using PostgreSQL

A SQL project that demonstrates database design, data analysis, and business problem solving using PostgreSQL.

---

## 📖 Project Overview

This project is based on a Book Store database containing information about books, customers, and orders. The objective is to analyze the data using SQL and answer various business-related questions.

The project covers everything from basic SQL queries to advanced analytical queries using Window Functions.

---

## 🛠️ Tools & Technologies

- PostgreSQL
- pgAdmin 4
- SQL
- Git & GitHub

---

## 📂 Project Structure

```
BookStore-SQL-Project
│
├── data
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
│
├── sql
│   ├── database_schema.sql
│   ├── 01_basic_queries.sql
│   ├── 02_aggregate_queries.sql
│   ├── 03_join_queries.sql
│   └── 04_window_functions.sql
│
├── screenshots
│
├── README.md
└── LICENSE
```

---

## 📊 Database Tables

The project contains three relational tables:

- **Books**
- **Customers**
- **Orders**

Relationships are created using Primary Keys and Foreign Keys.

---

## 📌 SQL Concepts Covered

### Basic SQL

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- BETWEEN
- LIMIT

### Aggregate Functions

- SUM()
- AVG()
- COUNT()
- GROUP BY
- HAVING

### Joins

- INNER JOIN
- LEFT JOIN

### Window Functions

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()
- NTILE()
- Running Total

---

## 📈 Business Questions Solved

- Retrieve books by genre
- Find books published after a specific year
- Calculate total revenue
- Find the most expensive book
- Identify the most frequently ordered book
- Calculate books sold by each genre
- Calculate books sold by each author
- Find the highest spending customer
- Calculate remaining stock after fulfilling orders
- Rank books by price
- Calculate customer-wise running total

---

## 📷 Project Screenshots

Screenshots of the database schema and SQL query outputs are available in the **screenshots** folder.

---

## 🎯 Learning Outcomes

Through this project, I practiced:

- Writing SQL queries
- Designing relational databases
- Working with joins
- Using aggregate functions
- Applying window functions
- Solving business problems using SQL
- Organizing a GitHub project



# 📸 Project Screenshots

Screenshots of key SQL queries and their outputs from pgAdmin 4.

---

### Query: Orders with total amount above $20
Basic filtering query using WHERE.
![Orders above $20](query08_orders_above_20.png)

---

### Query: Customers who placed at least 2 orders
Aggregate query using GROUP BY and HAVING.
![Customers with multiple orders](query05_customers_multiple_orders.png)

---

### Query: Most frequently ordered book
JOIN query combining orders and books to find the top-selling title.
![Most ordered book](query_most_ordered_book.png)

---

### Query: Window function example
Advanced analytical query using window functions (e.g. RANK/ROW_NUMBER) for ranking or running totals.
![Window function example](query_window_function_example.png)

## 👩‍💻 Author

**Subhechha Dhara**

Aspiring Data Analyst | SQL | PostgreSQL | Excel | Python (Learning)
