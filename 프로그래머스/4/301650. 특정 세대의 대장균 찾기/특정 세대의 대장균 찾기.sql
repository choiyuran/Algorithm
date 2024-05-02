With firstTable AS (
    SELECT id, parent_id
    FROM ecoli_data
    WHERE parent_id is null
),
secondTable AS (
    SELECT ecoli.id, ecoli.parent_id
    FROM ecoli_data ecoli
    JOIN firstTable
    ON ecoli.parent_id = firstTable.id
)
SELECT ecoli.id
    FROM ecoli_data ecoli
    JOIN secondTable 
    ON ecoli.parent_id = secondTable.id
    ORDER BY id;
