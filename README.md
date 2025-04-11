# Supermarket Sales Analytics Project

## Overview

This project analyzes transactional sales data from a fictional supermarket across three cities using **SQL** and **Power BI**. The goal is to extract meaningful insights about customer behavior, sales performance, and profitability trends from the raw data.

## Tools Used

- **PostgreSQL**: SQL queries for business analysis
- **Power BI**: Visualizing KPIs, trends, and breakdowns
- **Excel**: Cleaning and formatting the raw CSV data

## Key Questions Answered (SQL Analysis)

1. What are the total sales by city and branch?
2. Which product lines generate the most revenue?
3. What is the average order value for different customer types?
4. Which payment methods are most used?
5. How does customer satisfaction (rating) vary by city?
6. What is the trend in monthly sales?
7. Where are the most profitable customers located?
8. Do men or women spend more overall?
9. Which product lines are sold in the highest quantities?

## Files Included

| File                                         | Description                                                                            |
| -------------------------------------------- | -------------------------------------------------------------------------------------- |
| `supermarket_sales_all_queries.sql`          | SQL script with 10 business-driven analysis queries                                    |
| `supermarket_sales.csv`                      | Original raw dataset                                                                   |
| `supermarket_sales_cleaned.csv` _(optional)_ | Cleaned version with formatting stripped, currency parsed, and column names simplified |

## Power BI Dashboard

Power BI connects directly to the PostgreSQL database to visualize the output from the SQL queries. The dashboard includes:

- KPIs (Total Revenue, AOV, Avg Rating)
- Monthly sales trends
- Product line performance
- Customer type and gender breakdowns

## How to Use This Project

1. Clone or download the repo
2. Open the SQL file and run the queries in a PostgreSQL client (pgAdmin)

## Credit

Data originally sourced from a Kaggle sample dataset and adapted for educational purposes.
