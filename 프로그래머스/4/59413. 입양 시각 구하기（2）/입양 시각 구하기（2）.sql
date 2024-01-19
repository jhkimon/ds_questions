WITH Recursive hour_series AS (
    SELECT 0 AS hour
    UNION ALL
    SELECT hour + 1
    FROM hour_series
    WHERE hour < 23
),
animal_count AS (
    SELECT
        HOUR(datetime) AS 'hour'
        , COUNT(animal_id) AS 'count'
    FROM animal_outs
    GROUP BY HOUR(datetime)
)

SELECT
    h.hour
    , IFNULL(a.count, 0) AS 'count'
FROM hour_series AS h
LEFT JOIN animal_count AS a
ON h.hour = a.hour;