SELECT c.car_id, c.car_type,
    ROUND(c.daily_fee * 30 * (100 - p.discount_rate) / 100) AS fee
FROM car_rental_company_car c
JOIN car_rental_company_rental_history h ON c.car_id = h.car_id
JOIN car_rental_company_discount_plan p ON c.car_type = p.car_type
WHERE c.car_id NOT IN (
    SELECT car_id FROM car_rental_company_rental_history
    WHERE end_date > '2022-11-01' AND start_date < '2022-12-01')
AND p.duration_type = '30일 이상'
AND c.car_type IN ('세단', 'SUV')
GROUP BY c.car_id, c.car_type, fee
HAVING fee >= 500000 AND fee < 2000000
ORDER BY fee DESC, c.car_type, c.car_id DESC;