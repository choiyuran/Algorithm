SELECT COUNT(fish_type) AS fish_count, MAX(length) AS max_length, fish_type
    FROM fish_info
    GROUP BY fish_type
    HAVING AVG(CASE WHEN length <= 10 THEN 10 
               WHEN length is null THEN 10 ELSE length END) >= 33
    ORDER BY fish_type;