# Supermarket Sales Analytics Project

## Overview

This project analyzes transactional sales data from a fictional supermarket across three cities using **SQL** and **Power BI**. The goal is to extract meaningful insights about customer behavior, sales performance, and profitability trends from the raw data.

![dashboard](download.png)

## Tools Used

- **PostgreSQL**: SQL queries for business analysis
- **Power BI**: Visualizing KPIs, trends, and breakdowns
- **Excel**: Cleaning and formatting the raw CSV data

## Key Questions (SQL Analysis)

1. What are the total sales by city and branch?
- Naypyitaw: $110,568.86
- Yangon: $106,200.57
- Mandalay: $106,198.00
- Branch C: $110,568.86
- Branch A: $106,200.57
- Branch B: $106,198.00
  
2. Which product lines generate the most revenue?
The most profitable product line is Food and Beverages.
- Food and Beverages: $56,144.96
- Sports and Travel: $55,123.00
- Electronic Accessories: $54,337.64
- Fashion Accessories: $54,306.03
- Home and Lifestyle: $53,861.96
- Health and Beauty: $49,193.84
   
3. What is the average order value for different customer types?
- Member: $327.79
- Normal: $318.12
   
4. Which payment methods are most used?
The most used payment method is Ewallet.
- Ewallet: 345
- Cash: 344
- Credit Card: 311
   
5. How does customer satisfaction (rating) vary by city?
- Naypyitaw: 7.07
- Yangon: 7.03
- Mandalay: 6.82
   
6. What is the trend in monthly sales?
- January 2019: $116,292.11
- February 2019: $97,219.58
- March 2019: $109,455.74
    
7. Where are the most profitable customers located?
The most profitable customers are located in Naypyitaw.
- Naypyitaw: $5,265.33
- Mandalay: $5,057.36
- Yangon: $5,057.36
    
8. Do men or women spend more overall?
Women spend more overall.
- Female: $167,883.26
- Male: $155,084.17
    
9. Which product lines are sold in the highest quantities?
Electronic Accessories are sold in the highest quantities.
- Electronic Accessories: 5.71
- Home and Lifestyle: 5.69
- Health and Beauty: 5.62
- Sports and Travel: 5.54
- Food and Beverages: 5.47
- Fashion Accessories: 5.07
    

## Files Included

| File                                         | Description                                                                            |
| -------------------------------------------- | -------------------------------------------------------------------------------------- |
| `supermarket_sales_all_queries.sql`          | SQL script with 10 business-driven analysis queries                                    |
| `supermarket_sales.csv`                      | Original raw dataset                                                                   |
| `supermarket_sales_cleaned.csv` | Cleaned version with formatting stripped, currency parsed, and column names simplified |

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
