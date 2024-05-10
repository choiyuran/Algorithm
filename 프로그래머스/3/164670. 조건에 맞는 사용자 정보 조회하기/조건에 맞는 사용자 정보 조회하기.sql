SELECT user_id, nickname,
    CONCAT(city, ' ', street_address1, ' ', street_address2) AS 전체주소,
    CONCAT(SUBSTR(tlno, 1, 3), '-', SUBSTR(tlno, 4, 4), '-', SUBSTR(tlno, 8, 4)) AS 전화번호
    FROM used_goods_user u
    JOIN (SELECT writer_id, COUNT(writer_id)
                     FROM used_goods_board 
                     GROUP BY writer_id
                     HAVING COUNT(writer_id) >= 3) result
    ON u.user_id = result.writer_id
    ORDER BY user_id DESC;



    
