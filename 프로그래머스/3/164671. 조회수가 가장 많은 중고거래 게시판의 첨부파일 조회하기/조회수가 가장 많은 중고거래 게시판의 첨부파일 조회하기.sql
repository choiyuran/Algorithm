SELECT '/home/grep/src/' || f.board_id || '/' || file_id || file_name || file_ext AS file_path
    FROM used_goods_file f, used_goods_board b
    WHERE f.board_id = b.board_id AND b.views IN (
        SELECT MAX(views) FROM used_goods_board)
    ORDER BY file_id DESC;

    
    
 