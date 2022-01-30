clear screen;
SET SERVEROUTPUT ON;

create or replace function isEven
return number
is
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  ');
   return 5;
End isEven;
/

--Function Print Type 1
Declare 
    Num number; 
begin 
    Num := isEven; 
	DBMS_OUTPUT.PUT_LINE(Num);
end;
/	

