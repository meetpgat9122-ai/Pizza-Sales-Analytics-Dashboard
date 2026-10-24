USE pizza_sales;

-- =========================================
-- CATEGORY PERFORMANCE
-- =========================================

SELECT
    pizza_category,
    SUM(total_price) AS total_revenue,
    SUM(quantity) AS total_pizzas_sold,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_category
ORDER BY total_revenue DESC;


-- =========================================
-- REVENUE CONTRIBUTION BY CATEGORY
-- =========================================

SELECT
    pizza_category,
    ROUND(
        SUM(total_price) * 100.0 /
        (
            SELECT SUM(total_price)
            FROM pizza_sales_data
        ),
        2
    ) AS revenue_percentage
FROM pizza_sales_data
GROUP BY pizza_category
ORDER BY revenue_percentage DESC;