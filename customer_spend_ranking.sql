USE shop;
SELECT customer_name, total_spent, drk
FROM (
    SELECT
        c.name AS customer_name,
        SUM(oi.quantity * p.price) AS total_spent,
        DENSE_RANK() OVER (
            ORDER BY SUM(oi.quantity * p.price) DESC
        ) AS drk
    FROM customers c
    JOIN orders o ON o.customer_id = c.customer_id
    JOIN order_items oi ON oi.order_id = o.order_id
    JOIN products p ON p.product_id = oi.product_id
    GROUP BY c.name
) AS ranked_customers;
