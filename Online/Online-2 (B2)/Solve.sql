clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;




/*********************************************
**************  Trigger  *****************
*********************************************/
create or replace trigger t1
after update or insert
on Customer
for each row
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('New Values Inserted on table Customer Details');
End;
/


-------------  Function  --------------

create or replace function customerSearching(A in Orders.cid%TYPE)
return number
is

flag number :=0;
BEGIN
    for R IN (select * from Orders) LOOP
            if A=R.cid THEN
			   flag:=1;
		       return flag;
		    End if;
	End loop;
	return flag;
End customerSearching;
/

-------------  Function  --------------
create or replace function totalMoney(A in Orders.cid%TYPE)
return Food.price%TYPE
is

C Food.price%TYPE:=0;
BEGIN
   for R IN (select * from Orders) LOOP
        if A=R.cid THEN   
		    for P IN (select * from Food) LOOP 
			    if P.fid=R.fid Then
				    C:=P.price+C;
				End if;
			End loop;
		End if;
	End loop;
    return C;
End totalMoney;
/


-------------  Function  --------------
create or replace function serverName(A in Orders.cid%TYPE)
return number
is

counting number:=0;
BEGIN
   for R IN (select * from Orders where cid=A order by datePlaced DESC) LOOP
        for P IN (select * from Server) LOOP 
			if P.sid=R.sid Then
				counting:=counting+1;
				DBMS_OUTPUT.PUT_LINE('Server Name : '|| P.sname);
				if(counting=2) then
					return null;
				end if;
			End if;
		End loop;
	End loop;
    return null;
End serverName;
/


-------------  Procerdure  --------------
create or replace procedure InsertCustomer(totalCount in number)
is 
BEGIN 
    insert into Customer  values (totalCount+1,'New Name','0179');
End InsertCustomer;
/


Accept X  number prompt "Enter the Customer ID = "
DECLARE
    Num int := &x;
    flag number:=0;	
	totalSum Food.price%TYPE;
	counting Food.price%TYPE;
	Error Exception; 
BEGIN
    If Num<=0 then 
	    raise Error;  
	end if;
	
	flag:=customerSearching(Num);
	
	if flag=0 then
		select count(cid) into flag from Customer;
		InsertCustomer(flag);
    else 
	    totalSum := totalMoney(Num); 	
		flag:=serverName(Num);			
    end if;
	
EXCEPTION
    when Error THEN
	    DBMS_OUTPUT.PUT_LINE('Customer ID can''t be less than or equal to Zero.');
  
END;
/
select * from Customer;