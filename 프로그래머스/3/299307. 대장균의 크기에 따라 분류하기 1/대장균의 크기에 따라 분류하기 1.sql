SELECT result.id, result.size
    FROM ecoli_data ecoli
    JOIN 
    (SELECT id, size_of_colony,
        CASE 
        WHEN size_of_colony <= 100 THEN 'LOW'
        WHEN size_of_colony between 101 and 1000 THEN 'MEDIUM'
        WHEN size_of_colony > 1000 THEN 'HIGH'
        END AS size
        FROM ECOLI_DATA) AS result
    ON ecoli.id = result.id
ORDER BY result.id;