-- select 기본 문법 ------------------------------------------------------------
select [ALL || DISTINCT] 컬럼명
[INTO 테이블명]
from 테이블명
[WHERE 조건식]
[GROUP BY 컬럼명[HAVING 조건식]]
[ORDER BY [desc || asc]]
------------------------------------------------------------------------------

-- 공백 제거 select ------------------------------------------------------------
-- 예를 들어서
-- id   name    address
-- 14	taewoo2	낙성대역
-- 16	test2	낙성대역
-- 17	test	낙성대 역
-- 18	test	낙성대역
-- 19   test    서울대입구역
-- 이런 테이블이 있을때 낙성대역에 사는 사람의 결과를 조회하고싶다
select * from CUSTOMER where address = '낙성대역';
-- 이렇게 하면 17번 id를 가진 사람은 조회되지 않는다.
select * from
(select * from customer where address = replace(address,' ','')) cus;
-- 이렇게 해줘야지 실제 낙성대역에 사는 사람은 모두 출력할 수 있다.
-- <참고> 이렇게 from 절 안에 들어가는 select 를 inline view 라고 하는데 이때는 allias를 붙혀줘야한다.
------------------------------------------------------------------------------

-- 논리 연산자 ------------------------------------------------------------------
-- BETWEEN A and B
-- 범위 를 뜻한다
select * from CUSTOMER c WHERE customer_age BETWEEN 0 and 30;

-- IN
-- 포함하는
select * from CUSTOMER c WHERE customer_age IN(0,30);

-- NULL , IS NULL
-- null은 기본적으로 sql에서 연산이 불가능하다. ex) where 컬럼 = null <불가능>
-- 그래서 null 체크를 위한 연산자가 따로 있다
select * from CUSTOMER c WHERE customer_age IS NULL;
select * from CUSTOMER c WHERE customer_age IS NOT NULL;

-- LIKE
-- 그냥 말 그대로 '~ 이거 비슷한거 찾아줘' 라는 뜻.
-- 성능저하의 주범이 될 수 있으므로 주의해서 사용 요망
select * from CUSTOMER c WHERE customer_address LIKE '낙%'; -- '낙'으로 시작하는
select * from CUSTOMER c WHERE customer_address LIKE '%낙%'; -- '낙'을 포함하는
select * from CUSTOMER c WHERE customer_address LIKE '_낙'; -- 2번째 글자가 '낙'인

-- UNION
-- 합집합
select * from CUSTOMER WHERE customer_sex = 0; -- 남자
select * from CUSTOMER WHERE customer_sex = 1; -- 여자
-- 이렇게 따로따로 '남자' , '여자' 따로 출력 할 수 있다 그런데 UNION 절을 넣게 되면
select * from CUSTOMER WHERE customer_sex = 0 -- 남자
UNION
select * from CUSTOMER WHERE customer_sex = 1; -- 여자
-- 한번에 출력이 가능하다.

-- UNION ALL
-- UNION절은 다음과 같은 문제가 있다.
14	taewoo2	낙성대역	0	26
16	test2	낙성대역	0	26
17	test	낙성대 역	0	26
18	test	낙성대역	0	26
19	women	강남역	1	26
20	women	강남역	1	26
-- 다음과 같은 테이블이 존재할때
select customer_name from CUSTOMER where customer_sex = 0
UNION
select customer_name from CUSTOMER where customer_sex = 1;
-- 를 하게 되면
taewoo2
test2
test
women
-- 이렇게 출력이 된다. 분명 19의 women과 20의 women은 다른 사람인데 이름이 같다는 것 때문에 통합되어서 나온다
-- UNION ALL절을 사용하게 되면
taewoo2
test2
test
test
women
women
-- 중복제거하지 않고 나온다.

-- INTERSECT
-- 교집합


-- MINUS
-- 차집합
------------------------------------------------------------------------------

-- group by ------------------------------------------------------------------
-- 말 그대로 '그룹화' 를 한다.
SELECT customer_sex,customer_address from CUSTOMER c group by customer_sex,customer_address;
------------------------------------------------------------------------------

-- case when ------------------------------------------------------------------
SELECT customer_id ,customer_name,
	(case customer_sex
	when 0 then '남자'
	WHEN 1 then '여자'
	else '성별없음'
	end) as '성'
from CUSTOMER c ;
------------------------------------------------------------------------------


