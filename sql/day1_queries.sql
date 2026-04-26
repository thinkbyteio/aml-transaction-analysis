-- ============================================
-- DAY 1: AML Transaction Analysis
-- Dataset: PaySim (6.3M transactions)
-- Author: Sumeet Kumar
-- Date: 27-04-2026
-- ============================================

-- Query 1: Overall fraud rate
SELECT 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS total_fraud,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 3) AS fraud_percentage
FROM transactions;

-- Query 2: Fraud by transaction type (AML typology analysis)
SELECT 
    type,
    COUNT(*) AS total_count,
    SUM(is_fraud) AS fraud_count,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 3) AS fraud_rate_pct,
    ROUND(SUM(amount)) AS total_fraud_amount
FROM transactions
GROUP BY type
ORDER BY fraud_count DESC;