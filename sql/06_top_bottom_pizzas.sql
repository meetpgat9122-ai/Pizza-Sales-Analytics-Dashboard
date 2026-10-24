USE pizza_sales;

-- =========================================
-- TOP 5 PIZZAS BY REVENUE
-- =========================================

SELECT
    pizza_name,
    pizza_category,
    SUM(total_price) AS total_revenue,
    SUM(quantity) AS total_pizzas_sold,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY
    pizza_name,
    pizza_category
ORDER BY total_revenue DESC
LIMIT 5;


-- =========================================
-- BOTTOM 5 PIZZAS BY REVENUE
-- =========================================

SELECT
    pizza_name,
    pizza_category,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY
    pizza_name,
    pizza_category
ORDER BY total_revenue ASC
LIMIT 5;


-- =========================================
-- TOP 5 PIZZAS BY QUANTITY SOLD
-- =========================================

SELECT
    pizza_name,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_pizzas_sold DESC
LIMIT 5;


-- =========================================
-- BOTTOM 5 PIZZAS BY QUANTITY SOLD
-- =========================================

SELECT
    pizza_name,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_pizzas_sold ASC
LIMIT 5;


-- =========================================
-- TOP 5 PIZZAS BY NUMBER OF ORDERS
-- =========================================

SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;
