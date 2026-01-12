-- Q1. Overall Churn Rate
SELECT 
	churn, 
	COUNT(*) AS total_customers
FROM telco_customer_churn
GROUP BY churn;


-- Q2. Churn by Contract Type
SELECT 
	contract,
	COUNT(*) AS total_customers,
	SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_customer_churn
GROUP BY contract;


-- Q3. Churn by Monthly Charges
SELECT 
	churn,
	ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM telco_customer_churn
GROUP BY churn;


-- Q4. Churn by Internet Service
SELECT 
	internet_service,
	COUNT(*) AS total_customers,
	SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_customer_churn
GROUP BY internet_service;


-- Q5. Tenure Vs Churn
SELECT 
	churn, 
	ROUND(AVG(tenure), 1) AS avg_tenure
FROM telco_customer_churn
GROUP BY churn;


-- Q6. Payment Method & Churn
SELECT 
	payment_method,
	COUNT(*) AS total_customers,
	SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_customer_churn
GROUP BY payment_method
ORDER BY churned_customers DESC;