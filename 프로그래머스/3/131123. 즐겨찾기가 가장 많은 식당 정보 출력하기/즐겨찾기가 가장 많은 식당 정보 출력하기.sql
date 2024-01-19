WITH best_food AS (
    SELECT
        MAX(favorites) AS max_favorites
        , food_type
    FROM rest_info
    GROUP BY food_type
)

SELECT
    r.food_type
    , r.rest_id
    , r.rest_name
    , r.favorites
FROM rest_info r
RIGHT JOIN best_food bf
ON r.favorites = bf.max_favorites AND r.food_type = bf.food_type
ORDER BY food_type DESC;
