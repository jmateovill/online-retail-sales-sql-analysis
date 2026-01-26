-- checking data scale
SELECT 
	COUNT(*) AS total_rows,
	COUNT(DISTINCT InvoiceNo) AS total_invoices,
	COUNT(DISTINCT CustomerID) AS total_customers
FROM retail;

-- validating cleaned data 
SELECT 
	MIN(Quantity) AS min_quantity,
	MIN(UnitPrice) AS min_unitprice,
	MIN(Revenue) AS min_revenue
FROM retail;

-- view data
CREATE VIEW retail_clean AS
SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    UnitPrice,
    Revenue,
    InvoiceDate,
    CustomerID,
    Country
FROM retail
WHERE Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

SELECT COUNT(*) FROM retail_clean;

SELECT * FROM retail_clean LIMIT 10;