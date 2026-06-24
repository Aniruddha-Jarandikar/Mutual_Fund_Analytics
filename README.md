# Mutual Fund Analytics Platform

## Overview

An end-to-end Mutual Fund Analytics project built using Python, Pandas, MFAPI, and GitHub.

The project focuses on collecting, validating, and analyzing Indian Mutual Fund data from multiple sources, including MFAPI and AMFI-based datasets.

---

## Project Objectives

- Build a complete ETL pipeline for mutual fund data.
- Ingest and validate NAV, AUM, SIP, transaction, and benchmark datasets.
- Perform data quality checks and AMFI code validation.
- Fetch live NAV data using MFAPI.
- Prepare cleaned datasets for SQL and BI dashboards.
- Develop analytics and reporting workflows for mutual fund performance analysis.

---

## Project Structure

```text
Mutual_Fund_Analytics
│
├── Data
│   ├── raw
│   ├── processed
│   └── db
│
├── scripts
│   ├── data_ingestion.py
│   ├── fund_master_analysis.py
│   ├── live_nav_fetch.py
│   └── amfi_validation.py
│
├── notebooks
├── reports
├── dashboard
│
├── requirements.txt
└── README.md
```

---

## Datasets Used

1. Fund Master
2. NAV History
3. AUM by Fund House
4. Monthly SIP Inflows
5. Category Inflows
6. Industry Folio Count
7. Scheme Performance
8. Investor Transactions
9. Portfolio Holdings
10. Benchmark Indices

---

## Features Implemented (Day 1)

### Data Ingestion
- Loaded and validated all CSV datasets
- Checked shape, columns, data types, and missing values

### Fund Master Analysis
- Extracted:
  - Fund Houses
  - Categories
  - Sub-Categories
  - Risk Categories

### Live NAV Integration
- Connected with MFAPI
- Retrieved live NAV data
- Stored NAV history as CSV

### Multi-Scheme NAV Fetching
Fetched NAV data for:

- SBI Bluechip Fund
- ICICI Bluechip Fund
- Nippon Large Cap Fund
- Axis Bluechip Fund
- Kotak Bluechip Fund

### AMFI Validation
- Verified AMFI codes between fund master and NAV history datasets
- Confirmed dataset consistency

---

## Technologies Used

- Python
- Pandas
- NumPy
- Requests
- Jupyter Notebook
- Git & GitHub

---

## Future Scope

- Data Cleaning & Transformation
- SQLite/PostgreSQL Integration
- Star Schema Design
- Mutual Fund Performance Metrics
- Risk Analytics
- Power BI Dashboard
- Benchmark Comparison
- Investor Demographic Analysis

---

## Repository

GitHub Repository:

https://github.com/Aniruddha-Jarandikar/Mutual_Fund_Analytics

---

## Author

**Aniruddha Jarandikar**

Bluestock Fintech Capstone Project
Mutual Fund Analytics Platform