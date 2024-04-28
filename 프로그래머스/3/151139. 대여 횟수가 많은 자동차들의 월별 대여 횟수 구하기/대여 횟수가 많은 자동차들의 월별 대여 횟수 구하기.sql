SELECT MONTH(start_date) AS month, car_id, COUNT(car_id) AS records
    FROM car_rental_company_rental_history
    WHERE YEAR(start_date) = '2022' and MONTH(start_date) between 8 and 10 AND car_id IN(
    SELECT car_id
        FROM car_rental_company_rental_history
        WHERE YEAR(start_date) = '2022' and MONTH(start_date) between 8 and 10 
        GROUP BY car_id
        HAVING COUNT(car_id) >= 5)
    GROUP BY month, car_id    
    ORDER BY month, car_id DESC;