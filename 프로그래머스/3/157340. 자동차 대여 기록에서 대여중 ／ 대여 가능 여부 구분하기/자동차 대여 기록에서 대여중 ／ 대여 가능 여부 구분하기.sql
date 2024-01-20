-- 코드를 입력하세요
WITH car_availiable_list AS 
(
    SELECT
        car_id
        , IF (end_date >= '2022-10-16' AND start_date <= '2022-10-16',1,0) AS 'use_car'
    FROM car_rental_company_rental_history
)

SELECT
    car_id
    , IF(SUM(use_car) >= 1,'대여중','대여 가능') AS 'Availability'
FROM car_availiable_list
GROUP BY car_id
ORDER BY car_id DESC;
    
    