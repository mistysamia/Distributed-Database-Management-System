clear screen;
SET VERIFY OFF;
SET SERVEROUTPUT ON;


/*
DECLARE
      A money.taka%Type;
	  B number:= &x;
	  res number;
	  misty Exception;
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

*/

/*
create or replace package mypack AS
    function F1(A1 in number)
	   return number;
	Procedure P1 (B1 in number);
End mypack;
/

create or replace package body mypack AS
    function F1(A1 in number) --No need to write create or REPLACE
	return NUMBER
    IS
    
    BEGIN
        If not MOD(A1,2)=0 THEN
            return 1;
        else 
            return 0;
        end if;
    end F1;

    procedure p1(B1 in number )
    is 
	
	BEGIN
        If MOD(B1,2)=0 THEN
            DBMS_OUTPUT.PUT_LINE('Even'); 
        else 
            DBMS_OUTPUT.PUT_LINE('Odd');
        end if;
    end p1;
End mypack;
/

select mypack.f1(21) from dual;
Exec mypack.p1(22);

DECLARE
    D number;
BEGIN
    D:= mypack.f1(22);
	DBMS_OUTPUT.PUT_LINE(D);
	mypack.p1(21);
end;
/
*/
/*
create or replace trigger hello
after INSERT
on money

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Inserted After');
End;
/

create or replace trigger hello1
before INSERT
on money

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Inserted Before');
End;
/
*/
/*
create or replace trigger hello2
after update
of taka
on money

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Updated');
End;
/
*/

/*
create or replace trigger hello3
after update or insert
of taka
on money
for each row

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Updated or Inserted');
End;
/
*/


create or replace trigger hello4
after update or insert
of taka
on money
for each row

DECLARE
    A money.id%type;
	B money.name%type;
	C money.taka%type;
BEGIN
    A := :New.id;
	B := :old.name;
	C:= :new.taka;
	insert into money1 values (A,b,c);
End;
/