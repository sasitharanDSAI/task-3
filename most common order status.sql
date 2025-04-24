--- Most Common Order Status
SELECT order_status, COUNT(*) AS count
FROM orders
GROUP BY order_status
ORDER BY count DESC;