SELECT DATE_TRUNC('month', order_purchase_timestamp), COUNT(order_id)
FROM orders
GROUP BY DATE_TRUNC('month', order_purchase_timestamp)
ORDER BY DATE_TRUNC('month', order_purchase_timestamp) ASC
