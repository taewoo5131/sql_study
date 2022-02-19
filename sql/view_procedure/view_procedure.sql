-- craete view
create view CUSTOMER_VIEW as
select * from CUSTOMER;

-- create procedure
DROP PROCEDURE IF EXISTS test.selectCUSTOMER;

DELIMITER $$
$$
CREATE PROCEDURE test.selectCUSTOMER()
BEGIN
	SELECT * FROM test.CUSTOMER S;
END$$
DELIMITER ;


CREATE PROCEDURE `taewoo2`()
BEGIN
	select now() from dual;
END;



-- use procedure
CALL selectCUSTOMER();


-- create FUNCTION
CREATE FUNCTION `functionTaewoo` (
carId INTEGER
) RETURNS VARCHAR(100)

BEGIN
	DECLARE R_CAR_NAME VARCHAR(100);
	SELECT CAR_NAME INTO R_CAR_NAME
	FROM CAR c
	WHERE CAR_ID = carId;
	RETURN R_CAR_NAME;
END

-- use function
select functionTaewoo(1);

-- CREATE FUNCTION 시 This 'function has none of DETERMINISTIC' ERROR 발생 시
show global variables like 'log_bin_trust_function_creators'; -- 생성 제약조건 확인 ( OFF 이면 FUNCTION을 생성할 수 없음 )
SET GLOBAL log_bin_trust_function_creators = 1; -- 생성가능하게 SETTING

