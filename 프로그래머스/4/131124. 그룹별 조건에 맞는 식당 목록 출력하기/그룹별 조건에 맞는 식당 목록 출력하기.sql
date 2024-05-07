SELECT resultT.member_name, r.review_text, DATE_FORMAT(r.review_date, '%Y-%m-%d') AS review_date
FROM rest_review r
JOIN (SELECT p.member_id, p.member_name
    FROM member_profile p
    WHERE p.member_id IN (SELECT r.member_id
        FROM rest_review r
        GROUP BY r.member_id
        HAVING COUNT(*) = ( 
            SELECT MAX(review_count) 
            FROM (SELECT COUNT(*) AS review_count 
                FROM rest_review
                GROUP BY member_id) AS counts))) AS resultT 
ON r.member_id = resultT.member_id
ORDER BY review_date, review_text;