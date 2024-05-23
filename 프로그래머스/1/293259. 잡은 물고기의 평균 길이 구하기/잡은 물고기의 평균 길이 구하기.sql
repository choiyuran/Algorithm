WITH lengthT AS(
    SELECT 
        CASE WHEN length <= 10 OR length IS NULL THEN 10
        ELSE length
    END AS length
    FROM fish_info)
SELECT ROUND(AVG(length), 2) AS average_length
    FROM lengthT;
    

