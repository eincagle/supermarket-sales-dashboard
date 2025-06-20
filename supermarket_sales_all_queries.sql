
-- Supermarket Sales SQL Analysis Script
-- Author: Ein Cagle
-- Description: Business insights extracted from transactional data using PostgreSQL

-- BASIC INSIGHTS --

-- 1. Total Revenue by City
SELECT city, SUM(total) AS revenue
FROM supermarket_sales
GROUP BY city
ORDER BY revenue DESC;

-- 2. Product Line Revenue, Profit, and Margin
SELECT product_line,
       SUM(total) AS revenue,
       SUM(gross_income) AS profit,
       ROUND(SUM(gross_income) / SUM(total) * 100, 2) AS margin_pct
FROM supermarket_sales
GROUP BY product_line
ORDER BY margin_pct DESC;

-- 3. Average Basket Size by Customer Type
SELECT customer_type,
       ROUND(AVG(total), 2) AS avg_basket_size
FROM supermarket_sales
GROUP BY customer_type;

-- 4. Invoice Count by Hour
SELECT HOUR(STR_TO_DATE(CONCAT(date, ' ', time), '%m/%d/%Y %r')) AS hour,
       COUNT(invoice_id) AS num_sales
FROM supermarket_sales
GROUP BY hour
ORDER BY num_sales DESC;

-- 5. Average Spend by Gender and Payment Method
SELECT gender, payment,
       ROUND(AVG(total), 2) AS avg_spend
FROM supermarket_sales
GROUP BY gender, payment;

-- 6. Total Sales by Day of the Week
SELECT DAYNAME(STR_TO_DATE(date, '%m/%d/%Y')) AS day_of_week,
       SUM(total) AS total_sales
FROM supermarket_sales
GROUP BY day_of_week
ORDER BY total_sales DESC;

-- ADVANCED ANALYSIS --

-- 7. Product Lines with Growing Weekly Revenue Trends
WITH weekly_sales AS (
  SELECT 
    product_line,
    WEEK(STR_TO_DATE(date, '%m/%d/%Y')) AS week_num,
    SUM(total) AS revenue
  FROM supermarket_sales
  GROUP BY product_line, week_num
),
ranked_sales AS (
  SELECT *,
         RANK() OVER (PARTITION BY product_line ORDER BY week_num) AS week_rank
  FROM weekly_sales
)
SELECT product_line,
       ROUND(CORR(week_rank, revenue), 2) AS growth_trend
FROM ranked_sales
GROUP BY product_line
ORDER BY growth_trend DESC;

-- 8. Highest-Spending Customer Segments by Demographic
SELECT city, gender, customer_type,
       COUNT(*) AS transactions,
       ROUND(AVG(total), 2) AS avg_spend,
       SUM(total) AS total_revenue
FROM supermarket_sales
GROUP BY city, gender, customer_type
ORDER BY total_revenue DESC;

-- 9. Correlation Between Rating and Total Spend
SELECT ROUND(CORR(rating, total), 2) AS rating_spend_correlation
FROM supermarket_sales;

-- 10. Revenue Contribution of the Top 10% of Transactions
WITH ranked_orders AS (
  SELECT total,
         PERCENT_RANK() OVER (ORDER BY total DESC) AS rank_pct
  FROM supermarket_sales
)
SELECT COUNT(*) AS num_orders,
       ROUND(SUM(total), 2) AS revenue
FROM ranked_orders
WHERE rank_pct <= 0.10;

-- 11. Product Lines with Most Inconsistent Ratings
SELECT product_line,
       ROUND(AVG(rating), 2) AS avg_rating,
       ROUND(STDDEV(rating), 2) AS rating_std_dev
FROM supermarket_sales
GROUP BY product_line
ORDER BY rating_std_dev DESC;

-- 12. Rolling 7-Day Average of Daily Sales
SELECT date,
       SUM(total) AS daily_sales,
       ROUND(AVG(SUM(total)) OVER (
         ORDER BY STR_TO_DATE(date, '%m/%d/%Y')
         ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
       ), 2) AS rolling_7day_avg
FROM supermarket_sales
GROUP BY date
ORDER BY STR_TO_DATE(date, '%m/%d/%Y');
