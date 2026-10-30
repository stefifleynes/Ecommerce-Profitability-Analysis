-- Query to check monthly order volume, revenue, and net profit trends
SELECT 
    order_year,
    order_month,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(item_price + freight_value)::numeric, 2) AS total_revenue,
    ROUND(SUM(estimated_net_profit)::numeric, 2) AS total_net_profit
FROM vw_order_profitability
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
