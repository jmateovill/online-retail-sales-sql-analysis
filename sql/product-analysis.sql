-- top 10 products ranked by revenue 
WITH products AS (
	SELECT 
		StockCode, 
		Description, 
		sum(Quantity) as units_sold, 	
		round(sum(Revenue),2) as total_revenue
	FROM retail
	WHERE Quantity > 0 AND Revenue > 0
	GROUP BY StockCode, Description
),

product_ranking AS (
	SELECT 
		StockCode, 
		Description, 
		units_sold, 
		total_revenue,
		rank() OVER (ORDER BY units_sold DESC) AS volume_ranking,
		rank() OVER (ORDER BY total_revenue DESC) AS revenue_ranking
	FROM products
)

SELECT 
	StockCode,
	Description,
	units_sold,
	total_revenue,
	volume_ranking,
	revenue_ranking
FROM product_ranking
WHERE revenue_ranking <= 10
ORDER BY revenue_ranking;

-- top product per month by total revenue 
WITH product AS (
	SELECT 
		strftime("%Y-%m", InvoiceDate) as month,
		Description as product_sold, 
		Revenue as revenue
	FROM retail
),

revenue_per_product AS (
	SELECT 
		month,
		product_sold,
		sum(revenue) as total_revenue
	FROM product 
	GROUP BY product_sold, month
)

SELECT 
	month,
	product_sold as top_product,
	max(total_revenue) as top_product_revenue
FROM revenue_per_product
GROUP BY month;

-- top product per month by units sold
WITH product AS (
	SELECT 
		strftime("%Y-%m", InvoiceDate) as month,
		Description as product_sold, 
		Quantity as units_sold
	FROM retail
),

units_sold_per_product AS (
	SELECT 
		month,
		product_sold,
		sum(units_sold) as total_units_sold
	FROM product 
	GROUP BY product_sold, month
)

SELECT 
	month,
	product_sold as top_product,
	max(total_units_sold) as top_product_units_sold
FROM units_sold_per_product
GROUP BY month;