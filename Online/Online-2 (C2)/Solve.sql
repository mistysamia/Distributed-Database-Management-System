clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


/*********************************************
**************  Trigger  *****************
*********************************************/
create or replace trigger t2
after update or insert
on Server
for each row
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('New Values Inserted on table Server Details');
End;
/


-------------  Function  --------------

create or replace function serverSearching(A in Server.sid%TYPE)
return number
is

flag number :=0;
BEGIN
    for R IN (select * from Server) LOOP
            if A=R.sid THEN
			   flag:=1;
		       return flag;
		    End if;
	End loop;
	return flag;
End serverSearching;
/

-------------  Function  --------------
create or replace function totalOrder(A in Orders.sid%TYPE)
return Food.price%TYPE
is

C number:=0;
BEGIN
    for P IN (select * from Customer) LOOP 
	    for R IN (select * from Orders where (A=sid and P.cid=cid) and datePlaced>='01-Jan-22' AND datePlaced>='02-Feb-22') LOOP
            C:=1+C;
			Exit;
	    End loop;
	End loop;
 
    return C;
End totalOrder;
/


-------------  Procerdure  --------------
create or replace procedure InsertServer(totalCount in number)
is 
BEGIN 
    insert into Server values (totalCount+1,'New Name',1);
End InsertServer;
/


Accept X  number prompt "Enter the Server ID = "
DECLARE
    Num int := &x;
    flag number:=0;	
	totalSum number;
	Error Exception; 
BEGIN
    If Num<=0 then 
	    raise Error;  
	end if;
	
	flag:=serverSearching(Num);
	
	if flag=0 then
	    
		select count(sid) into flag from Server;
		InsertServer(flag);
    else 
	    totalSum := totalOrder(Num);
        DBMS_OUTPUT.PUT_LINE('Customers the Server serverd in 2022 = '||totalSum);		
    end if;
	
EXCEPTION
    when Error THEN
	    DBMS_OUTPUT.PUT_LINE('Customer ID can''t be less than or equal to Zero.');
  
END;
/
select * from Server;