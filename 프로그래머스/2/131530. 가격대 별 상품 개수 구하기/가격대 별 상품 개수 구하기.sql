-- 코드를 입력하세요
SELECT
    FLOOR(price / 10000) * 10000 AS 'price_group'
    , COUNT(DISTINCT product_id) AS 'products'
FROM product
GROUP BY price_group
ORDER BY price_group ASC;
