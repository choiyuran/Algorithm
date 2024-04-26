SELECT HOUR(datetime) AS hour, COUNT(animal_id) AS count
    FROM animal_outs
    GROUP BY hour
    HAVING hour >= 9 and hour < 20
    ORDER BY hour;