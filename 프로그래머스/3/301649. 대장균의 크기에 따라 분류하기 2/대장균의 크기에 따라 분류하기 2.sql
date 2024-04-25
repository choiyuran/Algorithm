WITH firstresult AS (
    SELECT
    id, size_of_colony,
    ROW_NUMBER() OVER(ORDER BY size_of_colony DESC) AS rankresult,
    (select COUNT(*) FROM ecoli_data) AS totalcount
    FROM
    ecoli_data
),
secondresult AS (
    SELECT
    id,
    CASE
        WHEN rankresult <= totalcount * 0.25 THEN 'CRITICAL'
        WHEN rankresult <= totalcount * 0.5 THEN 'HIGH'
        WHEN rankresult <= totalcount * 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS colony_name
    FROM firstresult
)
SELECT 
    id, colony_name
FROM 
    secondresult
ORDER BY id;