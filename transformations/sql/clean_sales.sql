-- =====================================================
-- File: clean_sales.sql
-- Purpose: Create a clean, analytics-ready sales table
-- Methodology: ELT (Transform inside the warehouse)
-- =====================================================

-- This query represents how raw retail data
-- would be transformed into a trusted analytics table

SELECT
    InvoiceNo        AS invoice_id,
    StockCode        AS product_id,
    Description      AS product_name,
    Quantity         AS quantity,
    UnitPrice        AS unit_price,
    Quantity * UnitPrice AS total_amount,
    DATE(InvoiceDate) AS invoice_date,
    Country          AS country
FROM raw_sales
WHERE
    Quantity > 0
    AND UnitPrice > 0
    AND InvoiceNo IS NOT NULL;
