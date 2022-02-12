-- AVG , SUM , COUNT , MAX , MIN

-- COUNT
-- 개수
SELECT COUNT(*) FROM CUSTOMER c ;
SELECT customer_age ,COUNT(customer_age) FROM CUSTOMER c GROUP BY customer_age ;

-- AVG
-- 평균
SELECT AVG(customer_age) FROM CUSTOMER c ;

-- SUM
-- 더하기
SELECT SUM(customer_age) FROM CUSTOMER c ;

-- MAX
-- 최대
SELECT MAX(customer_age) FROM CUSTOMER c ;

-- MIN
-- 최소
SELECT MIN(customer_age) FROM CUSTOMER c ;