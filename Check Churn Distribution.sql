SELECT Churn, COUNT(*) AS customers
FROM customer_churn
GROUP BY Churn;