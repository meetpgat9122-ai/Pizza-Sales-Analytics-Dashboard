USE pizza_sales;

-- 1. Total number of rows
SELECT COUNT(*) AS total_rows
FROM pizza_sales_data;

-- 2. Date range
SELECT
    MIN(order_date) AS minimum_date,
    MAX(order_date) AS maximum_date
FROM pizza_sales_data;

-- 3. Invalid quantities
SELECT COUNT(*) AS invalid_quantity_rows
FROM pizza_sales_data
WHERE quantity <= 0;

-- 4. Invalid prices
SELECT COUNT(*) AS invalid_price_rows
FROM pizza_sales_data
WHERE unit_price <= 0
   OR total_price <= 0;

-- 5. Check total price calculation
SELECT COUNT(*) AS price_mismatch_rows
FROM pizza_sales_data
WHERE ABS(total_price - (quantity * unit_price)) > 0.01;
