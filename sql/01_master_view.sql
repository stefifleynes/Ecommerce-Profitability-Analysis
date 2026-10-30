-- Create a master view combining orders, items, products, and customer locations
CREATE VIEW vw_order_profitability AS
SELECT 
    o.order_id,
    o.customer_id,
    c.customer_state,
    o.order_purchase_timestamp,
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS order_year,
    EXTRACT(MONTH FROM o.order_purchase_timestamp) AS order_month,
    i.product_id,
    COALESCE(p.product_category_name, 'unknown') AS product_category_name,
    i.price AS item_price,
    i.freight_value,
    -- Simulating COGS at 60% of the item price
    (i.price * 0.60) AS estimated_cogs,
    -- Calculating Net Profit: Price minus COGS minus Freight Cost
    (i.price - (i.price * 0.60) - i.freight_value) AS estimated_net_profit
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
LEFT JOIN products p ON i.product_id = p.product_id
LEFT JOIN customers c ON o.customer_id = c.customer_id;
