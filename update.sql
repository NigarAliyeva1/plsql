
create or replace procedure upd_customer(p_id number,p_first_name varchar2,p_last_name varchar2,p_country_name varchar2,p_mob_number varchar2,
p_email varchar2) is
v_country_id number;
v_isresident number;

begin
--auth elave olunmalidir
--logging mexanizmi elave olunmalidir
--name adi uzre upper ve lower funksiyalarini tetbiq etmek
--name sutunun ucun function based  index yaratmaq
    select id into v_country_id from bank_countries where upper(name) =upper(p_country_name);
--isresident elave olunmalidir
    update bank_customers set first_name=p_first_name,last_name=p_last_name,country_id=v_country_id,mob_number=p_mob_number,email=p_email
    where id=p_id;
commit;

end;
set serveroutput on
exec upd_customer(1,'Vali','Aliyev','Azerbaijan',null,null);
