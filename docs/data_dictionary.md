# Pizza Sales Data Dictionary

| Column | Description | Data Type |
|---|---|---|
| pizza_id | Unique identifier for pizza sales record | Integer |
| order_id | Identifier of the customer order | Integer |
| pizza_name_id | Identifier for the pizza type | Text |
| quantity | Number of pizzas sold in the record | Integer |
| order_date | Date when the order was placed | Date |
| order_time | Time when the order was placed | Time |
| unit_price | Price of one pizza | Decimal |
| total_price | Total price for the line item | Decimal |
| pizza_size | Size of the pizza | Text |
| pizza_category | Category of the pizza | Text |
| pizza_ingredients | Ingredients used in the pizza | Text |
| pizza_name | Name of the pizza | Text |
| year | Year extracted from order_date | Integer |
| month_number | Month number extracted from order_date | Integer |
| month_name | Month name extracted from order_date | Text |
| day_name | Day of week extracted from order_date | Text |
| order_hour | Hour extracted from order_time | Integer |

## Important Business Metrics

### Total Revenue
Sum of total_price.

### Total Orders
Count of distinct order_id values.

### Total Pizzas Sold
Sum of quantity.

### Average Order Value
Total Revenue / Total Orders.

### Average Pizzas Per Order
Total Pizzas Sold / Total Orders.