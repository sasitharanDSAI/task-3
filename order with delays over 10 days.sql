---Orders With Delays Over 10 Days
SELECT order_id,
       DATEDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date) AS delivery_days
FROM orders
WHERE DATEDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date) > 10;
