WITH rateT AS (
    SELECT 
        h.history_id, h.car_id,
        DATEDIFF(h.end_date, h.start_date) + 1 AS rental_days,
        CASE 
            WHEN DATEDIFF(h.end_date, h.start_date) + 1 >= 90 THEN (
                SELECT discount_rate 
                FROM car_rental_company_discount_plan 
                WHERE duration_type = '90일 이상' 
                  AND car_type = '트럭'
            )
            WHEN DATEDIFF(h.end_date, h.start_date) + 1 >= 30 THEN (
                SELECT discount_rate 
                FROM car_rental_company_discount_plan 
                WHERE duration_type = '30일 이상' 
                  AND car_type = '트럭'
            )
            WHEN DATEDIFF(h.end_date, h.start_date) + 1 >= 7 THEN (
                SELECT discount_rate 
                FROM car_rental_company_discount_plan 
                WHERE duration_type = '7일 이상' 
                  AND car_type = '트럭'
            )
            ELSE 0
        END AS discount_rate
    FROM 
        car_rental_company_car c
        JOIN car_rental_company_rental_history h ON c.car_id = h.car_id
    WHERE 
        c.car_type = '트럭')

SELECT 
    rateT.history_id, 
    FLOOR(c.daily_fee * rateT.rental_days * ((100 - rateT.discount_rate) / 100)) AS fee
FROM rateT
JOIN car_rental_company_car c ON rateT.car_id = c.car_id
ORDER BY 
    fee DESC, rateT.history_id DESC;