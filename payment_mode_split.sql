USE shop;

SELECT 
    COALESCE(payment_mode, 'All Modes') AS payment_mode,
    SUM(amount) AS total_volume
FROM payments
GROUP BY payment_mode WITH ROLLUP;