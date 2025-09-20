-- The data is grouped by date to handle multiple entries on the same day.
SELECT
    date, -- Selects the date column.
    SUM(revenue) AS total_revenue_per_day, -- Sums the revenue for each date and names it 'total_revenue_per_day'.
    (CAST(SUM(conversions) AS REAL) / SUM(page_views)) * 100 AS conversion_rate_percentage -- Calculates the percentage conversion rate.
FROM
    WebsiteAnalytics
GROUP BY
    date -- Groups the rows by date so that SUM() works on each group of dates.
ORDER BY
    date; -- Orders the results by date in ascending order.
