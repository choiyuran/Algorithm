WITH A AS (
    SELECT cart_id
    FROM cart_products
    WHERE name = 'Milk'
),
B AS (
    SELECT cart_id
    FROM cart_products
    WHERE name = 'Yogurt'
)

SELECT A.cart_id 
    FROM A JOIN B ON A.cart_id = B.cart_id;