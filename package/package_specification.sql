create or replace package pkg_customer as
procedure add_new_customer(p_first_name varchar2,p_country_name varchar2,p_mob_number varchar2,p_email varchar2);
end;
