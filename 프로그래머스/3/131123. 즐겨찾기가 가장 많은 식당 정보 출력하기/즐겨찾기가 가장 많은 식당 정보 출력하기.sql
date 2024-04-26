SELECT food_type, rest_id, rest_name, favorites
    FROM rest_info
    WHERE (food_type,favorites) in
    (SELECT food_type, MAX(favorites) AS favorites
        FROM rest_info
        GROUP BY food_type)
    ORDER BY food_type DESC;