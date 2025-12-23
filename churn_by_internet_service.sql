CREATE OR REPLACE VIEW vw_churn_by_internet_service AS
SELECT
  InternetService,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS churn_rate
FROM customer_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;