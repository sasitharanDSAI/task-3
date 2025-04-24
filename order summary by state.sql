---Order Summary by State
CREATE VIEW state_order_summary AS
SELECT 
    c.customer_state,
    COUNT(*) AS total_orders,
    AVG(DATEDIFF(DAY, o.order_purchase_timestamp, o.order_delivered_customer_date)) AS avg_delivery_time
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state;

SELECT * FROM state_order_summary