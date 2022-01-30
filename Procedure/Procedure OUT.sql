clear screen;
SET SERVEROUTPUT ON;

create or replace procedure isOdd(A out number)
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there');
   A:=35;
End isOdd;
/

--Print Procedure type 1
Declare 
    Num number; 
begin 
    isOdd(Num);
	DBMS_OUTPUT.PUT_LINE(NUM);
end;
/	

