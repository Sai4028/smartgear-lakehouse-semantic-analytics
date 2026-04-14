-- Synapse SQL Queries on Gold Layer Data
-- ---------------------------------------------
-- These queries represent how business users
-- can analyze data using SQL on Gold layer

-- 1. Monthly Revenue
SELECT 
    DATE_FORMAT(timestamp, 'yyyy-MM') AS month,
    SUM(revenue) AS monthly_revenue
FROM gold_sales
GROUP BY DATE_FORMAT(timestamp, 'yyyy-MM')
ORDER BY month;


-- 2. Revenue by Region
SELECT 
    region,
    SUM(revenue) AS total_revenue
FROM gold_sales
GROUP BY region
ORDER BY total_revenue DESC;


-- 3. Average Order Value (AOV)
SELECT 
    region,
    AVG(revenue) AS avg_order_value
FROM gold_sales
GROUP BY region;


-- 4. Top Products by Revenue
SELECT 
    product,
    SUM(revenue) AS total_revenue
FROM gold_sales
GROUP BY product
ORDER BY total_revenue DESC;