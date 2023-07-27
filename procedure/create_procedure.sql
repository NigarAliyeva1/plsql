create or replace procedure add_new_customer 
    (p_first_name varchar2,
    p_last_name varchar2,
    p_country_name varchar2,
    p_mob_number varchar2,
    p_email varchar2
    ) is

    v_country_id number;
    v_isResident number;
begin

    select id into v_country_id from bank_countries
        where name=1;
    
    insert into bank_customers
        values(bank_customer_id_seq.nextval,p_first_name,p_last_name,v_country_id,p_mob_number,p_email,v_isResident);
    commit;
end;

exec add_new_customer('Orxan','Ismayilov','Azerbaijan','432555','wewff');

select * from bank_customers;


drop table add_new_customer;
