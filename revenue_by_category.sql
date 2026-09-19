USE shop;

SELECT 
    COALESCE(p.category, 'Grand Total') AS category,
    SUM(oi.quantity * p.price) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.category WITH ROLLUP;