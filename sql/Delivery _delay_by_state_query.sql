SELECT customer_state, AVG(delivery_delay_days) AS average_delay
FROM orders
JOIN customers ON orders.customer_id= customers.customer_id
GROUP BY customer_state
ORDER BY average_delay DESC