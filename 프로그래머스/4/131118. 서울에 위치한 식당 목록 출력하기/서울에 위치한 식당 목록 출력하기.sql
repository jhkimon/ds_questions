-- 코드를 입력하세요
SELECT
    info.rest_id
    , info.rest_name
    , info.food_type
    , info.favorites
    , info.address
    , ROUND(AVG(review.review_score), 2) AS score
FROM rest_review AS review
LEFT JOIN rest_info AS info
ON info.rest_id = review.rest_id
WHERE address LIKE '서울%'
GROUP BY review.rest_id
ORDER BY score DESC, favorites DESC;