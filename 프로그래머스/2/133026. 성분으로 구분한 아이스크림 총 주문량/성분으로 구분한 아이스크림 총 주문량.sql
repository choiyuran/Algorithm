SELECT ingredient_type, SUM(total_order)
    FROM first_half half
    JOIN icecream_info info
    ON half.flavor = info.flavor
    GROUP BY ingredient_type;
    