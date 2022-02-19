-- create trigger
CREATE TRIGGER deleteCustomer
AFTER DELETE
ON CUSTOMER
FOR EACH ROW
BEGIN
	INSERT INTO DELETED_CUSTOMER(customer_id, customer_name, customer_address, customer_sex, customer_age)
	VALUES(OLD.customer_id, OLD.customer_name, OLD.customer_address, OLD.customer_sex, OLD.customer_age);
END

-- user trigger
-- 진짜 DELETE 문을 ON 뒤의 테이블에 날리기만 하면 됨 ㅎ
-- 흡사 , JS의 EventListener
-- document.querySelector('#CUSTOMER').addEventListener('delete',()=>{
--      document.querySelector('#DELETED_CUSTOMER').append(~~~~~~~);
-- })
DELETE FROM CUSTOMER WHERE customer_id = 24;