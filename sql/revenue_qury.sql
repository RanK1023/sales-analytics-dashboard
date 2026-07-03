SELECT products.product_category_name_english, SUM(order_items.price) AS Total_Revenue
FROM order_items
JOIN products ON order_items.product_id=products.product_id
GROUP BY products.product_category_name_english 
ORDER BY Total_Revenue DESC
LIMIT 10;

