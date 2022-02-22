clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;



 
 
/*********************************************
**************  Trigger  *****************
*********************************************/
create or replace trigger t1
after update or insert
on Food
for each row

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('New Food Added');
End;
/


/*********************************************
**************  Package Head   *****************
*********************************************/
create or replace package mypack AS
    function finding(A in Food.fname%TYPE)
	   return number;
	   
	
	procedure InsertServer(A in Food.fid%TYPE,B in Food.fname%TYPE);
	
End mypack;
/



/*********************************************
**************  Package Body   *****************
*********************************************/
create or replace package body mypack AS

    -------------  Function  --------------
    function finding(A in Food.fname%TYPE)
    return number
    is
    flag number:=0;
    BEGIN
        for R IN (select * from Food) LOOP
            if A=R.fname THEN
		        for P IN (select * from Orders where fid=R.fid order by datePlaced ASC) LOOP
			        DBMS_OUTPUT.PUT_LINE('The first date it was ordered '||P.datePlaced);
					Exit;
			    end loop;
				
				for P IN (select * from Orders where fid=R.fid order by datePlaced DESC) LOOP
			        DBMS_OUTPUT.PUT_LINE('The Last date it was ordered '||P.datePlaced);
					Exit;
			    end loop;
				select count(*) into flag from Orders where fid=R.fid;
				DBMS_OUTPUT.PUT_LINE('Total Number of orders '||flag);
				return 1;
		    End if;
	    End loop;
		return 0;
    End finding;


    -------------  Procerdure  --------------
   
    procedure InsertServer(A in Food.fid%TYPE,B in Food.fname%TYPE)
    is 
    BEGIN 
        insert into Food values (A+1,B,100);
    End InsertServer;
    
	
End mypack;
/



Accept X  char prompt "Enter the Food Name = "
DECLARE
    Num VARCHAR2(100) := '&x';
    flag number:=0;	
	totalSum number;
	Error Exception; 
BEGIN
   
	
	flag:=mypack.finding(Num);
	
	if flag=0 then
		select count(fid) into flag from Food;
		mypack.InsertServer(flag,Num);	
    end if;
	
  
END;
/


select * from Food;

commit;
