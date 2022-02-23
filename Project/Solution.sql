clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;





Accept X  number prompt "Enter the team name , win , lost , draw, gf,ga , points  "
DECLARE
    Num int := &x;
    flag number:=0;	
	Error Exception; 
BEGIN
    If Num<=0 then 
	    raise Error;  
	end if;
	
	flag:=serverSearching(Num);
	
	if flag=0 then
		InsertShift(Num);
	end if;
EXCEPTION
    when Error THEN
	    DBMS_OUTPUT.PUT_LINE('Customer ID can''t be less than or equal to Zero.');
  
END;
/
select * from ShiftDetails;