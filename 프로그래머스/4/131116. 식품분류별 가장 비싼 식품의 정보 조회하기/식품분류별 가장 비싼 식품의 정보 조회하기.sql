SELECT f.category, f.price, f.product_name
    FROM food_product f
    JOIN (SELECT category, MAX(price) AS max_price
          FROM food_product
          WHERE category IN ('과자', '국', '김치', '식용유')
          GROUP BY category) result
    ON f.category = result.category AND f.price = result.max_price
    ORDER BY f.price DESC;
