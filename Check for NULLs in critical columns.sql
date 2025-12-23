-- Check for NULLs in critical columns
SELECT 
  COUNT(*) AS total_rows,
  SUM(CASE WHEN TotalCharges IS NULL THEN 1 ELSE 0 END) AS null_total_charges
FROM customer_churn;