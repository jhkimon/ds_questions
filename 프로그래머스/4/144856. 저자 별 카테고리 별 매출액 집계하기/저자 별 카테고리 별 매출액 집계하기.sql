-- 코드를 입력하세요
WITH book_total_sales AS (
    SELECT
        book_id
        , SUM(sales) AS 'book_sales'
    FROM book_sales
    WHERE sales_date BETWEEN '2022-01-01' AND '2022-01-31'
    GROUP BY book_id
)

SELECT 
    a.author_id
    , a.author_name
    , b.category
    , SUM(t.book_sales * b.price) AS 'total_sales'
FROM book AS b
LEFT JOIN book_total_sales AS t
ON b.book_id = t.book_id
LEFT JOIN author AS a
ON b.author_id = a.author_id
GROUP BY b.author_id, b.category
ORDER BY a.author_id ASC, b.category DESC;
