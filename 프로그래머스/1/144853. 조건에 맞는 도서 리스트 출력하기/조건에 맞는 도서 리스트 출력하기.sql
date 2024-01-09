-- 코드를 입력하세요
SELECT
    book_id
    , DATE_FORMAT(published_date, '%Y-%m-%d') AS published_date
FROM book
WHERE published_date BETWEEN '2021-01-01' AND '2021-12-31'
AND category = '인문'
ORDER BY published_date ASC;
