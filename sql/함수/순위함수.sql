-- ROW_NUMBER ------------------------------------------------------------------
-- 나이 많은 순서대로 조회 후 랭킹 매김
SELECT ROW_NUMBER() over(order by customer_age desc) as 나이많은순위,
customer_name , customer_address ,customer_sex customer_age  from CUSTOMER c ;
-- 나이 많은 순서대로 조회하는데 성별마다 따로 랭킹 매김
SELECT ROW_NUMBER() over(PARTITION by customer_sex order by customer_age desc) as 나이많은순위,
customer_name , customer_address ,customer_sex ,customer_age  from CUSTOMER c ;

------------------------------------------------------------------------------

-- DENSE_RANK ------------------------------------------------------------------
SELECT DENSE_RANK() over(order by customer_age) as 나이많은순위,
customer_name , customer_address ,customer_sex ,customer_age  from CUSTOMER c ;

SELECT DENSE_RANK() over(partition by customer_sex order by customer_age) as 나이많은순위,
customer_name , customer_address ,customer_sex ,customer_age  from CUSTOMER c ;
------------------------------------------------------------------------------

-- RANK ------------------------------------------------------------------
SELECT RANK() over(order by customer_age) as 나이많은순위,
customer_name , customer_address ,customer_sex ,customer_age  from CUSTOMER c ;

SELECT RANK() over(partition by customer_sex order by customer_age) as 나이많은순위,
customer_name , customer_address ,customer_sex ,customer_age  from CUSTOMER c ;
------------------------------------------------------------------------------

-- NTILE ------------------------------------------------------------------
SELECT NTILE(3) over(order by customer_age) as '나이순서대로 3개의 반배정',
customer_name , customer_address ,customer_sex ,customer_age  from CUSTOMER c ;
------------------------------------------------------------------------------
