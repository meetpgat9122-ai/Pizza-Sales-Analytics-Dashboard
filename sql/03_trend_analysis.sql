USE pizza_sales;

-- =========================================
-- MONTHLY SALES TREND
-- =========================================

SELECT
    month_number,
    month_name,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data
GROUP BY
    month_number,
    month_name
ORDER BY month_number;


-- =========================================
-- WEEKDAY ANALYSIS
-- =========================================

SELECT
    WEEKDAY(order_date) AS weekday_number,
    day_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY
    WEEKDAY(order_date),
    day_name
ORDER BY weekday_number;


-- =========================================
-- HOURLY ORDERING ANALYSIS
-- =========================================

SELECT
    order_hour,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY order_hour
ORDER BY order_hour;