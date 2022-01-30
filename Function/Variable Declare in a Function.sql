clear screen;
SET SERVEROUTPUT ON;

create or replace function isFuncName
return money.taka%Type
is 
--Doesn't need to use DECLARE inside a function when declaring
A money.id%TYPE;
B money.taka%type;
C money.taka%type:=0;
BEGIN
   for R IN (select * from money) LOOP   
	    A:=R.id;
		B:=R.taka;
		C:=B+C;
    END LOOP;
	return C;
End isFuncName;
/

Declare 
   Num money.taka%type;
begin  
    Num := isFuncName; 
	DBMS_OUTPUT.PUT_LINE(Num);
end;
/