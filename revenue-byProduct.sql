USE shop;
SELECT p.product_name,SUM(oi.quantity * p.price) AS revenue
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
JOIN orders o ON o.order_id = oi.order_id
GROUP BY p.product_name
-- HAVING revenue > 1000
ORDER BY revenue DESC;