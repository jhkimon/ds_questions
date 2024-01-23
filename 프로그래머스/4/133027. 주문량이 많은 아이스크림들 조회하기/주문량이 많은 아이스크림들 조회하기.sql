WITH union_sales AS (
    SELECT 
        fh.flavor
        , SUM(fh.total_order) AS 'sales_order'
    FROM first_half AS fh
    GROUP BY fh.flavor

    UNION

    SELECT 
        j.flavor
        , SUM(j.total_order) AS 'sales_order'
    FROM july AS j
    GROUP BY j.flavor
)


SELECT
    flavor
FROM union_sales
GROUP BY flavor
ORDER BY SUM(sales_order) DESC
LIMIT 3;