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