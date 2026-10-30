-- Identify product categories with the lowest net profitability
SELECT 
    product_category_name,
    COUNT(order_id) AS total_items_sold,
    ROUND(SUM(item_price)::numeric, 2) AS gross_revenue,
    ROUND(SUM(freight_value)::numeric, 2) AS total_freight_cost,
    ROUND(SUM(estimated_net_profit)::numeric, 2) AS total_net_profit,
    ROUND(AVG(freight_value / NULLIF(item_price, 0))::numeric * 100, 2) AS avg_freight_pct_of_price
FROM vw_order_profitability
GROUP BY product_category_name
ORDER BY total_net_profit ASC
LIMIT 15;
