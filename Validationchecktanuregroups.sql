SELECT tenure_group, COUNT(*)
FROM vw_customer_churn_clean
GROUP BY tenure_group
ORDER BY COUNT(*) DESC;