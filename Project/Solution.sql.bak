clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;




/*********************************************
**************  Trigger  *****************
*********************************************/
create or replace trigger t2
after update or insert
on ShiftDetails
for each row
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Row inserted into SHiftDetails table');
End;
/


-------------  Function  --------------

create or replace function serverSearching(A in ShiftDetails.shiftid%TYPE)
return number
is

flag number :=0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Server Name : 11');
    for R IN (select * from ShiftDetails) LOOP
            if A=R.shiftid THEN
			    for P IN (select * from Server) LOOP
			        if A=P.shiftid THEN
					    DBMS_OUTPUT.PUT_LINE('Server Name : '|| P.sname);
						select count (*) into flag from Orders where (sid=P.sid) and (datePlaced>='01-Jan-22' AND datePlaced<='22-Feb-22') ;
						DBMS_OUTPUT.PUT_LINE(P.sname||' Served  '|| flag || ' times in 2022');
					end if;
			    end loop;
		       return 1;
		    End if;
	End loop;
	return 0;
End serverSearching;
/



-------------  Procerdure  --------------
create or replace procedure InsertShift(A in ShiftDetails.shiftid%type)
is 
BEGIN 
    insert into ShiftDetails  values (A,7);
End InsertShift;
/


Accept X  number prompt "Enter the Shift ID = "
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