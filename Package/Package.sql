clear screen;
SET VERIFY OFF;
SET SERVEROUTPUT ON;

--Like -> java interface 
create or replace package mypack AS
    function F1(A1 in number)
	   return number;
	Procedure P1 (B1 in number);
End mypack;
/


--Package Body 
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

    procedure p1(B1 in number)
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


-- Print
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
