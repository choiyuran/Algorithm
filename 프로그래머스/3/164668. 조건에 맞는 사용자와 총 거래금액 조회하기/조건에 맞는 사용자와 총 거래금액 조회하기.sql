
SELECT users.user_id, users.nickname, SUM(board.price) AS total_sales
    FROM used_goods_board board
    JOIN used_goods_user users
    ON board.writer_id = users.user_id
    WHERE status = 'DONE'
    GROUP BY board.writer_id
    HAVING total_sales >= 700000
    ORDER BY total_sales;