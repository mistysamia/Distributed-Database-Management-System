clear screen;
SET SERVEROUTPUT ON;

create or replace procedure isOdd
is 
--Doesn't need to use DECLARE inside a procedure when declaring
A money.id%TYPE;
B money.taka%type;
C money.taka%type:=0;
BEGIN
   for R IN (select * from money) LOOP   
	    A:=R.id;
		B:=R.taka;
		C:=B+C;
    END LOOP;
	DBMS_OUTPUT.PUT_LINE(C);
End isOdd;
/

begin 
    isOdd; 
end;
/