SELECT 
    ROUND(
        SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (           // key , key pair to check each customers order_date and we need minimum so MIN(order_date)
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
