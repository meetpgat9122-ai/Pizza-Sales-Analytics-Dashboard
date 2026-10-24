# Data Validation

The pizza sales dataset was validated using Python and MySQL before dashboard development.

## Python Validation

The following checks were performed:

- Dataset row count verification
- Missing-value checks
- Duplicate-row checks
- Date-format validation
- Date-range validation
- Quantity validation
- Unit-price validation
- Total-price validation
- Business-rule validation:
  `total_price = quantity × unit_price`

## Date Cleaning

The original dataset contained mixed date formats.

Examples included:

- `M/D/YYYY`
- `D-M-YYYY`

The dates were standardized into a proper datetime format using Python/Pandas.

The final date range was:

- Minimum date: 2015-01-01
- Maximum date: 2015-12-31

## MySQL Validation

The cleaned dataset was imported into MySQL and validated using SQL queries.

Checks included:

- Total row count
- Minimum and maximum order dates
- Invalid quantities
- Invalid prices
- Price calculation mismatches

The dataset passed the validation checks before Power BI development.
