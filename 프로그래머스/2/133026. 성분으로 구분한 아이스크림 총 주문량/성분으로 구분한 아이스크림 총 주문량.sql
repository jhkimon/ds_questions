-- 코드를 입력하세요
SELECT
    i.ingredient_type
    , SUM(fh.total_order) AS 'total_order'
FROM first_half AS fh
LEFT JOIN icecream_info AS i
ON fh.flavor= i.flavor
GROUP BY i.ingredient_type
ORDER BY total_order;