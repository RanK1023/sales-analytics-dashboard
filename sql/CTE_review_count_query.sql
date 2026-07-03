WITH customer_order_counts AS (
SELECT customers.customer_unique_id, COUNT(*) AS order_count
FROM orders
JOIN customers ON orders.customer_id=customers.customer_id
GROUP BY customers.customer_unique_id
)

SELECT  
	CASE 
		WHEN order_count >1 THEN 'Repeat_Buyer'
		ELSE 'Single_time_buyer'
	END AS Type_Byer, AVG(review_score)
	
FROM customer_order_counts
JOIN customers ON customer_order_counts.customer_unique_id=customers.customer_unique_id
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_reviews ON orders.order_id=order_reviews.order_id
GROUP BY Type_Byer
