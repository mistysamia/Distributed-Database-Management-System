clear screen;
SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
      A money.taka%Type;
	  B number:= &x;
	  res number;
	  misty Exception; --Custom Exception
BEGIN
    select taka into A from money where ID=1;
	If B<0 then 
	    raise misty;  
	end if;
	res:=A/B;
EXCEPTION
    when misty THEN
	    DBMS_OUTPUT.PUT_LINE('Cannot be-ve '||B);
		B:=B*(-1);
		res:=A/B;
		DBMS_OUTPUT.PUT_LINE('Final= '||res);
	when Too_many_rows then
	    DBMS_OUTPUT.PUT_LINE('Many rows detected');
	when No_data_found then
	    DBMS_OUTPUT.PUT_LINE('Data not found');
	when zero_divide then
	    DBMS_OUTPUT.PUT_LINE('Cannot be divided by zero');
	when others then
	    DBMS_OUTPUT.PUT_LINE('Others error');
End;
/