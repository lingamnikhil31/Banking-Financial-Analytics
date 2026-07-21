create database banking_db;
use banking_db;

RENAME TABLE `structured banking dataset` TO banking_dataset;

/*1. Total Customers*/
SELECT 
COUNT(DISTINCT ï»¿Client_ID) AS Total_Customers
FROM banking_dataset;

/*2. Total Deposits*/
SELECT
ROUND(SUM(Bank_Deposits),2) AS Total_Deposits
FROM banking_dataset;

/*3. Total Loan Portfolio*/
SELECT
ROUND(SUM(Bank_Loans),2) AS Total_Loan_Portfolio
FROM banking_dataset;

/*4. Average Estimated Income*/
SELECT
ROUND(AVG(Estimated_Income),2) AS Average_Estimated_Income
FROM banking_dataset;

/*5. Loan-to-Deposit Ratio (LDR)*/
SELECT
ROUND(
(SUM(Bank_Loans) / SUM(Bank_Deposits))*100,
2
) AS Loan_to_Deposit_Ratio
FROM banking_dataset;

/*6. Average Credit Card Balance*/
SELECT
ROUND(AVG(Credi_Card_Balance),2) AS Average_Credit_Card_Balance
FROM banking_dataset;

/*7. Total Business Lending*/
SELECT
ROUND(SUM(Business_Lending),2) AS Total_Business_Lending
FROM banking_dataset;

/*8. Premium Customers*/
SELECT
COUNT(*) AS Premium_Customers
FROM banking_dataset
WHERE Estimated_Income >= 100000;

/*9. Total Saving*/
SELECT
ROUND(SUM(Saving_Accounts),2) AS Total_Savings
FROM banking_dataset;

/*10. Total Checking Account Balance*/
SELECT
ROUND(SUM(Checking_Accounts),2) AS Total_Checking_Balance
FROM banking_dataset;

/*Bonus KPI. Customer Loyalty Distribution*/
SELECT
Loyalty_Classification,
COUNT(ï»¿Client_ID) AS Total_Customers
FROM banking_dataset
GROUP BY Loyalty_Classification
ORDER BY Total_Customers DESC;