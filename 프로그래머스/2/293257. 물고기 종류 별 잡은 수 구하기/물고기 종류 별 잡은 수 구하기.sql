SELECT COUNT(info.fish_type) AS fish_count, fish_name
    FROM fish_info info
    JOIN fish_name_info name 
    ON info.fish_type = name.fish_type
    GROUP BY fish_name
    ORDER BY fish_count DESC;