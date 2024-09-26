SELECT
     p.product_id
    ,p.product_name    
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;