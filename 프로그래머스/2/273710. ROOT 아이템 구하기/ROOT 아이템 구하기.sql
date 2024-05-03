SELECT tree.item_id, info.item_name
    FROM item_info info
    JOIN item_tree tree
    ON info.item_id = tree.item_id
    WHERE tree.parent_item_id is null
    ORDER BY tree.item_id;