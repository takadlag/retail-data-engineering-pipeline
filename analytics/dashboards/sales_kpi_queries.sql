-- ==========================================
-- Retail Sales Dashboard - KPI Queries
-- Source table: clean_sales
-- ==========================================

-- Total Revenue
SELECT
    SUM(total_amount) AS total_revenue
FROM clean_sales;

-- Total Orders
SELECT
    COUNT(DISTINCT invoice_id) AS total_orders
FROM clean_sales;

-- Total Quantity Sold
SELECT
    SUM(quantity) AS total_quantity_sold
FROM clean_sales;

-- Average Order Value (AOV)
SELECT
    SUM(total_amount) / COUNT(DISTINCT invoice_id) AS average_order_value
FROM clean_sales;

-- Revenue Over Time
SELECT
    invoice_date,
    SUM(total_amount) AS daily_revenue
FROM clean_sales
GROUP BY invoice_date
ORDER BY invoice_date;

-- Top Products by Revenue
SELECT
    product_name,
    SUM(total_amount) AS product_revenue
FROM clean_sales
GROUP BY product_name
ORDER BY product_revenue DESC
LIMIT 10;

-- Revenue by Country
SELECT
    country,
    SUM(total_amount) AS country_revenue
FROM clean_sales
GROUP BY country
ORDER BY country_revenue DESC;
