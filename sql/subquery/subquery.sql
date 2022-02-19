-- SELECT 절에서의 서브쿼리
SELECT * ,
(SELECT COUNT(car_id) FROM CAR) 차량수
FROM CUSTOMER;

-- FROM 절에서의 서브쿼리
SELECT *
FROM
(SELECT * FROM CAR) cars;

-- WHERE 절에서의 서브쿼리
SELECT *
FROM CUSTOMER
WHERE
customer_id = (SELECT customer_id FROM CAR_ORDER co WHERE customer_id = 14 AND order_price = 5000);

