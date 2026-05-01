# Coca-Cola Financial Dashboard (2009–18)

End-to-end financial data analysis project using 
Excel, MySQL, and Power BI.

## What This Project Covers

Sourced Coca-Cola's historical financial dataset 
from Kaggle covering 2009 to 2018. Restructured 
and cleaned the raw data in Excel, then split it 
into three focused datasets — P&L, Balance Sheet, 
and Cash Flow. Ran SQL queries in MySQL Workbench 
to validate data integrity before visualization.

## Tools Used

- Microsoft Excel — data restructuring and cleaning
- MySQL Workbench — null checks and duplicate validation
- Power BI — dashboard design and visualization

## SQL Queries Used

```sql
-- Check NULL values in P&L
SELECT Metric, FY09, FY10, FY11, FY12, FY13, 
FY14, FY15, FY16, FY17, FY18
FROM pnl
WHERE FY09 IS NULL
   OR FY10 IS NULL 
   OR FY11 IS NULL
   OR FY12 IS NULL 
   OR FY13 IS NULL
   OR FY14 IS NULL 
   OR FY15 IS NULL
   OR FY16 IS NULL 
   OR FY17 IS NULL
   OR FY18 IS NULL;

-- Check duplicates across all 3 tables
SELECT Metric, COUNT(*) as Count
FROM pnl
GROUP BY Metric
HAVING COUNT(*) > 1;

SELECT Metric, COUNT(*) as Count
FROM balance_sheet
GROUP BY Metric
HAVING COUNT(*) > 1;

SELECT Metric, COUNT(*) as Count
FROM cash_flow
GROUP BY Metric
HAVING COUNT(*) > 1;
```

## Dashboard Pages

**Page 1 — P&L and Balance Sheet**
- Financial Metrics Key: Net Operating Revenues, 
Gross Profit, Operating Income, Consolidated 
Net Income (2009–18)
- Balance Sheet Trends: Total Assets, Total Equity, 
Total Current Liabilities, Long-term Debt (2009–18)

**Page 2 — Cash Flow Analysis**
- Cash Flow trends: Operating Activities, Investing 
Activities, Dividends, Purchases of Investments 
(2009–18)

## Files in This Repo

| File | Description |
|------|-------------|
| Cola_Data_Cleaning.xlsx | Cleaned and restructured dataset |
| PnL.csv | Profit and Loss data |
| Cash_Flow.csv | Cash Flow data |
| Balance_Sheet.csv | Balance Sheet data |
| Coca Cola Financial Dashboard.pbix | Power BI dashboard file |

## Live Dashboard

[Power BI Link]

## Dataset Source

Kaggle — Coca-Cola Historical Financial Data
