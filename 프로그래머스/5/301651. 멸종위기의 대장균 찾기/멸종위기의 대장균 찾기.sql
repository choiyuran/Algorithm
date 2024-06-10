WITH RECURSIVE resultT AS(
    SELECT id, parent_id, 1 AS generation
      FROM ecoli_data
    WHERE parent_id IS NULL
     
    UNION ALL 
    
    SELECT A.id, A.parent_id, 1 + B.GENERATION generation
      FROM ecoli_data A
     INNER JOIN resultT B ON A.parent_id = B.id
)
SELECT COUNT(generation) COUNT, generation
  FROM resultT
 WHERE NOT id IN (SELECT DISTINCT parent_id
                    FROM ecoli_data
                   WHERE parent_id IS NOT NULL)
 GROUP BY generation
 ORDER BY generation