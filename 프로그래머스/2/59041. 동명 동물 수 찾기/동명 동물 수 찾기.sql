SELECT name, COUNT(animal_type) AS count
    FROM animal_ins
    WHERE name is not null
    GROUP BY name
    HAVING COUNT(animal_type) >= 2
    ORDER BY name;