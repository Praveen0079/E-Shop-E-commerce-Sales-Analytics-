USE shop;
SELECT p.category,SUM(oi.quantity*p.price) as Sales 
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.category with rollup;