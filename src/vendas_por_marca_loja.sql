SELECT 
     b.brand_name
    ,s.store_name
    ,SUM(oi.quantity) AS total_vendas     
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.product_id
INNER JOIN brands b ON p.brand_id = b.brand_id
INNER JOIN orders ON oi.order_id = o.order_id 
INNER JOIN stores s ON o.store_id = s.store_id 
GROUP BY b.brand_name, s.store_name
ORDER BY total_vendas DESC;