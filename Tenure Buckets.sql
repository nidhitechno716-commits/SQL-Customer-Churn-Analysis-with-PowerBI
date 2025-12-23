CREATE OR REPLACE VIEW vw_customer_churn_clean AS
SELECT
  customerID,
  gender,
  SeniorCitizen,
  Partner,
  Dependents,
  tenure,
  CASE 
    WHEN tenure = 0 THEN 'New (0 Month)'
    WHEN tenure BETWEEN 1 AND 12 THEN '0–1 Year'
    WHEN tenure BETWEEN 13 AND 24 THEN '1–2 Years'
    WHEN tenure BETWEEN 25 AND 48 THEN '2–4 Years'
    ELSE '4+ Years'
  END AS tenure_group,
  InternetService,
  Contract,
  PaymentMethod,
  MonthlyCharges,
  TotalCharges,
  Churn
FROM customer_churn;