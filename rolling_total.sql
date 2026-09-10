use db;
SELECT *,
	SUM( CASE
			WHEN order_status = 'Delivered' THEN quantity*price_per_unit 
        ELSE 0
        END)
OVER(PARTITION BY category ORDER BY delivery_date
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)  as total
from orders;

