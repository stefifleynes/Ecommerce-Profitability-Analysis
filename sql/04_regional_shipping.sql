-- Analyze regional freight cost leaks by customer state
SELECT 
    customer_state,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(item_price)::numeric, 2) AS total_revenue,
    ROUND(SUM(freight_value)::numeric, 2) AS total_freight_spent,
    ROUND(AVG(freight_value)::numeric, 2) AS avg_freight_per_order,
    ROUND(SUM(estimated_net_profit)::numeric, 2) AS net_profit
FROM vw_order_profitability
GROUP BY customer_state
ORDER BY avg_freight_per_order DESC;
