# 🍕 Pizza Sales Analytics Dashboard

**Turning pizza sales data into actionable business insights using Python, SQL, and data analytics.**

## 📌 Project Overview

The **Pizza Sales Analytics Dashboard** project explores pizza sales data to understand sales performance, customer purchasing patterns, product popularity, and revenue trends.

The project combines Python-based data exploration with SQL-driven analysis to organize sales data, validate records, calculate key performance indicators (KPIs), and identify insights that can support data-driven business decisions.

The primary objective is to answer practical business questions such as:

- How much revenue does the business generate?
- Which pizza categories and sizes contribute most to sales?
- What are the daily and monthly sales trends?
- Which pizzas are the best and worst performers?
- How can sales data help improve product planning and business decisions?

## 🎯 Business Objectives

- Analyze overall sales and revenue performance.
- Calculate key business metrics using SQL.
- Identify top-performing and underperforming pizza products.
- Examine sales trends across different time periods.
- Compare pizza categories and sizes.
- Validate data quality before performing analysis.
- Translate analytical results into actionable business recommendations.

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| Python | Data exploration and analysis |
| Jupyter Notebook | Interactive analysis and experimentation |
| SQL / MySQL | Data validation, KPI calculations, and business analysis |
| Pandas | Data manipulation and analysis, where used in the notebook |
| Git & GitHub | Version control and project documentation |
| CSV | Dataset storage and data exchange |

## 📂 Project Structure

```text
Pizza-Sales-Analytics-Dashboard/
│
├── data/
│   ├── pizza_sales.csv
│   └── pizza_sales_cleaned.csv
│
├── docs/
│   ├── data_dictionary.md
│   └── validation.md
│
├── notebook/
│   └── 01_data_exploration.ipynb
│
├── powerbi/
│
├── screenshots/
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_kpi_analysis.sql
│   ├── 03_trend_analysis.sql
│   ├── 04_category_analysis.sql
│   ├── 05_size_analysis.sql
│   ├── 06_top_bottom_pizzas.sql
│   └── SQLanalysis.sql
│
└── README.md
```

## 📊 Key Performance Indicators (KPIs)

The SQL analysis is organized around important pizza sales metrics, including:

- **Total Revenue:** Total sales value generated.
- **Total Orders:** Number of distinct customer orders.
- **Total Pizzas Sold:** Total quantity of pizzas sold.
- **Average Order Value (AOV):** Average revenue generated per order.
- **Average Pizzas per Order:** Average number of pizzas purchased per order.
- **Category Performance:** Sales contribution by pizza category.
- **Size Performance:** Sales contribution by pizza size.
- **Product Performance:** Identification of top- and bottom-performing pizzas.
- **Sales Trends:** Analysis of changes in sales across days and months.

*Note: Exact KPI definitions and results should be verified against the SQL queries and dataset before publication.*

## 🔍 Analysis Performed

### 1. Data Validation

The project includes SQL queries for checking data quality and documenting validation results before business analysis.

### 2. Overall Sales Performance

The KPI analysis examines key sales metrics to establish an overview of business performance.

### 3. Daily and Monthly Trends

The trend analysis explores sales patterns over time to help identify periods of stronger or weaker demand.

### 4. Category Analysis

Pizza categories are compared to understand their contribution to sales and revenue.

### 5. Size Analysis

Sales performance is examined across different pizza sizes to understand customer preferences.

### 6. Top and Bottom Pizza Analysis

The project includes queries designed to identify the strongest and weakest performers using sales-related metrics.

### 7. Python-Based Data Exploration

The Jupyter notebook provides an environment for exploring the dataset and understanding its structure before drawing conclusions.

## 💡 Business Applications

The analysis can support decisions such as:

- **Inventory Planning:** Use sales patterns to guide ingredient purchasing and stock management.
- **Product Strategy:** Understand which pizzas perform well and which may need further investigation.
- **Demand Planning:** Examine recurring daily and monthly patterns when planning staffing and preparation.
- **Menu Optimization:** Compare product categories, sizes, and sales contributions.
- **Performance Monitoring:** Use consistent KPIs to track changes in business performance.

These are potential applications of the analysis; specific recommendations should be based on the measured results.

## 🚀 Getting Started

### Prerequisites

Install or prepare the following:

- Python 3
- Jupyter Notebook
- A SQL database compatible with the queries, such as MySQL
- Git

### 1. Clone the repository

```bash
git clone https://github.com/meetpgat9122-ai/Pizza-Sales-Analytics-Dashboard.git
cd Pizza-Sales-Analytics-Dashboard
```

### 2. Set up Python

Create a virtual environment:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

Install the packages required by your notebook. For example, if your notebook uses Pandas:

```bash
python -m pip install pandas jupyter
```

Additional packages may be required depending on the notebook's imports.

### 3. Run the Jupyter Notebook

```bash
jupyter notebook
```

Open `notebook/01_data_exploration.ipynb` and execute the cells in order.

### 4. Run the SQL analysis

1. Open your SQL client, such as MySQL Workbench.
2. Create or select a database for the project.
3. Import `data/pizza_sales.csv` or `data/pizza_sales_cleaned.csv`, as appropriate.
4. Verify that the table and column names match the SQL queries.
5. Execute the scripts in the `sql/` directory, starting with data validation and then proceeding to the analysis queries.

**Important:** SQL scripts may depend on a particular table name, column types, or SQL dialect. Review the queries and table definitions before executing them.

## 📁 Documentation

Additional project documentation is available in the `docs/` directory:

- [`Data Dictionary`](docs/data_dictionary.md) — reference for dataset fields and their meanings.
- [`Data Validation`](docs/validation.md) — documentation related to data quality checks.

## 📈 Results and Insights

This section should contain verified findings from the actual analysis, such as:

- The highest-revenue pizza category.
- The most popular pizza size.
- The best-performing pizza by revenue or quantity.
- The lowest-performing pizza under the selected metric.
- The busiest sales periods.
- Recommendations supported by the results.

**Results will be added after verifying the outputs from the SQL queries and notebook.** No numerical findings are claimed here without validation.

## 🔮 Future Improvements

- Build an interactive Power BI dashboard with KPI cards, trend charts, and product-level comparisons.
- Add screenshots of the completed dashboard.
- Automate data cleaning and validation.
- Add a reproducible database setup script.
- Document verified findings and business recommendations.
- Improve the analysis with additional customer, pricing, or profitability metrics if the required data is available.

## 👨‍💻 Author

**Priyanshu Kumar**

B.Tech — Electronics and Communication Engineering, NIT Silchar

GitHub: [@meetpgat9122-ai](https://github.com/meetpgat9122-ai)

---

*This project demonstrates practical data analytics workflows involving data exploration, SQL-based business analysis, KPI development, and technical documentation.*
