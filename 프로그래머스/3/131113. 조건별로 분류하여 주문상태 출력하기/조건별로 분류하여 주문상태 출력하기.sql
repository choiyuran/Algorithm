SELECT order_id, product_id, TO_CHAR(out_date, 'yyyy-MM-dd') AS out_date,
    CASE WHEN TO_CHAR(out_date, 'MM-dd') <= '05-01' THEN '출고완료'
    WHEN TO_CHAR(out_date, 'MM-dd') > '05-01' THEN '출고대기'
    ELSE '출고미정' END AS 출고여부
    FROM food_order
    ORDER BY order_id;