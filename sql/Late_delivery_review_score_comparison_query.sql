SELECT orders.is_late, AVG(review_score)
FROM order_reviews
JOIN orders ON order_reviews.order_id=orders.order_id
GROUP BY orders.is_late