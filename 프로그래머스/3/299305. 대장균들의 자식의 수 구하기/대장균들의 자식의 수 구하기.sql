SELECT
    parent.id,
    COUNT(child.id) AS CHILD_COUNT
FROM
    ecoli_data parent
LEFT JOIN ecoli_data child ON parent.id = child.parent_id
GROUP BY parent.id
ORDER BY parent.id;