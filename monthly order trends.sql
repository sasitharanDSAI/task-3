---Monthly Order Trends
SELECT FORMAT(order_purchase_timestamp, 'yyyy-MM') AS month, 
       COUNT(*) AS orders
FROM orders
GROUP BY FORMAT(order_purchase_timestamp, 'yyyy-MM')
ORDER BY month;

