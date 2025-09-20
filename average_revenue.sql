SELECT
    SUM(revenue) / SUM(conversions) AS avg_revenue_per_conversion -- Divides the total sum of revenue by the total sum of conversions.
FROM
    WebsiteAnalytics;
