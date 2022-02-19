-- CUSTOMER 테이블에 insert
insert into CUSTOMER(customer_id, customer_name, customer_address, customer_sex, customer_age)
values(1,'taewoo', '관악구 행운4길 55-3', 0, 26);

-- CUSTOMER 테이블에 delete
delete from CUSTOMER where customer_name ='test';

-- CUSTOMER 테이블에 update
update CUSTOMER set customer_name = 'taewoo2' where customer_name ='taewoo';