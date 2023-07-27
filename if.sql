declare 
  user_Name varchar2(100):='b';
  user_pass varchar2(100):='1233';
begin
  if user_name='A' and user_pass='123' then 
  dbms_output.put_line('Welcome');
  elsif  user_name!='A' and user_pass!='123' then 
  dbms_output.put_line('Invalid');
  elsif user_name!='A' then
  dbms_output.put_line('Invalid username');
  elsif user_pass!='123' then
  dbms_output.put_line('Invalid password');
  end if;
end;
