USE pizza_sales;

-- =========================================
-- KPI ANALYSIS
-- =========================================

SELECT
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold,
    
    ROUND(
        SUM(total_price) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value,
    
    ROUND(
        SUM(quantity) / COUNT(DISTINCT order_id),
        2
    ) AS average_pizzas_per_order

FROM pizza_sales_data;