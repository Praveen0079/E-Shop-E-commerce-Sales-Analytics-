USE shop;
SELECT *,SUM(amount) 
OVER (ORDER BY payment_date
	  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as rolling_total
FROM payments;