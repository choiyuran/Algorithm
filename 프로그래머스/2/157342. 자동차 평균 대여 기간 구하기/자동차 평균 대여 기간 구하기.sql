SELECT c.car_id, ROUND(AVG(result.diff), 1) AS average_duration
    FROM car_rental_company_rental_history c
    JOIN (SELECT car_id, (DATEDIFF(end_date, start_date) + 1) AS diff
          FROM car_rental_company_rental_history) result
    ON c.car_id = result.car_id
    GROUP BY c.car_id
    HAVING average_duration >= 7
    ORDER BY average_duration DESC, car_id DESC;
    
