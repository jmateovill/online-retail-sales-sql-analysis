-- rfm metrics construction
WITH customer_metrics AS (
    SELECT
        CustomerID,
        CAST(
			julianday((SELECT MAX(InvoiceDate) FROM retail)) - julianday(MAX(InvoiceDate))
			AS INTEGER
		) AS recency_days,
        COUNT(DISTINCT InvoiceNo) AS frequency,
        SUM(Revenue) AS monetary
    FROM retail
    WHERE CustomerID IS NOT NULL
    GROUP BY CustomerID
),

-- rfm scoring
rfm_scored AS (
    SELECT
        CustomerID,
        recency_days,
        frequency,
        monetary,

        NTILE(5) OVER (ORDER BY recency_days DESC) AS recency_score,
        NTILE(5) OVER (ORDER BY frequency ASC) AS frequency_score,
        NTILE(5) OVER (ORDER BY monetary ASC) AS monetary_score
    FROM customer_metrics
),

-- rfm segmentation
rfm_segmented AS (
    SELECT
        CustomerID,
        recency_score,
        frequency_score,
        monetary_score,

        recency_score || frequency_score || monetary_score AS rfm_segment,
        recency_score + frequency_score + monetary_score AS rfm_total_score,
        monetary
    FROM rfm_scored
)

-- final query
SELECT
    rfm_segment,
    rfm_total_score,
    COUNT(CustomerID) AS customer_count,
    ROUND(SUM(monetary), 2) AS total_revenue
FROM rfm_segmented
GROUP BY
    rfm_segment,
    rfm_total_score
ORDER BY total_revenue DESC;


