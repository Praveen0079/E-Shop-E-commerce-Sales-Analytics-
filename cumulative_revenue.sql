USE shop;

SELECT 
    payment_id,
    order_id,
    payment_mode,
    amount,
    payment_date,
    SUM(amount) OVER (
        ORDER BY payment_date 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS rolling_total
FROM payments;