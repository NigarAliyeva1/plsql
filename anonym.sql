set serveroutput on
declare 
a number;
b number;
begin
    begin 
	select salary, employee_id into a, b 
	from employees where employee_id=107;
	exception
	when no_data_found then
	dbms_output.put_line('boshdur1');
end;
	select salary, employee_id into a, b 
	from employees where employee_id=107;
	dbms_output.put_line('salam');
	dbms_output.put_line(a);
	dbms_output.put_line(b);
	dbms_output.put_line(a ||' ' || b);
exception 
	when no_data_found then
	dbms_output.put_line('boshdur2'); 
end;
