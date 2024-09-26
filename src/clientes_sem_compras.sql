SELECT
     c.customer_id
    ,c.first_name
    ,c.last_name
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.orders_id IS NULL;