-- 코드를 입력하세요
SELECT
    YEAR(sales_date) AS year
    , MONTH(sales_date) AS month
    , gender
    , COUNT(DISTINCT sale.user_id) AS users
FROM online_sale AS sale
LEFT JOIN user_info AS info
ON sale.user_id = info.user_id
WHERE gender IS NOT NULL
GROUP BY YEAR(sales_date), MONTH(sales_date), gender
ORDER BY year, month, gender;