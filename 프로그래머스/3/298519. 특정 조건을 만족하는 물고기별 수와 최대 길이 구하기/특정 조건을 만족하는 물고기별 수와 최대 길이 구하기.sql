SELECT COUNT(fish_type) AS fish_count, MAX(length) AS max_length, fish_type
    FROM fish_info
    GROUP BY fish_type
    HAVING AVG(length) >= 33
    ORDER BY fish_type;