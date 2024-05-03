SELECT p.product_id, p.product_name, p.price * secondT.amount AS total_sales
    FROM food_product p
    JOIN (SELECT product_id, SUM(amount) AS amount
        FROM food_order
        WHERE DATE_FORMAT(produce_date, '%Y-%m') = '2022-05'
        GROUP BY product_id) secondT
    ON p.product_id = secondT.product_id    
    ORDER BY total_sales DESC, product_id;