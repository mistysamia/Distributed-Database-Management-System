clear screen;
set serveroutput on;
set verify off;

declare
	sc number := &s;
	v_age student.age%TYPE;
	res number;
	
	error_negative exception;
	
begin

	select age
	into v_age
	from student
	where snum = 1;
	
	if sc < 0 then
			raise error_negative;
	end if;
	
	res := v_age/sc;
	dbms_output.put_line(res);
	
exception

	when error_negative then
		dbms_output.put_line('scale factor cannot be -ve');
	
	when zero_divide then
		dbms_output.put_line('Cannot be divided by zero');
		
	when no_data_found then
		dbms_output.put_line('not found');
	 	
end;
/