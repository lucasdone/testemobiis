SELECT
     p.product_id
    ,p.product_name    
FROM products p
INNER JOIN stocks s ON p.product_id = s.product_id
WHERE s.quantity = 0;