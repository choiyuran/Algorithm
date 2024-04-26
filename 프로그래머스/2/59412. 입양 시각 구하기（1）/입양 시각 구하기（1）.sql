SELECT HOUR(datetime) AS hour, COUNT(animal_id) AS count
    FROM animal_outs
    WHERE HOUR(datetime) between 9 and 19
    GROUP BY hour
    ORDER BY hour;