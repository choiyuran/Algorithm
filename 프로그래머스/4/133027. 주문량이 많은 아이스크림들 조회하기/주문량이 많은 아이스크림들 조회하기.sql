WITH firstTable as (
    SELECT flavor, SUM(total_order) AS total_order
    FROM july
    GROUP BY flavor
),
secondTable as (
    SELECT h.flavor, firstTable.total_order + h.total_order AS total_order
    FROM first_half h
    JOIN firstTable
    ON h.flavor = firstTable.flavor
    ORDER BY total_order DESC
)
SELECT flavor
    FROM secondTable
    LIMIT 3;
