USE shop;
SELECT payment_mode, SUM(amount) AS total 
FROM payments
group by payment_mode with rollup;