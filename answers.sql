-- Select the paymentDate and the total amount paid on each date
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount_paid
FROM 
    payments
-- Group results by payment date so we can calculate totals per date
GROUP BY 
    paymentDate
-- Sort by date in descending order (latest first)
ORDER BY 
    paymentDate DESC
-- Limit results to only the top 5 latest dates
LIMIT 5;


--QUESTION 2
-- Select customer name, country, and average credit limit
SELECT 
    customerName,
    country,
    AVG(creditLimit) AS avg_credit_limit
FROM 
    customers
-- Group by customer name and country so each row represents one customer
GROUP BY 
    customerName, country;

--QUESTION 3
SELECT 
    productCode,
    SUM(quantityOrdered) AS total_quantity,
    SUM(quantityOrdered * priceEach) AS total_price
FROM 
    orderdetails
GROUP BY 
    productCode;

--QUESTION 4
-- Select check number and the highest payment amount linked to it
SELECT 
    checkNumber,
    MAX(amount) AS highest_amount
FROM 
    payments
-- Group results by check number so each row represents one check
GROUP BY 
    checkNumber;
