#SQL scripts available 
  - Handles null or blank values  
  - Filters only relevant records  
  - Prepares data for Power BI analysis


#PowerBI-Customer-Churn-Analysis
Power BI dashboard analyzing customer churn for telecom
# Customer Churn Analysis Dashboard

## Overview
This Power BI project analyzes customer churn for a telecom company. The dashboard provides insights into customer behavior, churn trends, and key performance indicators (KPIs) for quick executive decisions.

## Features
- **Executive Overview Page**
  - KPI Cards: Total Customers, Churned Customers, Churn Rate %
  - Quick visualization of churn by geography, customer segments, and monthly trends
- **Interactive Filters**
  - Geography, Segment, Tenure
- **Clean Layout**
  - Aligned KPI cards, consistent color coding, and clear charts

## Data
- **Source:** `Telco-Customer-Churn_analyts.csv`
- **Columns Include:** customerID	gender	SeniorCitizen	Partner	Dependents	tenure	PhoneService	MultipleLines	InternetService	OnlineSecurity	OnlineBackup	DeviceProtection	TechSupport	StreamingTV	StreamingMovies	Contract	PaperlessBilling	PaymentMethod	MonthlyCharges	TotalCharges	Churn

## DAX Measures
- **Total Customers**
  ```DAX
  Total Customers = COUNT(vw_customer_churn_clean[CustomerID])
- **Churned Customers**
  Churned Customers = 
CALCULATE(
    COUNT(vw_customer_churn_clean[CustomerID]),
    vw_customer_churn_clean[Churn] = "Yes"
)
- **Churn Rate %**
Churn Rate % = DIVIDE([Churned Customers], [Total Customers], 0)
