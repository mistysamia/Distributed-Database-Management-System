clear screen;
set serveroutput on;
set verify off;

declare
	sc number := &s;
	v_age student.age%TYPE;
	res number;
begin

	select age
	into v_age
	from student
	where snum = 1;
	
	res := v_age/sc;
	dbms_output.put_line(res);
	
exception

	when zero_divide then
		dbms_output.put_line('Cannot be divided by zero');
		
	when no_data_found then
      dbms_output.put_line('not found');
	
end;
/