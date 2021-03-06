CONNECT sh@TESTDB/sh

SET AUTOT TRACE EXP 
SELECT MAX(CUST_CREDIT_LIMIT) FROM CUSTOMERS;
SELECT MIN(CUST_CREDIT_LIMIT) FROM CUSTOMERS;
SELECT MAX(CUST_CREDIT_LIMIT), MIN(CUST_CREDIT_LIMIT) FROM CUSTOMERS;

CREATE INDEX IX_CUST_CREDIT_LIMIT ON CUSTOMERS(CUST_CREDIT_LIMIT);

SET AUTOT TRACE EXP STAT
SELECT MAX(CUST_CREDIT_LIMIT) FROM CUSTOMERS;
SELECT MIN(CUST_CREDIT_LIMIT) FROM CUSTOMERS;
SELECT MAX(CUST_CREDIT_LIMIT), MIN(CUST_CREDIT_LIMIT) FROM CUSTOMERS;

SELECT COUNT(*) FROM CUSTOMERS;
SELECT COUNT(1) FROM CUSTOMERS;

SELECT CUST_CREDIT_LIMIT, MAX(CUST_YEAR_OF_BIRTH) AS DATAMAX
FROM CUSTOMERS
GROUP BY CUST_CREDIT_LIMIT
HAVING CUST_CREDIT_LIMIT > 10000
ORDER BY CUST_CREDIT_LIMIT;

SELECT CUST_CREDIT_LIMIT, MAX(CUST_YEAR_OF_BIRTH) AS DATAMAX
FROM CUSTOMERS
WHERE CUST_CREDIT_LIMIT > 10000
GROUP BY CUST_CREDIT_LIMIT
ORDER BY CUST_CREDIT_LIMIT;

SET AUTOT OFF
DROP INDEX IX_CUST_CREDIT_LIMIT;
