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