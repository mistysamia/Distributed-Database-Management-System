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
    DBMS_OUTPUT.PUT_LINE('New Customer Added');
End;
/


/*********************************************
**************  Package Head   *****************
*********************************************/
create or replace package mypack AS
    function finding(A in Customer.cid%TYPE)
	   return number;
	   
	procedure showDetails(A in Customer.cid%TYPE);
	procedure InsertCustomer(A in Customer.cid%TYPE);
	
End mypack;
/



/*********************************************
**************  Package Body   *****************
*********************************************/
create or replace package body mypack AS

    -------------  Function  --------------
    function finding(A in Customer.cid%TYPE)
    return number
    is
    flag number:=0;
	countTimes number:=0;
    BEGIN
        for R IN (select * from Customer) LOOP
            if A=R.cid THEN
		        for P IN (select * from Orders) LOOP
				    if P.cid=A THEN
					    countTimes:=countTimes+1;
						DBMS_OUTPUT.PUT_LINE('The date they orders at the restaurant '||P.datePlaced);
					End if;
			    end loop;
				DBMS_OUTPUT.PUT_LINE('The number of time the customer ate that restaurant:  '||countTimes);
				return 1;
		    End if;
	    End loop;
		return 0;
    End finding;


    -------------  Procerdure  --------------
   
    procedure showDetails(A in Customer.cid%TYPE)
    is 
    BEGIN 
        for P IN (select * from Orders) LOOP
				if P.cid=A THEN
					for R IN (select * from Server) LOOP
					    if R.sid=P.sid then 
						   DBMS_OUTPUT.PUT_LINE('The server details '||R.sname ||' , '||R.shiftid );
						end if;
					end loop;
				End if;
		end loop;
    End showDetails;
	
    procedure InsertCustomer(A in Customer.cid%TYPE)
    is 
    BEGIN 
        insert into Customer values (A,'Name',04366);
    End InsertCustomer;
    
	
End mypack;
/



Accept X  number prompt "Enter the Customer ID = "
DECLARE
    Num int := &x;
    flag number:=0;	
	Error Exception; 
BEGIN
    If Num<=0 then 
	    raise Error;  
	end if;
	
	flag:=mypack.finding(Num);
	
	if flag=0 then
		mypack.InsertCustomer(Num);
	ELSE
	    mypack.showDetails(Num);
	end if;
EXCEPTION
    when Error THEN
	    DBMS_OUTPUT.PUT_LINE('Customer ID can''t be less than or equal to Zero.');
  
END;
/
select * from Customer;

commit;