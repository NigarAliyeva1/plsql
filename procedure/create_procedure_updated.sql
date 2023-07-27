create or replace procedure add_new_customer(p_first_name varchar2,p_last_name varchar2,p_country_name varchar2,p_mob_number varchar2,
p_email varchar2)
is
v_country_id number;
v_isresident number;
e_first_name_outof_range exception;
begin 
    if length(p_first_name)>30 then
    raise e_first_name_outof_range;
    end if;
    select id into v_country_id from bank_countries where upper(name) =upper(p_country_name);
    if v_country_id=1 then v_isresident :=1; else v_isresident:=0; end if;
    insert into bank_customers(id,first_name,last_name,country_id,mob_number,email,isResident) 
    values(bank_customer_id_seq.nextval,p_first_name,p_last_name,v_country_id,p_mob_number,p_email,v_isResident);
    commit;
    
exception
when no_data_found then
 dbms_output.put_line('duz yaz');
when e_first_name_outof_range then
 dbms_output.put_line('30 simvoldan uzundur');
end;


set serveroutput on
exec add_new_customer('NEW12aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','ggg','US','444','ffff');
--select * from bank_customers;
--select * from bank_cOUNTRIES;
