-- 코드를 입력하세요
SELECT
    COUNT(user_id)
FROM user_info
WHERE joined BETWEEN '2021-01-01' AND '2021-12-31'
AND age BETWEEN 20 AND 29;
