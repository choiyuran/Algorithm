SELECT thirdT.member_name, r.review_text, TO_CHAR(review_date, 'yyyy-MM-dd') AS review_date
    FROM rest_review r
    JOIN(SELECT p.member_name, p.member_id
        FROM member_profile p
        JOIN (SELECT member_id, COUNT(member_id) 
        FROM rest_review 
        GROUP BY member_id
        HAVING COUNT(member_id) IN (SELECT MAX(COUNT(member_id)) FROM rest_review GROUP BY member_id)) secondT
        ON p.member_id = secondT.member_id) thirdT
    ON r.member_id = thirdT.member_id
    ORDER BY review_date, review_text;