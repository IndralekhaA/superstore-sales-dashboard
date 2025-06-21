	CREATE DATABASE superstore;
    USE superstore;
    
    CREATE TABLE orders (
		ORDERNUMBER	INT,
        QUANTITYORDERED INT,
        PRICEEACH FLOAT,
        ORDERLINENUMBER INT,
        SALES FLOAT,
        ORDERDATE DATETIME,
        STATUS VARCHAR(20),
        QTR_ID INT,
        MONTH_ID INT,
        YEAR_ID	INT,
        PRODUCTLINE VARCHAR(50),
        MSRP FLOAT,
        PRODUCTCODE VARCHAR(20),
        CUSTOMERNAME VARCHAR(100),
        PHONE VARCHAR(20),
        ADDRESSLINE1 VARCHAR(100),
        ADDRESSLINE2 VARCHAR(100),
        CITY VARCHAR(50),
        STATE VARCHAR(50),
        POSTALCODE VARCHAR(20),
        COUNTRY VARCHAR(50),
        TERRITORY VARCHAR(50),
        CONTACTLASTNAME VARCHAR(50),
        CONTACTFIRSTNAME VARCHAR(50),
        DEALSIZE VARCHAR(20) 
    );
    
    
SELECT * FROM orders LIMIT 10;
    
-- Check date range
SELECT MIN(ORDERDATE), MAX(ORDERDATE) FROM orders;

-- Check cleaned phone numbers
SELECT PHONE FROM orders LIMIT 10;

-- Total Revenue
SELECT 
    SUM(SALES) AS TotalRevenue
FROM orders;

-- Top 10 products by Revenue
SELECT 
    PRODUCTCODE,
    PRODUCTLINE,
    SUM(SALES) AS TotalRevenue
FROM orders
GROUP BY PRODUCTCODE, PRODUCTLINE
ORDER BY TotalRevenue DESC
LIMIT 10;

-- Region wise Profit Summary- Assuming  Profit = SALES - (QUANTITYORDERED * COST_PRICE)
SELECT 
    COUNTRY,
    SUM(SALES - (QUANTITYORDERED * MSRP * 0.6)) AS Profit
FROM orders
GROUP BY COUNTRY
ORDER BY Profit DESC;

-- Average Discount by Category
SELECT 
    PRODUCTLINE,
    ROUND(AVG(1 - (PRICEEACH / MSRP)) * 100, 2) AS AvgDiscountPercent
FROM orders
GROUP BY PRODUCTLINE
ORDER BY AvgDiscountPercent DESC;

-- Monthly Sales Trend
SELECT 
    DATE_FORMAT(ORDERDATE, '%Y-%m') AS Month,
    SUM(SALES) AS MonthlySales
FROM orders
GROUP BY Month
ORDER BY Month;


-- Top Customers by Revenue
SELECT 
    CUSTOMERNAME,
    SUM(SALES) AS TotalRevenue
FROM orders
GROUP BY CUSTOMERNAME
ORDER BY TotalRevenue DESC
LIMIT 10;

-- Loss-making Segments (Profit<0)
SELECT 
    PRODUCTLINE,
    SUM(SALES - (QUANTITYORDERED * MSRP * 0.6)) AS TotalProfit
FROM orders
GROUP BY PRODUCTLINE
HAVING TotalProfit < 0
ORDER BY TotalProfit;


    
    