CREATE DATABASE pizza_sales;

USE pizza_sales;
SELECT DATABASE();
CREATE TABLE pizza_sales_data (
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(50),
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(10),
    pizza_category VARCHAR(50),
    pizza_ingredients TEXT,
    pizza_name VARCHAR(100),
    year INT,
    month_number INT,
    month_name VARCHAR(20),
    day_name VARCHAR(20),
    order_hour INT
);
SHOW TABLES;
DESCRIBE pizza_sales_data;
SELECT DATABASE();

USE pizza_sales;
SELECT COUNT(*) AS total_rows
FROM pizza_sales_data;


SELECT *
FROM pizza_sales_data
LIMIT 10;

SELECT
    COUNT(*) AS total_rows,
    COUNT(pizza_id) AS pizza_id_count,
    COUNT(order_id) AS order_id_count,
    COUNT(quantity) AS quantity_count,
    COUNT(order_date) AS date_count,
    COUNT(total_price) AS total_price_count
FROM pizza_sales_data;


-- TOTAL REVENUE
select sum(total_price) as totalrevenue
from pizza_sales_data; 

-- totla pizzas sold 
SELECT
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data;


-- total orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data;


-- AOV (Average order value )
SELECT
    ROUND(
        SUM(total_price) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM pizza_sales_data;

-- now using aggregation functions like group by
SELECT
    pizza_category,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY pizza_category;

-- number of pizzas sold
SELECT
    pizza_category,
    SUM(quantity) AS pizzas_sold
FROM pizza_sales_data
GROUP BY pizza_category;

-- combining all 


SELECT
    pizza_category,
    SUM(total_price) AS total_revenue,
    SUM(quantity) AS pizzas_sold,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_category;

-- orderby for sorting 
SELECT
    pizza_category,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY pizza_category
ORDER BY total_revenue DESC;

-- analyise pizza size
SELECT
    pizza_size,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY pizza_size
ORDER BY total_revenue DESC;


-- Revenue by month number

SELECT
    MONTH(order_date) AS month_number,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY MONTH(order_date)
ORDER BY month_number;


-- grouping by month name also  .....
SELECT
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY month_number;

-- more cleaner version
SELECT
    month_number,
    month_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY
    month_number,
    month_name
ORDER BY month_number ;

-- How many orders did we receive each month?
SELECT
    month_number,
    month_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY
    month_number,
    month_name
ORDER BY month_number;

-- combining all three 
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

-- Find the highest revenue month
SELECT
    month_number,
    month_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY
    month_number,
    month_name
ORDER BY total_revenue DESC
LIMIT 1;


-- revenue by day
SELECT
    day_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY day_name
ORDER BY total_revenue DESC;

-- Orders + Revenue + Pizzas
SELECT
    day_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY day_name
ORDER BY total_revenue DESC;

-- weekday revenue
SELECT
    DAYOFWEEK(order_date) AS weekday_number,
    day_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY
    DAYOFWEEK(order_date),
    day_name
ORDER BY weekday_number;

-- Number of orders by hour
SELECT
    order_hour,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY order_hour
ORDER BY order_hour;

-- peak ordering hour
SELECT
    order_hour,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY order_hour
ORDER BY total_orders DESC
LIMIT 1;

-- Orders + revenue + pizzas by hour
SELECT
    order_hour,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY order_hour
ORDER BY order_hour;

-- peak rev hour
SELECT
    order_hour,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY order_hour
ORDER BY total_revenue DESC
LIMIT 1;


-- peak pizza selling hour
SELECT
    order_hour,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data
GROUP BY order_hour
ORDER BY total_pizzas_sold DESC
LIMIT 1;


-- pizza sold by category
SELECT
    pizza_category,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data
GROUP BY pizza_category
ORDER BY total_pizzas_sold DESC;

-- complete category anaylysis 
SELECT
    pizza_category,
    SUM(total_price) AS total_revenue,
    SUM(quantity) AS total_pizzas_sold,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_category
ORDER BY total_revenue DESC;

-- top 5 pizza by order revenue
SELECT
    pizza_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;


-- Top 5 pizzas by Quantity Sold 
SELECT
    pizza_name,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_pizzas_sold DESC
LIMIT 5;

-- Top 5 pizzas by Number of Orders
SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;

-- complete top pizza anaylyusis
SELECT
    pizza_name,
    SUM(total_price) AS total_revenue,
    SUM(quantity) AS total_pizzas_sold,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales_data
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;

