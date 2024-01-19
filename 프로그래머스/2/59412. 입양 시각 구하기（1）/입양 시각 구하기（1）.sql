-- 코드를 입력하세요
SELECT
    HOUR(datetime) AS "hour"
    , COUNT(animal_id) AS "count"
FROM animal_outs
WHERE 9 <= HOUR(datetime) AND HOUR(datetime) <= 19
GROUP BY HOUR(datetime)
ORDER BY hour ASC;