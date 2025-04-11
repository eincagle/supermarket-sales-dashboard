
-- Supermarket Sales SQL Analysis Script
-- Author: Ein Cagle
-- Description: Business insights extracted from transactional data using PostgreSQL

-- 1. Total Sales by City
SELECT city, ROUND(SUM(total), 2) AS total_sales
FROM supermarket_sales
GROUP BY city
ORDER BY total_sales DESC;

-- 2. Total Sales by Branch
SELECT branch, ROUND(SUM(total), 2) AS total_sales
FROM supermarket_sales
GROUP BY branch
ORDER BY total_sales DESC;

-- 3. Revenue by Product Line
SELECT product_line, ROUND(SUM(total), 2) AS revenue
FROM supermarket_sales
GROUP BY product_line
ORDER BY revenue DESC;

-- 4. Average Order Value (AOV) by Customer Type
SELECT customer_type, ROUND(AVG(total), 2) AS avg_order_value
FROM supermarket_sales
GROUP BY customer_type;

-- 5. Transaction Count by Payment Method
SELECT payment, COUNT(*) AS transactions
FROM supermarket_sales
GROUP BY payment
ORDER BY transactions DESC;

-- 6. Average Rating by City
SELECT city, ROUND(AVG(rating), 2) AS avg_rating
FROM supermarket_sales
GROUP BY city
ORDER BY avg_rating DESC;

-- 7. Monthly Sales Trend
SELECT month, ROUND(SUM(total), 2) AS monthly_sales
FROM supermarket_sales
GROUP BY month
ORDER BY monthly_sales;

-- 8. Profit by City
SELECT city, ROUND(SUM(gross_income), 2) AS total_profit
FROM supermarket_sales
GROUP BY city
ORDER BY total_profit DESC;

-- 9. Total Sales by Gender
SELECT gender, ROUND(SUM(total), 2) AS total_sales
FROM supermarket_sales
GROUP BY gender;

-- 10. Avg Quantity Sold by Product Line
SELECT product_line, ROUND(AVG(quantity), 2) AS avg_quantity
FROM supermarket_sales
GROUP BY product_line
ORDER BY avg_quantity DESC;
