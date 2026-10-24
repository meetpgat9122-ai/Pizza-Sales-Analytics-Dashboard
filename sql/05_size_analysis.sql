USE pizza_sales;

-- =========================================
-- PIZZA SIZE ANALYSIS
-- =========================================

SELECT
    pizza_size,
    SUM(total_price) AS total_revenue,
    SUM(quantity) AS total_pizzas_sold,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_size
ORDER BY total_revenue DESC;
