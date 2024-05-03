WITH firstTable as (    
    SELECT info.item_id, tree.parent_item_id
    FROM item_info info
    LEFT JOIN item_tree tree
    ON info.item_id = tree.parent_item_id 
)
SELECT info.item_id, info.item_name, info.rarity
    FROM item_info info
    JOIN firstTable 
    ON info.item_id = firstTable.item_id
    WHERE firstTable.parent_item_id is null
    ORDER BY item_id DESC;
