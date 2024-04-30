SELECT outerInfo.rest_id, outerInfo.rest_name, 
    outerInfo.food_type, outerInfo.favorites, outerInfo.address, result.score
    FROM rest_info outerInfo
    JOIN (SELECT info.rest_id,
        ROUND(AVG(review.review_score), 2) AS score
        FROM rest_info info 
        JOIN rest_review review
        ON info.rest_id = review.rest_id
        WHERE address like '서울%'
        GROUP BY info.rest_id) result
    ON outerInfo.rest_id = result.rest_id
    ORDER BY score DESC, favorites DESC;