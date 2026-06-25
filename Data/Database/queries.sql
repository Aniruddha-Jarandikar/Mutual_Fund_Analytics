-- ======================================================
-- BlueStock Mutual Fund Analytics
-- Analytical SQL Queries
-- ======================================================

-- 1. Top 5 Funds by Latest NAV
SELECT f.scheme_name, MAX(n.nav) AS latest_nav
FROM fact_nav n
JOIN dim_fund f
ON n.amfi_code = f.amfi_code
GROUP BY f.scheme_name
ORDER BY latest_nav DESC
LIMIT 5;


-- 2. Average NAV by Month
SELECT
strftime('%Y-%m', date) AS month,
ROUND(AVG(nav),2) AS avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;


-- 3. Total SIP Amount by Year
SELECT
strftime('%Y', month) AS year,
SUM(sip_amount_crore) AS total_sip
FROM fact_sip
GROUP BY year;


-- 4. Transactions by State
SELECT
state,
COUNT(*) AS total_transactions,
SUM(amount_inr) AS total_amount
FROM fact_transactions
GROUP BY state
ORDER BY total_amount DESC;


-- 5. Funds with Expense Ratio below 1%
SELECT
f.scheme_name,
p.expense_ratio_pct
FROM fact_performance p
JOIN dim_fund f
ON p.amfi_code=f.amfi_code
WHERE p.expense_ratio_pct < 1
ORDER BY p.expense_ratio_pct;


-- 6. Top 10 Holdings by Weight
SELECT
stock_name,
sector,
weight_pct
FROM fact_portfolio
ORDER BY weight_pct DESC
LIMIT 10;


-- 7. Average Returns of Funds
SELECT
ROUND(AVG(return_1y),2) AS avg_1y,
ROUND(AVG(return_3y),2) AS avg_3y,
ROUND(AVG(return_5y),2) AS avg_5y
FROM fact_performance;


-- 8. Highest AUM Fund Houses
SELECT
fund_house,
MAX(aum_crore) AS highest_aum
FROM fact_aum
GROUP BY fund_house
ORDER BY highest_aum DESC;


-- 9. Total Category Inflows
SELECT
category,
SUM(inflow_crore) AS total_inflow
FROM fact_category_inflows
GROUP BY category
ORDER BY total_inflow DESC;


-- 10. Benchmark Performance Summary
SELECT
benchmark_name,
MIN(close_value) AS minimum,
MAX(close_value) AS maximum,
ROUND(AVG(close_value),2) AS average
FROM dim_benchmark
GROUP BY benchmark_name;