SELECT car_id
    FROM car_rental_company_car
    WHERE car_type IN ('세단') AND car_id IN 
    (SELECT car_id FROM car_rental_company_rental_history
    WHERE MONTH(start_date) IN ('10'))
    ORDER BY car_id DESC;