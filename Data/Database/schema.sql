-- ==========================================
-- BlueStock Mutual Fund Analytics Database
-- SQLite Star Schema
-- ==========================================

CREATE TABLE dim_fund (
    amfi_code INTEGER PRIMARY KEY,
    scheme_name TEXT NOT NULL,
    fund_house TEXT,
    category TEXT,
    launch_date DATE,
    risk_level TEXT
);

CREATE TABLE fact_nav (
    nav_id INTEGER PRIMARY KEY AUTOINCREMENT,
    amfi_code INTEGER,
    date DATE,
    nav REAL,
    FOREIGN KEY(amfi_code)
        REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_transactions (
    transaction_id INTEGER PRIMARY KEY,
    investor_id INTEGER,
    amfi_code INTEGER,
    transaction_date DATE,
    transaction_type TEXT,
    amount_inr REAL,
    units REAL,
    state TEXT,
    kyc_status TEXT,
    FOREIGN KEY(amfi_code)
        REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_performance (
    amfi_code INTEGER,
    return_1y REAL,
    return_3y REAL,
    return_5y REAL,
    expense_ratio_pct REAL,
    sharpe_ratio REAL,
    FOREIGN KEY(amfi_code)
        REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_aum (
    fund_house TEXT,
    date DATE,
    aum_crore REAL
);

CREATE TABLE fact_sip (
    month DATE,
    sip_amount_crore REAL,
    yoy_growth_pct REAL
);

CREATE TABLE fact_category_inflows (
    month DATE,
    category TEXT,
    inflow_crore REAL
);

CREATE TABLE fact_folio (
    month DATE,
    folio_count INTEGER
);

CREATE TABLE fact_portfolio (
    amfi_code INTEGER,
    portfolio_date DATE,
    stock_name TEXT,
    sector TEXT,
    weight_pct REAL,
    FOREIGN KEY(amfi_code)
        REFERENCES dim_fund(amfi_code)
);

CREATE TABLE dim_benchmark (
    date DATE,
    benchmark_name TEXT,
    close_value REAL
);