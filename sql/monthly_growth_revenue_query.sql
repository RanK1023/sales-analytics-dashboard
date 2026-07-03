SELECT DATE_TRUNC('month',order_purchase_timestamp) AS order_month,
SUM(order_items.price) AS monthly_revenue,
LAG(SUM(order_items.price))OVER (ORDER BY DATE_TRUNC('month',order_purchase_timestamp) ) AS previous_month_revenue,
((SUM(order_items.price) - LAG(SUM(order_items.price))OVER (ORDER BY DATE_TRUNC('month',order_purchase_timestamp) ))/LAG(SUM(order_items.price))OVER (ORDER BY DATE_TRUNC('month',order_purchase_timestamp) ))*100 AS monthly_growth_percentage

FROM orders
JOIN order_items ON orders.order_id=order_items.order_id
GROUP BY order_month

ORDER BY order_month

