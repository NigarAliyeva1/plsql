create table bank_customers
(
id number,
first_name varchar2(30),
last_name varchar2(30),
country_id number,
mob_number varchar2(30),
email varchar2(30),
isResident number
);

create sequence bank_customer_id_seq
start with 1 increment by 1
maxvalue 9999999999999 nocycle;


create table bank_countries(id number, name varchar2(50));


create sequence bank_countries_id_seq
start with 1 increment by 1
maxvalue 9999999999999 nocycle;
