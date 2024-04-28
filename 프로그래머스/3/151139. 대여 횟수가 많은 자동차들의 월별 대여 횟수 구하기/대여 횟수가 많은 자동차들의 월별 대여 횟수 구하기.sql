SELECT TO_NUMBER(TO_CHAR(start_date, 'MM')) AS month, car_id, COUNT(car_id) AS records
FROM car_rental_company_rental_history
WHERE TO_CHAR(start_date, 'yyyy-MM') BETWEEN '2022-08' AND '2022-10' AND car_id IN (
    SELECT car_id
    FROM car_rental_company_rental_history
    WHERE TO_CHAR(start_date, 'yyyy-MM') BETWEEN '2022-08' AND '2022-10' 
    GROUP BY car_id
    HAVING COUNT(car_id) >= 5)
GROUP BY TO_CHAR(start_date, 'MM'), car_id    
HAVING COUNT(car_id) > 0
ORDER BY TO_CHAR(start_date, 'MM'), car_id DESC;