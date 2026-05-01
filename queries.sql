-- Coca-Cola Financial Data Analysis (2009-18)
-- Database Setup

CREATE DATABASE coca_cola;
USE coca_cola;

-- =============================================
-- NULL VALUE CHECKS
-- =============================================

-- Check NULL values in P&L table
SELECT Metric, FY09, FY10, FY11, FY12, FY13, FY14, FY15, FY16, FY17, FY18
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

-- =============================================
-- DUPLICATE CHECKS
-- =============================================

-- Check duplicates in P&L
SELECT Metric, COUNT(*) as Count
FROM pnl
GROUP BY Metric
HAVING COUNT(*) > 1;

-- Check duplicates in Balance Sheet
SELECT Metric, COUNT(*) as Count
FROM balance_sheet
GROUP BY Metric
HAVING COUNT(*) > 1;

-- Check duplicates in Cash Flow
SELECT Metric, COUNT(*) as Count
FROM cash_flow
GROUP BY Metric
HAVING COUNT(*) > 1;