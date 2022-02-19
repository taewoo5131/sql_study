-- 스칼라함수란 ? 데이터 형식 캐스팅 및 변환을 지원

-- CAST , CONVERT
-- 지정한 값을 다른 타입으로 변환 가능
SELECT CAST(customer_age as char)  from CUSTOMER c ;
SELECT customer_age , CONVERT(customer_age , char)  from CUSTOMER c ;

-- LENGTH
-- 길이 체크
select LENGTH(customer_name) from CUSTOMER c ;

-- CONCAT
-- 두 문자열을 연결
select CONCAT(customer_address ,customer_name) from CUSTOMER c ;

-- INSTR
-- 문자열에서 특정 문자의 위치를 반환
select INSTR(customer_address,'낙'),customer_address  from CUSTOMER c

-- LPAD
-- 왼쪽에 지정된 문자를 지정된 길이만큼 채워준다
select LPAD(customer_address,5,'*'),customer_address  from CUSTOMER c ;

-- RPAD
-- 오른에 지정된 문자를 지정된 길이만큼 채워준다.
select RPAD(customer_address,5,'*'),customer_address  from CUSTOMER c ;

-- LOWER
-- 소문자 변환
select LOWER(customer_name) from CUSTOMER c ;

-- UPPER
-- 대문자 변환
select UPPER(customer_name) from CUSTOMER c ;

