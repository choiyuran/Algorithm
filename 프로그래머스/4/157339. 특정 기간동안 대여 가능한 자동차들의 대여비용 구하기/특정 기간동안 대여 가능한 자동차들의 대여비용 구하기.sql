SELECT c.car_id, c.car_type,
    ROUND(c.daily_fee * 30 * (100 - p.discount_rate) / 100) AS fee
FROM car_rental_company_car c
JOIN car_rental_company_rental_history h ON c.car_id = h.car_id
JOIN car_rental_company_discount_plan p ON c.car_type = p.car_type
WHERE c.car_id NOT IN (
    SELECT car_id FROM car_rental_company_rental_history
    WHERE end_date >= TO_DATE('2022-11-01', 'YYYY-MM-DD') 
    AND start_date < TO_DATE('2022-12-01', 'YYYY-MM-DD'))
AND p.duration_type = '30일 이상'
AND c.car_type IN ('세단', 'SUV')
GROUP BY c.car_id, c.car_type, c.daily_fee, p.discount_rate
HAVING ROUND(c.daily_fee * 30 * (100 - p.discount_rate) / 100) >= 500000 
   AND ROUND(c.daily_fee * 30 * (100 - p.discount_rate) / 100) < 2000000
ORDER BY fee DESC, c.car_type, c.car_id DESC;