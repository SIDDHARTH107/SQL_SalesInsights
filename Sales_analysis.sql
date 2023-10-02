-- Check how many records
SELECT COUNT(*) 
FROM sales.transactions;

SELECT COUNT(*)
FROM sales.customers; 

SELECT *
FROM sales.transactions
LIMIT 5;

-- Dump all transactions done in Chennai and export it to an excel file
SELECT *
FROM sales.transactions
WHERE market_code = 'Mark001';

-- No. of Transactions performed in Chennai i.e. market code = Mark001
SELECT COUNT(*)
FROM sales.transactions
WHERE market_code = 'Mark001';

-- Check how many have USD currency
SELECT COUNT(*)
FROM sales.transactions
WHERE currency = 'USD';

-- Show the transactions in 2020 join by date table 
SELECT sales.transactions.*, sales.date.*
FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

-- Check total revenue or sales in the year 2020
SELECT AVG(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

-- How much business that is done in Chennai
SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020 AND sales.transactions.market_code = 'Mark001';