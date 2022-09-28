clear screen;
--SET VERIFY OFF;
SET SERVEROUTPUT ON;


/**********************
--------CURSOR---------
**********************/
/*
Declare 
     A money.id%TYPE;
	 B money.taka%type;

Begin 
    for R IN (select * from money) LOOP    
	    A:=R.id;
		B:=R.taka;
		DBMS_OUTPUT.PUT_LINE(A||' '||B);
    END LOOP;
END;
/

*/



/**********************************
-------- Procedure (Void) ---------
**********************************/
/*
create or replace procedure isOdd
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello ');
End isOdd;
/

begin 
    isOdd;
end;
/	

EXEC isOdd;
*/


/**********************************
-------- Procedure (IN) -----------
**********************************/
/*
create or replace procedure isOdd(A in money.id%type)
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello '||A);
End isOdd;
/

begin 
    isOdd(3);
end;
/	

EXEC isOdd(66);
*/

/**********************************
-------- Procedure (OUT) ----------
**********************************/
/*
create or replace procedure isOdd(A out number)
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there');
   A:=35;
End isOdd;
/
Declare 
    Num number; 
begin 
    isOdd(Num);
	DBMS_OUTPUT.PUT_LINE(NUM);
end;
/	
*/


/**********************************
-------- Procedure (IN OUT) -------
**********************************/

/*
create or replace procedure isOdd(A  in out number)
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  '||A);
   A:=35;
End isOdd;
/
Declare 
    Num number:=5; 
begin 
    isOdd(Num); 
	DBMS_OUTPUT.PUT_LINE(NUM);
end;
/	
*/


/**********************************
-------- Function (Void) -------
**********************************/

/*
create or replace function isEven
return number
is
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  ');
 --  A:=35;
   return 5;
End isEven;
/
Declare 
    Num number; 
begin 
    Num := isEven; 
	DBMS_OUTPUT.PUT_LINE(Num);
end;
/	
*/




/*****************************************
-------- Function (IN ,OUT, INOUT) -------
******************************************/

/*
create or replace function isEven(A in varchar2, B out number,C in out number)
return varchar2
is
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  '||A);
   B:=35;
   C:=B+c;
   return 'Never';
End isEven;
/
Declare 
   Name varchar2(100);
   Num number;
   Num2 number:=12;
begin 
    Name := isEven('Dumb',Num,Num2); 
	DBMS_OUTPUT.PUT_LINE(Name);
	DBMS_OUTPUT.PUT_LINE(Num||'  '||Num2);
end;
/

*/

/********************************************
-------- Function -> Select Operation -------
*********************************************/

/*
create or replace function isEven(A in number)
return number
is
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  '||A);
   return 6;
End isEven;
/
select isEven(29) from dual;
*/


/********************************************
-------- Procedure -> Variable Declare ------
*********************************************/
/*

create or replace procedure isOdd
is 
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
*/



/********************************************
-------- Function -> Variable Declare -------
*********************************************/

/*
create or replace function isFuncName
return money.taka%Type
is 
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
*/