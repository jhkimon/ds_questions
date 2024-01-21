-- 코드를 입력하세요
SELECT
    b.category
    , SUM(sales) AS 'total_sales'
FROM book_sales AS s
LEFT JOIN book AS b
ON s.book_id = b.book_id
WHERE s.sales_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY b.category
ORDER BY b.category ASC;