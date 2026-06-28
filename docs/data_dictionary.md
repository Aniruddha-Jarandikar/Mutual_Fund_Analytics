# Data Dictionary

## Project
**BlueStock Mutual Fund Analytics**

---

## 1. dim_fund

| Column | Data Type | Description |
|---------|-----------|-------------|
| amfi_code | INTEGER | Unique AMFI scheme code |
| scheme_name | TEXT | Mutual fund scheme name |
| fund_house | TEXT | Asset Management Company |
| category | TEXT | Scheme category |
| launch_date | DATE | Scheme launch date |
| risk_level | TEXT | Risk classification |

---

## 2. fact_nav

| Column | Data Type | Description |
|---------|-----------|-------------|
| amfi_code | INTEGER | AMFI code |
| date | DATE | NAV date |
| nav | REAL | Net Asset Value |

---

## 3. fact_transactions

| Column | Data Type | Description |
|---------|-----------|-------------|
| transaction_id | INTEGER | Transaction ID |
| investor_id | INTEGER | Investor ID |
| amfi_code | INTEGER | Fund code |
| transaction_date | DATE | Transaction date |
| transaction_type | TEXT | SIP / Lumpsum / Redemption |
| amount_inr | REAL | Transaction amount |
| units | REAL | Units purchased/redeemed |
| state | TEXT | Investor state |
| kyc_status | TEXT | KYC verification status |

---

## 4. fact_performance

Stores annual returns and expense ratio.

---

## 5. fact_aum

Stores Assets Under Management (AUM) for each fund house.

---

## 6. fact_sip

Stores monthly SIP inflows and YoY growth.

---

## 7. fact_category_inflows

Stores category-wise mutual fund inflows.

---

## 8. fact_folio

Stores monthly folio count.

---

## 9. fact_portfolio

Stores portfolio holdings with sector allocation and weight.

---

## 10. dim_benchmark

Stores benchmark index closing values.